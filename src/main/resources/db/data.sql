-- 여기는 유저가 채용공고를 스크랩한 상태 --
insert into user_tb (user_email_id, user_name, user_password, user_pic_url, created_at) values('ssar@nate.com', 'ssar', '1234', 'basic.jpg', now());
insert into user_tb (user_email_id, user_name, user_password, user_pic_url, created_at) values('cos@nate.com', 'cos', '1234', 'basic.jpg', now());
insert into user_tb (user_email_id, user_name, user_password, user_pic_url, created_at) values('love@nate.com', 'love', '1234', 'basic.jpg', now());

-- 여기는 회사가 유저의 이력서를 스크랩한 상태 --
insert into user_tb (comp_email_id, comp_name, comp_history, comp_intro, comp_pic_url, created_at) values('toss@nate.com', 'toss', '2010년 토스창업', '세계1위 토스입니다', 'basic.jpg', now());
insert into user_tb (comp_email_id, comp_name, comp_history, comp_intro, comp_pic_url, created_at) values('naver@nate.com', 'naver', '2000년 네이버창업', '세계1위 네이버입니다', 'basic.jpg', now());
insert into user_tb (comp_email_id, comp_name, comp_history, comp_intro, comp_pic_url, created_at ) values('kakao@nate.com', 'kakao', '2005년 카카오창업', '세계1위 카카오입니다', 'basic.jpg', now());
-- 

insert into comp_scrap_tb (created_at) values(now());
insert into comp_scrap_tb (created_at) values(now());
insert into comp_scrap_tb (created_at) values(now());

insert into job_opening_tb (title, process, career, career_year, edu, comp_address, dead_line, created_at) values ('네이버 공고글', '채용절차는 코딩테스트 후 면접입니다', '경력자 모집', '1년차 이상', '2년제 이상', '부산 광안리', now(), now());
insert into job_opening_tb (title, process, career, career_year, edu, comp_address, dead_line, created_at) values ('토스 공고글', '채용절차는 코딩테스트 후 면접입니다', '경력자 모집', '2년차 이상', '4년제 이상', '부산 서면', now(), now());
insert into job_opening_tb (title, process, career, career_year, edu, comp_address, dead_line, created_at) values ('카카오 공고글', '채용절차는 코딩테스트 후 면접입니다', '경력자 모집', '5년차 이상', '고등학교 졸업 이상', '부산 장산', now(), now());

insert into user_scrap_tb (created_at, user_id, job_opening_id) values(now(), '1', '1');
insert into user_scrap_tb (created_at, user_id, job_opening_id) values(now(), '2', '1');
insert into user_scrap_tb (created_at, user_id, job_opening_id) values(now(), '2', '2');
insert into user_scrap_tb (created_at, user_id, job_opening_id) values(now(), '2', '3');

insert into skill_tb (skill) values('Java');
insert into skill_tb (skill) values('JavaScript');
insert into skill_tb (skill) values('Spring');
insert into skill_tb (skill) values('HTML');
insert into skill_tb (skill) values('jQuery');
insert into skill_tb (skill) values('MySQL');
insert into skill_tb (skill) values('React');
insert into skill_tb (skill) values('JSP');
insert into skill_tb (skill) values('Vue.js');
insert into skill_tb (skill) values('Oracle');

insert into required_skill_tb (skill_id, job_opening_id) values('1', '1');
insert into required_skill_tb (skill_id, job_opening_id) values('2', '1');
insert into required_skill_tb (skill_id, job_opening_id) values('3', '1');
insert into required_skill_tb (skill_id, job_opening_id) values('2', '2');
insert into required_skill_tb (skill_id, job_opening_id) values('3', '2');
insert into required_skill_tb (skill_id, job_opening_id) values('4', '2');
insert into required_skill_tb (skill_id, job_opening_id) values('1', '3');
insert into required_skill_tb (skill_id, job_opening_id) values('2', '3');

-- user(회사)가 이력서에 제안 --
insert into suggest_tb (user_id, sug_state, created_at) values('1', '수락', now());
insert into suggest_tb (user_id, sug_state, created_at) values('1', '대기', now());
insert into suggest_tb (user_id, sug_state, created_at) values('2', '대기', now());
insert into suggest_tb (user_id, sug_state, created_at) values('2', '거절', now());
insert into suggest_tb (user_id, sug_state, created_at) values('3', '대기', now());

insert into apply_tb (apply_state, job_opening_id) values('대기', '1');
insert into apply_tb (apply_state, job_opening_id) values('불합격', '1');
insert into apply_tb (apply_state, job_opening_id) values('합격', '2');

insert into resume_tb (title, age, tel, address1, sub_intro, career, edu, main_intro, created_at, user_id, suggest_id, comp_scrap_id) values ('ssar 이력서입니다', '25', '010-1111-2222', '부산 진구 전포동 그린아카데미', '열심히하는 개발자가 되겠습니다', '자바 2년차', '대학교4년 졸업', '부산/25/남/ssar입니다 어렸을때부터 메타코딩 개발자님 영상을 보며 개발자를 꿈꿧습니다.', now(), '1', '1', '1');
insert into resume_tb (title, age, tel, address1, sub_intro, career, edu, main_intro, created_at, user_id, suggest_id, comp_scrap_id) values ('cos 이력서입니다', '28', '010-2222-3333', '부산 진구 전포동 클럽데이즈', '능력있는 개발자가 되겠습니다', 'html/css 1년차', '전문대학교2년 졸업', '부산/28/남/cos입니다 어렸을때부터 메타코딩 개발자님 영상을 보며 개발자를 꿈꿧습니다.', now(), '1', '1', '2');
insert into resume_tb (title, age, tel, address1, sub_intro, career, edu, main_intro, created_at, user_id, suggest_id, comp_scrap_id) values ('love 이력서입니다', '27', '010-5555-1111', '부산 진구 전포동 제이앤제이슨', '꿈과 희망이있는 개발자가 되겠습니다', '안드로이드개발 5년차', '고등학교 졸업', '부산/27/남/love입니다 어렸을때부터 메타코딩 개발자님 영상을 보며 개발자를 꿈꿧습니다.', now(), '1', '3', '3');

insert into has_skill_tb (skill_id, resume_id) values('1,2,3', '1');
insert into has_skill_tb (skill_id, resume_id) values('2,3,4', '2');
insert into has_skill_tb (skill_id, resume_id) values('3,6,7', '3');

insert into community_tb (title, content, created_at, user_id) values('제목1', '내용1', now(), '1');
insert into community_tb (title, content, created_at, user_id) values('제목2', '내용2', now(), '2');
insert into community_tb (title, content, created_at, user_id) values('제목3', '내용3', now(), '3');

insert into reply_tb (comment, created_at, user_id, community_id) values('댓글1-1', now(), '1', '1');
insert into reply_tb (comment, created_at, user_id, community_id) values('댓글1-2', now(), '1', '1');
insert into reply_tb (comment, created_at, user_id, community_id) values('댓글2-1', now(), '2', '2');
insert into reply_tb (comment, created_at, user_id, community_id) values('댓글3-1', now(), '3', '3');



insert into task_tb (task_content, created_at, job_opening_id) values('재생에너지 SaaS 백엔드 개발', now(), '1');
insert into task_tb (task_content, created_at, job_opening_id) values('API 개발(재생에너지모니터링 웹 대시보드)', now(), '2');
insert into task_tb (task_content, created_at, job_opening_id) values('서비스 아키텍쳐 설계 및 AWS 인프라 관리 및 운영', now(), '3');

insert into qualified_tb (qualified_content, created_at, job_opening_id) values('백엔드 개발 실무 경력3년이상', now(), '1');
insert into qualified_tb (qualified_content, created_at, job_opening_id) values('Python 기반 개발 경험', now(), '2');
insert into qualified_tb (qualified_content, created_at, job_opening_id) values('CI CD 툴을 활용한 빌드,테스트,배포 자동화 경험', now(), '3');

ALTER TABLE user_tb
	ADD FOREIGN KEY (resume_id) REFERENCES resume_tb(resume_id),
    ADD FOREIGN KEY (job_opening_id) REFERENCES job_opening_tb(job_opening_id),
    ADD FOREIGN KEY (user_scrap_id) REFERENCES user_scrap_tb(user_scrap_id),
    ADD FOREIGN KEY (comp_scrap_id) REFERENCES comp_scrap_tb(comp_scrap_id),
    ADD FOREIGN KEY (suggest_id) REFERENCES suggest_tb(suggest_id);
                        
                        
--                         -- userscrap_tb 테이블에 외래 키 추가
-- ALTER TABLE userscrap_tb
--     ADD FOREIGN KEY (user_id) REFERENCES user_tb(user_id),
--     ADD FOREIGN KEY (jobopening_id) REFERENCES jobopening_tb(jobopening_id);

-- -- compscrap_tb 테이블에 외래 키 추가
-- ALTER TABLE compscrap_tb
--     ADD FOREIGN KEY (user_id) REFERENCES user_tb(user_id),
--     ADD FOREIGN KEY (resume_id) REFERENCES resume_tb(resume_id);

-- -- jobopening_tb 테이블에 외래 키 추가
-- ALTER TABLE jobopening_tb
--     ADD FOREIGN KEY (requiredskill_id) REFERENCES requiredskill_tb(requiredskill_id),
--     ADD FOREIGN KEY (user_id) REFERENCES user_tb(user_id);

-- -- requiredskill_tb 테이블에 외래 키 추가
-- ALTER TABLE requiredskill_tb
--     ADD FOREIGN KEY (resume_id) REFERENCES resume_tb(resume_id),
--     ADD FOREIGN KEY (jobopening_id) REFERENCES jobopening_tb(jobopening_id);

-- -- suggestion_tb 테이블에 외래 키 추가
-- ALTER TABLE suggestion_tb
--     ADD FOREIGN KEY (user_id) REFERENCES user_tb(user_id),
--     ADD FOREIGN KEY (resume_id) REFERENCES resume_tb(resume_id);

-- -- apply_tb 테이블에 외래 키 추가
-- ALTER TABLE apply_tb
--     ADD FOREIGN KEY (resume_id) REFERENCES resume_tb(resume_id),
--     ADD FOREIGN KEY (user_id) REFERENCES user_tb(user_id);

-- -- reply_tb 테이블에 외래 키 추가
-- ALTER TABLE reply_tb
--     ADD FOREIGN KEY (user_id) REFERENCES user_tb(user_id),
--     ADD FOREIGN KEY (community_id) REFERENCES community_tb(community_id);

-- -- community_tb 테이블에 외래 키 추가
-- ALTER TABLE community_tb
--     ADD FOREIGN KEY (user_id) REFERENCES user_tb(user_id),
--     ADD FOREIGN KEY (reply_id) REFERENCES reply_tb(reply_id);

-- -- interestposition_tb 테이블에 외래 키 추가
-- ALTER TABLE interestposition_tb
--     ADD FOREIGN KEY (requiredskill_id) REFERENCES requiredskill_tb(requiredskill_id);

-- -- position_tb 테이블에 외래 키 추가
-- ALTER TABLE position_tb
--     ADD FOREIGN KEY (resume_id) REFERENCES resume_tb(resume_id),
--     ADD FOREIGN KEY (requiredskill_id) REFERENCES requiredskill_tb(requiredskill_id);

-- -- resumeskill_tb 테이블에 외래 키 추가
-- ALTER TABLE resumeskill_tb
--     ADD FOREIGN KEY (resume_id) REFERENCES resume_tb(resume_id);

-- -- resume_tb 테이블에 외래 키 추가
-- ALTER TABLE resume_tb
--     ADD FOREIGN KEY (user_id) REFERENCES user_tb(user_id),
--     ADD FOREIGN KEY (position_id) REFERENCES position_tb(position_id),
--     ADD FOREIGN KEY (resumeskill_id) REFERENCES resumeskill_tb(resumeskill_id),
--     ADD FOREIGN KEY (apply_id) REFERENCES apply_tb(apply_id),
--     ADD FOREIGN KEY (suggestion_id) REFERENCES suggestion_tb(suggestion_id);
    
    
-- -- resumeskilllist_tb에 외래키 추가
-- ALTER TABLE resumeskilllist_tb
-- 	ADD FOREIGN KEY (resumeskill_id) REFERENCES resumeskill_tb(resumeskill_id);
-- -- rqskilllist_tb에 외래키 추가    
-- ALTER TABLE rqskilllist_tb
-- 	ADD FOREIGN KEY (requiredskill_id) REFERENCES requiredskill_tb(requiredskill_id);
--  -- positionlist_tb에 외래키 추가
-- ALTER TABLE positionlist_tb
-- 	ADD FOREIGN KEY (position_id) REFERENCES position_tb(position_id);