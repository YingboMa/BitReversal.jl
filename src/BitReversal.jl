module BitReversal
export bit_reversal8, bit_reversal16, bit_reversal32, bit_reversal64

@inline bit_reversal8(v) = begin
    v = ((v >> 1) & 0x55) | ((v & 0x55) << 1)
    v = ((v >> 2) & 0x33) | ((v & 0x33) << 2)
    v = ( v >>      0x0F) | ( v         << 4)
end

@inline bit_reversal16(v) = begin
    v = ((v >> 1) & 0x5555) | ((v & 0x5555) << 1)
    v = ((v >> 2) & 0x3333) | ((v & 0x3333) << 2)
    v = ((v >> 4) & 0x0F0F) | ((v & 0x0F0F) << 4)
    v = ( v >>      0x00FF) | ( v           << 8)
end

@inline bit_reversal32(v) = begin
    v = ((v >> 1) & 0x55555555) | ((v & 0x55555555) << 1)
    v = ((v >> 2) & 0x33333333) | ((v & 0x33333333) << 2)
    v = ((v >> 4) & 0x0F0F0F0F) | ((v & 0x0F0F0F0F) << 4)
    v = ((v >> 8) & 0x00FF00FF) | ((v & 0x00FF00FF) << 8)
    v = ( v >> 16             ) | ( v               << 16);
end

@inline bit_reversal64(v) = begin
    v = ((v >> 1) & 0x5555555555555555)  | ((v & 0x5555555555555555) << 1)
    v = ((v >> 2) & 0x3333333333333333)  | ((v & 0x3333333333333333) << 2)
    v = ((v >> 4) & 0x0F0F0F0F0F0F0F0F)  | ((v & 0x0F0F0F0F0F0F0F0F) << 4)
    v = ((v >> 8) & 0x00FF00FF00FF00FF)  | ((v & 0x00FF00FF00FF00FF) << 8)
    v = ((v >> 16) & 0x0000FFFF0000FFFF) | ((v & 0x0000FFFF0000FFFF) << 16)
    v = ( v >> 32                      ) | ( v                       << 32)
end

end # module BitReversal.jl
