using NIfTI, Images, ImageView

nf = niread("GW_ears_4_9_2026_Rt.hdr")
@show nf.header.pixdim
@info "sdims: $(sdims(nf))"
nf.header.xyzt_units = 2 # units are not set for some reason
@info "voxel size: $(voxel_size(nf.header))"
@info "data type: $(eltype(nf.header.datatype))"

imshow(nf.raw)