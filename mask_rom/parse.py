import Image
import os
import struct
import sys

x_offsets = [27, 26, 25, 24, 7, 6, 5, 4, 3, 2, 1, 0, 15, 14, 13, 12, 11, 10, 9, 8, 28, 29, 30, 31, 16, 17, 18, 19, 20, 21, 22, 23, 55, 54, 53, 52, 51, 50, 49, 48, 63, 62, 61, 60, 40, 41, 42, 43, 44, 45, 46, 47, 32, 33, 34, 35, 36, 37, 38, 39, 56, 57, 58, 59]
y_offsets = [960, 896, 832, 768, 704, 640, 576, 512, 448, 384, 320, 256, 192, 128, 64, 0, 1024, 1088, 1152, 1216, 1280, 1344, 1408, 1472, 1536, 1600, 1664, 1728, 1792, 1856, 1920, 1984]

def get_bits(byte):
    bits = []
    for x in xrange(8):
        bits.extend([(struct.unpack("<B", byte)[0] & (1 << x)) >> x])
    bits.reverse()
    #print "Extracting bits from %s: %s" % (byte, bits)
    return bits

f = open(sys.argv[1], "rb")

os.mkdir("imgs")

count = struct.unpack("<I", f.read(4))[0]
print "Found %d entries" % count

# We need to read one past the last offset
# since we calculate the size of the record
# based on the last offset
count += 1

offsets = f.read(4 * count)

last_offset = 0

for i in xrange(count):
    b = offsets[(i * 4): (i * 4) + 4]
    offset = struct.unpack("<I", b)[0]

    # This is gross, don't worry about it
    if offset == 0:
        print "End of offsets"
    else:
        print "Found offset %x" % offset

    if last_offset == 0:
        print "First iteration, continuing"
        last_offset = offset
        continue

    if offset == 0:
        size = 256
    else:
        size = offset - last_offset

    if size != 256:
        last_offset = offset
        continue

    print "Found image! Offset %x is %d bytes large (with size value)" % (last_offset, size)

    f.seek(last_offset)
    buf = f.read(size)

    bits = []
    for x in xrange(size):
        bits.extend(get_bits(buf[x]))

    #print "Bits = %s" % bits

    width = 64
    height = 32

    img = Image.new("RGB", (width, height), "white")
    imgpixels = img.load()

    for h in xrange(height):
        for w in xrange(width):
            pos = x_offsets[w] + y_offsets[h]
            bit = bits[pos]
            #print "Setting pixel (%d, %d) from bits[%d] = %d" % (w, h, pos, bit)
            if bit:
                imgpixels[w, h] = (255, 255, 255)
            else:
                imgpixels[w, h] = (0, 0, 0)

    flipped = img.transpose(Image.FLIP_TOP_BOTTOM)
    flipped.save("imgs/img_%x.bmp" % last_offset)

    last_offset = offset
