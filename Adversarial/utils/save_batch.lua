require 'image'
require 'torch'

local function save_batch(imgs, save_id, batch_size)
	for ind=1,1,batch_size do
		image.save(save_id..'.png', imgs[1]:clamp(0,255))
		save_id = save_id + 1
	end
	return save_id
end
return save_batch
