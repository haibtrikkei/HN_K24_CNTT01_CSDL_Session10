-- 2)Tạo một chỉ mục (index) trên cột username của bảng users.
select * from users;

create index IDX_username on users(username);

/*
3)Tạo một View có tên view_user_activity_2 để thống kê tổng số bài viết (total_posts) và tổng số bạn bè 
(total_friends) của mỗi người dùng. Cột total_posts được tính dựa trên số lượng bản ghi trong bảng posts 
của mỗi người dùng. Cột total_friends được tính theo trạng thái kết bạn là accepted trong bảng friends.
*/
select * from posts;
select * from friends;

create view view_user_activity_2
as
select u.user_id,u.username,u.full_name, count(p.post_id) as 'Total posts',
count(f.friend_id) as 'Total friends' from users u
join posts p on u.user_id=p.user_id join friends f on u.user_id = f.user_id
group by u.user_id;

select * from view_user_activity_2;

/*
5)Viết một truy vấn kết hợp view_user_activity với bảng users để hiển thị danh sách người dùng 
(bao gồm full_name, total_posts, total_friends), chỉ bao gồm người dùng có total_posts > 0 
(số bài viết lớn hơn 5), sắp xếp theo total_posts giảm dần (từ cao đến thấp).

Thêm một cột friend_description vào kết quả. Cột này chứa mô tả rút gọn về số bạn bè, cụ thể:
Nếu total_friends > 5, hiển thị "Nhiều bạn bè".
Nếu total_friends từ 2 đến 5, hiển thị "Vừa đủ bạn bè".
Nếu total_friends < 2, hiển thị "Ít bạn bè".
Thêm một cột post_activity_score (điểm hoạt động bài viết) với công thức:
Nếu total_posts > 10, post_activity_score = total_posts * 1.1 (tăng 10%).
Nếu total_posts từ 5 đến 10, post_activity_score = total_posts.
Nếu total_posts < 5, post_activity_score = total_posts * 0.9 (giảm 10%).
*/
create view view_user_activity
as
select u.full_name, count(p.post_id) as 'Total posts',count(f.friend_id) as 'Total friends' 
from users u
join posts p on u.user_id=p.user_id join friends f on u.user_id = f.user_id
group by u.user_id
having count(p.post_id)>0
order by count(p.post_id) desc;


alter view view_user_activity
as
select u.full_name, count(p.post_id) as 'Total posts',count(f.friend_id) as 'Total friends',
case when count(f.friend_id)>5 then 'Nhiều bạn bè'
when count(f.friend_id)>=2 and count(f.friend_id)<=5 then 'Vừa bạn bè'
when count(f.friend_id)<2 then 'Ít bạn bè' end as 'friend_description',
case when count(p.post_id)>10 then count(p.post_id)*1.1
when count(p.post_id)>=5 and count(p.post_id)<=10 then count(p.post_id)
when count(p.post_id)<5 then count(p.post_id)*0.9 end as 'post_activity_score'
from users u
join posts p on u.user_id=p.user_id join friends f on u.user_id = f.user_id
group by u.user_id
having count(p.post_id)>0
order by count(p.post_id) desc;

select * from view_user_activity;

