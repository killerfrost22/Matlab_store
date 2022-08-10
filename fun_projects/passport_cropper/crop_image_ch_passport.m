image = imread('./test_photo.jpg');
figure; imshow(image);
disp("select the top pixel location of the head ((both vertical and horizontal index matter, please cross the horizontal middle of the face))")
uphead_idx = ginput(1);
disp("slect the bottom pixel location of the head (only the vertical index matters)")
downhead_idx = ginput(1);

face_height = ceil(max(downhead_idx - uphead_idx));
pix_per_mm = face_height/33;
up_idx = ceil(uphead_idx(2) - pix_per_mm*4);
left_idx = ceil(uphead_idx(1) - pix_per_mm*16);

im_height = ceil(pix_per_mm*48);
im_width = ceil(pix_per_mm*33);

image_crop = image(up_idx:(up_idx+im_height-1), left_idx:(left_idx+im_width-1),:);
figure; imshow(image_crop);
mkdir('./ch_passport_photo')
imwrite(uint8(image_crop), './ch_passport_photo/photo_ch.jpg');

%1 in = 2.54 cm
in_mm = 25.4;
width = ceil(6*in_mm*pix_per_mm);  height = ceil(4*in_mm*pix_per_mm);
full_image = ones(height, width, 3)*210;
n_w = floor(width/im_width);
n_h = floor(height/im_height);
w_gap = 1; %floor((width - im_width*n_w)/(n_w - 1));
for i = 1:n_h
    for j = 1:n_w
       h_range = (((i-1)*im_height+1):(i*im_height));
       w_range = (((j-1)*im_width+1):(j*im_width)) + w_gap*(j-1);
       full_image(h_range, w_range,:) = image_crop;
    end
end
figure; imshow(uint8(full_image));
imwrite(uint8(full_image), './ch_passport_photo/4in_by_6in_photo_ch.jpg')

