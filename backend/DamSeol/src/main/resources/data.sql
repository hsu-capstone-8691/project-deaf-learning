-- 카테고리 삽입
INSERT INTO category (name) VALUES
    ('Phon'),  -- 음운
    ('Alter'), -- 음운의 변동
    ('Add');   -- 사잇소리 현상

-- 서브카테고리 삽입
INSERT INTO subcategory (name, category_id) VALUES
    -- 음운 (category_id = 1)
    ('I', 1),  ('EU', 1), ('U', 1),  ('E', 1),  ('EO', 1),  -- ㅣ, ㅡ, ㅜ, ㅔ, ㅓ
    ('O', 1),  ('AE', 1), ('A', 1),                         -- ㅗ, ㅐ, ㅏ

    ('G', 1),  ('N', 1),  ('D', 1),  ('R', 1),  ('M', 1),   -- ㄱ, ㄴ, ㄷ, ㄹ, ㅁ
    ('B', 1),  ('S', 1),  ('O', 1),  ('J', 1),  ('CH', 1),  -- ㅂ, ㅅ, ㅇ, ㅈ, ㅊ
    ('K', 1),  ('T', 1),  ('P', 1),  ('H', 1),              -- ㅋ, ㅌ, ㅍ, ㅎ

    ('FinalSound', 1),  -- 음절의 끝소리
    ('Voiced', 1), -- 유성자음
    ('Unvoiced', 1), -- 무성자음

    -- 음운의 변동 (category_id = 2)
    ('VowelHarmony', 2),  -- 모음조화
    ('ContractionAndElision', 2),  -- 축약과 탈락
    ('ConsonantAssimilation', 2),  -- 자음동화
    ('GlottalizationAndSonorization', 2),  -- 경음화와 유성음화
    ('Glottalization', 2),  -- 격음화
    ('Palatalization', 2),  -- 구개음화

    -- 사잇소리 현상 (category_id = 3)
    ('SInsertion', 3),  -- ㅅ 첨가
    ('NInsertion', 3);  -- ㄴ 첨가


-- 단어 삽입
INSERT INTO word (text, word_pron, subcategory_id) VALUES
    ('입질', '입찔', 1), ('인기', '인끼', 1), ('직인', '지긴', 1), ('깊이', '기피', 1), ('짚신', '집씬', 1), ('일시', '일씨', 1), ('실직', '실찍', 1), -- ㅣ
    ('특근', '특끈', 2), ('습득', '습뜩', 2), ('그릇', '그륻', 2), ('급증', '급쯩', 2), ('측근', '측끈', 2), ('느긋', '느귿', 2), ('즉흥', '즈킁', 2), -- ㅡ
    ('숙주', '숙쭈', 3), ('축구', '축꾸', 3), ('불순', '불쑨', 3), ('문물', '문물', 3), ('출두', '출뚜', 3), ('국수', '국쑤', 3), ('국물', '궁물', 3), -- ㅜ
    ('벨벳', '벨벧', 4), ('엑셀', '엑셀', 4), ('헬멧', '헬멛', 4), ('세제', '세제', 4), -- ㅔ
    ('절전', '절쩐', 5), ('전어', '저너', 5), ('법전', '법쩐', 5), ('뻣뻣', '뻗뻗', 5), ('절정', '절쩡', 5), ('헝겊', '헝겁', 5), ('전형', '저녕', 5), -- ㅓ
    ('본론', '볼론', 6), ('목동', '목똥', 6), ('독종', '독쫑', 6), ('목공', '목꽁', 6), ('옥돌', '옥똘', 6), ('종로', '종노', 6), ('속보', '속뽀', 6), -- ㅗ
    ('색맹', '생맹', 7), ('생색', '생색', 7), ('객색', '객쌕', 7), ('재생', '재생', 7), ('행색', '행색', 7), -- ㅐ
    ('박학', '바칵', 8), ('답사', '답싸', 8), ('갉다', '각따', 8), ('팔자', '팔짜', 8), ('낱말', '난말', 8), ('바다', '바다', 8), ('닭살', '닥쌀', 8); -- ㅏ

INSERT INTO word (text, word_pron, subcategory_id) VALUES
    ('강릉', '강능', 9), ('공권력', '공꿘녁', 9), ('긍락', '긍낙', 9), ('경로당', '경노당', 9), ('공략', '공냑', 9), ('궁리', '궁니', 9), ('감염', '가몀', 9), -- ㄱ
    ('난로', '날로', 10), ('내리막길', '내리막낄', 10), ('내복약', '내봉냑', 10), ('논란', '놀란', 10), ('논리', '놀리', 10), ('나뭇잎', '나문닙', 10), ('낱개', '낟깨', 10), -- ㄴ
    ('다락방', '다락빵', 11), ('단련', '달련', 11), ('닭다리', '닥따리', 11), ('닭살', '닥쌀', 11), ('담력', '담녁', 11), ('답장', '답짱', 11), ('당락', '당낙', 11), -- ㄷ
    ('락스', '락쓰', 12), ('라면', '라면', 12), ('라디오', '라디오', 12), ('라일락', '라일락', 12), -- ㄹ
    ('맏형', '마텽', 13), ('맑다', '막따', 13), ('맞춤법', '맏춤뻡', 13), ('머리맡', '머리맡', 13), ('맨날', '맨날', 13), ('많은', '마는', 13), ('맏며느리', '만며느리', 13), -- ㅁ
    ('바깥', '바깓', 14), ('밝다', '박따', 14), ('밥맛', '밤맏', 14), ('밥솥', '밥쏟', 14), ('벚꽃', '벋꽃', 14), ('복습', '복씁', 14), ('불법', '불뻡', 14), -- ㅂ
    ('샅샅이', '삳싸치', 15), ('색맹', '생맹', 15), ('생략', '생냑', 15), ('선릉', '설능', 15), ('성례', '성녜', 15), ('습득', '습뜩', 15), ('섞이다', '서끼다', 15), -- ㅅ
    ('앉다', '안따', 16), ('알록달록', '알록딸록', 16), ('앞마당', '암마당', 16), ('애국심', '애국씸', 16), ('약속', '약쏙', 16), ('양력', '양녁', 16), ('열쇠', '열쐬', 16), -- ㅇ
    ('잡지', '잡찌', 17), ('장미꽃', '장미꼳', 17), ('적발', '작빨', 17), ('적응', '저긍', 17), ('전류', '절류', 17), ('접속', '접쏙', 17), ('작문', '장문', 17), -- ㅈ
    ('착각', '착깍', 18), ('참숯', '참숟', 18), ('찻잔', '찯짠', 18), ('축하', '추카', 18), ('출입문', '출임문', 18), ('착용', '차굥', 18), ('창살', '창쌀', 18), -- ㅊ
    ('칼국수', '칼국쑤', 19), ('칸막이', '칸마기', 19), ('칼날', '칼랄', 19), ('칼자국', '칼짜국', 19), ('콜라', '콜나', 19), ('크레파스', '크레파쓰', 19), ('크리스마스', '크리쓰마쓰', 19), -- ㅋ
    ('탈선', '탈썬', 20), ('탑승', '탑씅', 20), ('태권도', '태꿘도', 20), ('태평양', '태평냥', 20), ('택배', '택빼', 20), ('통로', '통노', 20), ('탈옥', '타록', 20), -- ㅌ
    ('팔십', '팔씹', 21), ('팔자', '팔짜', 21), ('편리', '펼리', 21), ('편입', '펴닙', 21), ('평론', '평논', 21), ('폭발', '폭빨', 21), ('풍력', '풍녁', 21), -- ㅍ
    ('학생', '학쌩', 22), ('학습', '학씁', 22), ('학자', '학짜', 22), ('한글날', '한글랄', 22), ('현란', '혈란', 22), ('해돋이', '해도지', 22), ('혁명', '형명', 22); -- ㅎ

INSERT INTO word (text, word_pron, subcategory_id) VALUES
    ('해맞이', '해마지', 23), ('학교', '학꾜', 23), ('할인', '하린', 23), ('낮', '낟', 23), ('낯', '낟', 23),
    ('낫', '낟', 23), ('부엌', '부억', 23), ('해돋이', '해도지', 23), ('팔월', '파뤌', 23), -- 음절의 끝소리

    ('나무', '나무', 24), ('닭', '닥', 24), ('물', '물', 24), ('안경', '안경', 24), ('끊다', '끈타', 24),
    ('찌개', '찌개', 24), ('자리', '자리', 24), -- 유성자음

    ('토마토', '토마토', 25), ('캐나다', '캐나다', 25), ('사과', '사과', 25), ('헬기', '헬기', 25),
    ('치킨', '치킨', 25), ('수박', '수박', 25), ('고기', '고기', 25), -- 무성자음

    ('도토리', '도토리', 26), ('거북이', '거부기', 26), ('바람', '바람', 26), ('바가지', '바가지', 26), ('가랑비', '가랑비', 26),
    ('버드나무', '버드나무', 26), ('벌레', '벌레', 26), -- 모음조화

    ('좋아', '조아', 27), ('많고', '만코', 27), ('낳은', '나은', 27), ('살아', '사라', 27), ('열어', '여러', 27),
    ('울어', '우러', 27), -- 축약과 탈락

    ('입맛', '임맏', 28), ('음력', '음녘', 28), ('종로', '종노', 28), ('백만', '뱅만', 28), ('백년', '뱅년', 28),
    ('십리', '심니', 28), ('판단력', '판단녁', 28), ('일년', '일련', 28), -- 자음동화

    ('밥상', '밥쌍', 29), ('맏사위', '맏싸위', 29), ('백반', '백빤', 29), ('식당', '식땅', 29), ('염증', '염쯩', 29),
    ('점수', '점쑤', 29), ('곰국', '곰꾹', 29), -- 경음화와 유성음화

    ('꽃향기', '꼬턍기', 30), ('싫지', '실치', 30), ('북한', '부칸', 30), ('각하', '가카', 30), ('좋디', '조티', 30),
    ('자그맣다', '자그마타', 30), ('닳지', '달치', 30), -- 격음화

    ('여닫이', '여다지', 31), ('맏이', '마지', 31), ('같이', '가치', 31), ('굳이', '구지', 31), ('곧이', '고지', 31),
    ('낱낱이', '난나치', 31), ('햇볕이', '핻뼈치, 해뼈치', 31), -- 구개음화

    ('촛불', '촏뿔, 초뿔', 32), ('콧등', '콛등, 코뜽', 32), ('뱃사공', '밷싸공, 배싸공', 32), ('햇빛', '핻삗, 해삗', 32), ('냇가', '낻까, 내까', 32),
    ('샛길', '샏낄, 새낄', 32), ('뱃속', '밷쏙, 배쏙', 32), -- ㅅ 첨가

    ('부엌일', '부엉닐', 33), ('어떤일', '어떤닐', 33), ('맨입', '맨닙', 33), ('한일', '한닐', 33), ('낮일', '난닐', 33),
    ('잔일', '잔닐', 33), ('속잎', '송님', 33); -- ㄴ 첨가

-- 카테고리 삽입
INSERT INTO category (name) VALUES
    ('Grammar'),    -- 문법 연습
    ('Special'),    -- 특별한 상황
    ('Business');   -- 비즈니스

-- 서브카테고리 삽입
INSERT INTO subcategory (name, category_id) VALUES
    -- 문법 연습 (category_id = 4)
    ('BasicSentence', 4),  -- 기본 문장 구조
    ('VowelPron', 4),  -- 문장 내 모음 발음
    ('ConsonantPron', 4),  -- 문장 내 자음 발음
    ('Alter', 4),  -- 문장 내 음운 변동
    ('Add', 4),  -- 사잇소리 현상
    ('IrregularUsage', 4),  -- 문장 내 불규칙 활용

    -- 특별한 상황 (category_id = 5)
    ('Church', 5),  -- 교회에서 대화
    ('RestaurantOrdering', 5),  -- 식당에서 주문
    ('Hospital', 5),  -- 병원에서 대화
    ('Airport', 5),  -- 공항에서 대화
    ('Shopping', 5),  -- 쇼핑할 때의 대화
    ('Travel', 5),  -- 여행 중 대화
    ('TransportUsage', 5),  -- 대중교통 이용

    -- 비즈니스 (category_id = 6)
    ('ITDeveloper', 6),  -- IT 개발자
    ('Marketing', 6),  -- 마케팅 업무
    ('Sales', 6),  -- 영업 업무
    ('HR', 6),  -- HR 업무
    ('Design', 6),  -- 디자인 업무
    ('Research', 6);  -- 연구 개발

-- 문장 삽입
INSERT INTO sentence (text, subcategory_id) VALUES
    ('나는 학교에 간다.', 34), ('그녀는 책을 읽는다.', 34), ('우리는 친구와 영화를 본다.', 34), ('그는 피자를 좋아한다.', 34),
    ('학생들이 도서관에서 공부한다.', 34), ('고양이는 창문 옆에서 잔다.', 34), ('나는 커피를 마신다.', 34), ('아버지가 신문을 읽는다.', 34),
    ('아이들이 공원에서 놀고 있다.', 34),  ('선생님이 질문을 한다.', 34), ('어머니가 저녁을 준비한다.', 34), ('나는 매일 운동을 한다.', 34),
    ('그는 피아노를 연주한다.', 34), ('너는 숙제를 다 했니?', 34), ('강아지가 공을 물어왔다.', 34), ('우리는 새로운 프로젝트를 시작했다.', 34),
    ('학생들이 발표를 준비했다.', 34), ('그녀가 노래를 부른다.', 34), ('나는 친구에게 편지를 쓴다.', 34), ('동생이 문을 닫는다.', 34),

    ('아기가 엄마를 찾는다.', 35), ('오리가 물에서 헤엄친다.', 35), ('나는 우유를 마신다.', 35), ('바람이 시원하게 분다.', 35),
	('그는 바쁘지만 즐겁다.', 35), ('우리는 교실에서 공부한다.', 35), ('별이 반짝인다.', 35), ('기차가 역에 도착했다.', 35),
	('시계가 똑딱거린다.', 35), ('강아지가 뛰어다닌다.', 35), ('문을 열고 나갔다.', 35), ('자동차가 빠르게 달린다.', 35),
	('우리는 나무 아래에서 쉬었다.', 35), ('그녀가 피곤해서 졸고 있다.', 35), ('내일 날씨가 좋을 것 같다.', 35), ('하늘이 맑고 깨끗하다.', 35),
	('엄마가 바나나를 사 오셨다.', 35), ('새가 나뭇가지에 앉아 있다.', 35), ('친구가 케이크를 가져왔다.', 35), ('토끼가 당근을 먹는다.', 35),

	('바람이 시원하게 분다.', 36), ('나는 친구와 대화를 나눈다.', 36), ('학교에서 수업을 듣는다.', 36), ('그는 커피를 마신다.', 36),
	('강아지가 공을 물어 왔다.', 36), ('시계가 똑딱거린다.', 36), ('바나나가 맛있다.', 36), ('나는 가방을 들고 다닌다.', 36),
	('책상을 정리했다.', 36), ('피자가 맛있다.', 36), ('공원이 아름답다.', 36), ('문을 조용히 닫아라.', 36),
	('버스가 정류장에 도착했다.', 36), ('학생들이 교실에서 공부한다.', 36), ('동생이 장난감을 갖고 놀았다.', 36), ('그는 카메라를 들고 사진을 찍었다.', 36),
	('나는 새벽에 라디오를 들었다.', 36), ('지갑을 잃어버렸다.', 36), ('공을 차서 골을 넣었다.', 36), ('새가 지저귀고 있다.', 36),

	('친구들과 함께 학교에 가려고 준비하고 있어요.', 37), ('오늘 먹은 국밥이 정말 맛있어서 또 먹고 싶어요.', 37),
	('공원에 핀 꽃이 정말 예쁘고 향기도 좋아요.', 37), ('아침이 되자 닭이 크게 울면서 하루를 시작했어요.', 37),
	('박물관에서 본 신라시대 유물들이 정말 인상적이었어요.', 37), ('영화가 너무 재미있다고 해서 다 같이 함께 가서 보려고 해요.', 37),
	('오늘은 날씨도 좋고 기분도 좋은 날이라 여행 가기 딱 좋아요.', 37), ('방금 지은 밥이 아니라 그런지 밥이 차가워서 데워 먹었어요.', 37),
	('농부들이 넓은 밭을 갈면서 씨를 뿌리고 있어요.', 37), ('친구가 약속 시간보다 너무 늦게 와서 기다리느라 힘들었어요.', 37),
	('콘서트에 가고 싶은데 좋아하는 친구랑 같이 가면 더 즐거울 것 같아요.', 37), ('집에 도착해 보니 우산을 카페에 놓고 와서 다시 가지러 갔어요.', 37),
	('요즘 할 일이 너무 많아서 하루 종일 바쁘게 움직이고 있어요.', 37), ('벽에 포스터를 붙이고 싶었지만 테이프가 없어서 못 붙였어요.', 37),
	('수영장에 갔는데 아침이라 그런지 물이 차가워서 오래 못 들어갔어요.', 37), ('조용한 도서관에서 오랫동안 책을 읽으며 시간을 보냈어요.', 37),
	('놀이터에서 어린아이들이 즐겁게 뛰어놀고 있었어요.', 37), ('겨울이 다가오면서 점점 바람이 차가워지고 있어요.', 37),
	('오늘 백화점에 갔는데 주말이라 그런지 사람이 정말 많았어요.', 37), ('할머니께서 고향에서 오래 살아서 그곳이 가장 익숙하다고 하셨어요.', 37),

	('추운 날에는 따뜻한 고기국을 한 그릇 먹으면 몸이 금방 따뜻해져요.', 38), ('제주도로 가는 뱃길이 거칠어 배멀미를 하는 사람들이 많았어요.', 38),
	('문이 잘 안 열려서 손잡이를 세게 잡고 돌려야 했어요.', 38), ('감동적인 영화를 보면서 나도 모르게 눈물이 주르륵 흘렀어요.', 38),
	('한국에서 오래 산 외국인 친구가 이제는 한국말을 아주 자연스럽게 해요.', 38), ('시험 결과를 확인하려면 개인 정보와 함께 정확한 숫자를 입력해야 해요.', 38),
	('가족들과 함께 여름휴가를 떠나서 바닷가에서 시원한 바람을 맞으며 놀았어요.', 38), ('한강 공원에 가서 강가를 따라 걸으며 여유로운 시간을 보냈어요.', 38),
	('오래전부터 바다에서 생활해 온 뱃사람들은 거친 파도에도 능숙하게 배를 몰아요.', 38), ('도시에선 보기 어려운 밤하늘의 수많은 별을 시골에서 보니 정말 아름다웠어요.', 38),
	('감기가 심해서 병원에 갔더니 쓴 물약을 처방받았는데 먹기가 정말 힘들었어요.', 38), ('이곳에서는 불법 주차를 하면 곧바로 과태료가 부과되니 주의하세요.', 38),
	('봄바람이 불자 벚나무에서 분홍빛 꽃잎이 떨어지며 거리를 물들였어요.', 38), ('새 옷을 사서 구겨지지 않도록 옷걸이에 걸어 옷장에 넣어 두었어요.', 38),
	('목장에서 본 커다란 숫양이 새끼 양들을 보호하며 풀을 뜯고 있었어요.', 38), ('조용한 도서관에서 작은 말소리도 크게 들리니 대화는 삼가 주세요.', 38),
	('어린아이는 보호자의 도움 없이 차도를 혼자 건너면 위험할 수 있어요.', 38), ('목장에서 젖소가 풀을 뜯어 먹으며 여유롭게 움직이고 있었어요.', 38),
	('사람들이 많이 다니는 길목에는 늘 다양한 노점상들이 모여 있어요.', 38), ('오늘은 햇빛이 너무 강해서 외출할 때 선크림을 꼭 발라야 해요.', 38),

	('공부할 때 집중을 위해 클래식 음악을 조용히 듣는 것을 좋아해요.', 39), ('아침마다 건강을 위해 공원을 천천히 걸으며 하루를 시작해요.', 39),
	('모르는 것이 있으면 부끄러워하지 말고 선생님께 직접 물어보는 게 좋아요.', 39), ('손을 다친 후로 부기가 가라앉지 않고 점점 더 부어오르는 것 같아요.', 39),
	('감기에 걸려서 며칠 동안 고생했는데 이제 많이 나아서 학교에 갈 수 있어요.', 39), ('수업 시간에 선생님이 칠판에 여러 개의 직선을 그으며 설명해 주셨어요.', 39),
	('부모님께서 시골에 직접 작은 집을 짓고 사는 것이 꿈이라고 하셨어요.', 39), ('친구가 무거운 짐을 들고 있어서 얼른 가서 들어주며 도왔어요.', 39),
	('캠핑장에서 장작불 위에 고기를 구워 먹으니 평소보다 더 맛있었어요.', 39), ('피곤해서 집에 오자마자 소파에 바로 누워 한참을 쉬었어요.', 39),
	('여행을 가서 본 그곳의 자연 풍경은 정말 아름다워서 사진을 많이 찍었어요.', 39), ('이번 달 택배 배송은 예상보다 빨라서 바로 다음 날 도착했어요.', 39),
	('친구를 집 앞에서 기다렸는데 아무리 불러도 나오지 않았어요.', 39), ('미용실에서 머리를 짧게 자르고 새로운 스타일로 변신했어요.', 39),
	('우리는 같은 취미를 가졌지만 음악 취향은 서로 완전히 달라요.', 39), ('가을이 되자 공원에 있는 은행나무 잎이 노랗게 물들었어요.', 39),
	('어젯밤에 눈이 내려서 아침에 보니 온 세상이 하얗게 변해 있었어요.', 39), ('그가 말한 내용이 이상해서 그게 정말 사실인지 다시 물어봤어요.', 39),
	('아무리 설명해도 이해하지 못해서 이렇게 예를 들어 설명해 주었어요.', 39), ('하늘이 너무 맑고 깨끗해서 오늘은 정말 파란 하늘이 예쁜 날이에요.', 39);

INSERT INTO sentence (text, subcategory_id) VALUES
    ('샬롬! 오늘 예배 가운데 큰 은혜 받으시길 바랍니다.', 40), ('오늘 말씀 기대돼요! 함께 예배할 수 있어 기뻐요.', 40), ('오늘도 하나님께 영광 돌리는 시간이 되길 바랍니다!', 40),
    ('주님을 찬양합니다! 함께 마음을 다해 찬양해요.', 40), ('손을 들고 찬양하며 하나님께 영광을 돌려요!', 40), ('찬양할 때 성령님의 임재가 느껴져요.', 40),
    ('사랑하는 하나님, 이 시간 우리의 마음을 열어주세요.', 40), ('이 예배가 주님의 영광을 드러내는 시간이 되게 하소서.', 40), ('주님의 사랑이 이 예배 가운데 충만하게 하소서.', 40),
    ('믿음이란 보이지 않는 것을 확신하는 것입니다.', 40), ('예수님은 길이요 진리요 생명이십니다.', 40), ('우리는 하나님의 자녀로서 사랑하며 살아야 합니다.', 40),
    ('다음 주일 예배 후에 친교 모임이 있습니다.', 40), ('이번 주 금요일에는 찬양 예배가 예정되어 있습니다.', 40), ('청년부에서 성경 공부 모임을 시작합니다.', 40),
    ('성경에서 "믿음"이란 무엇을 의미하나요?', 40), ('하나님을 더 가까이 경험하려면 어떻게 해야 할까요?', 40), ('하나님은 왜 우리에게 고난을 허락하시나요?', 40),
    ('새로 오신 분에게 인사하고 함께 기도해드리면 좋겠어요.', 40), ('다음 주 예배 후에 같이 식사할까요?', 40), ('오늘 예배에서 가장 은혜받은 부분은 뭐였어요?', 40),
    ('함께 지역사회에 사랑을 전하는 시간이 되었으면 좋겠어요.', 40), ('오늘 봉사활동에 함께해 주셔서 감사합니다!', 40), ('기부 물품을 정리하는 데 도와드릴 수 있어요?', 40),
    ('수고하고 무거운 짐 진 자들아 다 내게로 오라 내가 너희를 쉬게 하리라.', 40), ('너는 마음을 다하여 여호와를 신뢰하고 네 명철을 의지하지 말라.', 40), ('너는 범사에 그를 인정하라 그리하면 네 길을 지도하시리라.', 40),
    ('식사하시면서 오늘 설교 말씀 어땠는지 이야기 나눠볼까요?', 40), ('어르신들 먼저 자리하시도록 도와드릴까요?', 40), ('찬양팀 분들은 나중에 연습 있으시죠? 식사 맛있게 하세요!', 40),

    ('이 식당의 대표 메뉴는 무엇인가요?', 41), ('오늘의 추천 요리는 어떤 건가요?', 41), ('이 가게에서 가장 인기 있는 음식은 무엇인가요?', 41),
    ('김치찌개 하나랑 공깃밥 추가해주세요.', 41), ('저는 불고기 정식으로 주세요.', 41), ('비빔밥 두 개랑 된장찌개 하나 주세요.', 41),
    ('이 음식 덜 맵게 해주실 수 있나요?', 41), ('양념을 조금만 넣어주세요.', 41), ('파랑 마늘 빼고 만들어 주세요.', 41),
    ('아이스 아메리카노 하나 주세요.', 41), ('카페인이 없는 음료 추천해 주세요.', 41), ('우유를 두유로 변경할 수 있나요?', 41),
    ('카드 결제 가능하죠?', 41), ('각자 계산할 수 있나요?', 41), ('계산서를 먼저 받을 수 있을까요?', 41),
    ('고기가 부드럽고 양념이 잘 배어 있어요.', 41), ('이 요리는 매콤하면서도 감칠맛이 나네요.', 41), ('튀김이 바삭바삭해서 좋아요!', 41),
    ('죄송한데, 음식이 너무 짜요. 조금 덜 짜게 해주실 수 있나요?', 41), ('주문한 음식이 아직 안 나왔어요. 얼마나 더 걸릴까요?', 41), ('이 요리가 너무 맵습니다. 덜 맵게 조리해 주실 수 있나요?', 41),
    ('이 가게에서 가장 인기 있는 메뉴는 뭐예요?', 41), ('처음 방문했는데, 추천해 주실 만한 요리가 있나요?', 41), ('오늘의 스페셜 메뉴가 있나요?', 41),
    ('정말 맛있게 잘 먹었습니다!', 41), ('오늘도 좋은 식사 제공해 주셔서 감사해요.', 41), ('서비스가 너무 친절해서 기분 좋게 식사했어요.', 41),
    ('여기서 일하신 지 얼마나 되셨나요?', 41), ('일하시면서 가장 좋아하는 메뉴는 뭐예요?', 41), ('추천해 주신 요리 덕분에 맛있게 먹었어요!', 41),

    ('오늘 진료 가능한 시간대가 있나요?', 42), ('특정 의사 선생님께 예약할 수 있나요?', 42), ('예약을 취소하려면 어떻게 해야 하나요?', 42),
    ('어제부터 머리가 심하게 아파요.', 42), ('열이 나고 온몸이 쑤십니다.', 42), ('배가 계속 아프고 설사를 해요.', 42),
    ('네, 지난주부터 아프기 시작했어요.', 42), ('아니요, 다른 특별한 증상은 없어요.', 42), ('고혈압이 있어서 약을 복용 중입니다.', 42),
    ('처방전을 받을 수 있을까요?', 42), ('이 약은 어디에서 받을 수 있나요?', 42), ('처방받은 약을 약국에서 바로 살 수 있나요?', 42),
    ('이 약은 하루 몇 번 먹어야 하나요?', 42), ('식전과 식후 언제 먹어야 하나요?', 42), ('이 약을 공복에 먹어도 괜찮나요?', 42),
    ('오늘 어떤 검사를 받게 되나요?', 42), ('검사 전에 준비해야 할 것이 있나요?', 42), ('검사 결과는 언제 나오나요?', 42),
    ('오늘 진료비는 얼마나 나올까요?', 42), ('검사 비용은 얼마나 하나요?', 42), ('의료보험 적용이 가능한가요?', 42),
    ('의사 선생님께 몇 시에 진료받을 수 있나요?', 42), ('진료실은 어디로 가면 되나요?', 42), ('채혈할 때 아프지 않게 해 주세요.', 42),
    ('퇴원 절차는 어떻게 진행되나요?', 42), ('퇴원할 때 서류를 챙겨야 하나요?', 42), ('퇴원 후에도 병원에 다시 와야 하나요?', 42),
    ('비타민을 따로 챙겨 먹어야 할까요?', 42), ('이 증상이 지속되면 병원에 다시 와야 하나요?', 42), ('면역력을 높이는 방법이 있나요?', 42),

    ('안녕하세요, 체크인 부탁드립니다.', 43), ('제 여권과 항공권입니다.', 43), ('창가 좌석으로 배정해 주실 수 있나요?', 43),
    ('액체류 반입 기준이 어떻게 되나요?', 43), ('면세점에서 산 물건은 기내 반입이 가능한가요?', 43), ('검색대를 다시 통과해야 하나요?', 43),
    ('탑승 게이트까지 가려면 얼마나 걸리나요?', 43), ('탑승할 때 어떤 서류가 필요한가요?', 43), ('탑승 게이트가 몇 번 변경되었어요. 어디로 가야 하나요?', 43),
    ('좌석을 조정해도 될까요?', 43), ('기내 엔터테인먼트 시스템이 작동하지 않아요.', 43), ('알러지가 있는데 대체 식사가 있나요?', 43),
    ('호텔 예약 확인서를 보여드릴까요?', 43), ('예전에도 이 나라를 방문한 적이 있습니다.', 43), ('안녕하세요. 제 여권을 여기 있습니다.', 43),
    ('제 짐이 어느 벨트에서 나오는지 알려주세요.', 43), ('수하물이 늦게 나오는 것 같아요.', 43), ('수하물 신고서는 어디에서 작성하나요?', 43),
    ('한국 원화를 미국 달러로 바꾸고 싶어요.', 43), ('환전 가능 시간이 언제까지인가요?', 43), ('다른 통화로 환전할 수도 있나요?', 43),
    ('이 공항에 흡연실이 있나요?', 43), ('공항 내 식당을 추천해 주실 수 있나요?', 43), ('면세점이 어디에 있나요?', 43),
    ('안녕하세요, 택시를 타고 싶습니다.', 43), ('이 공항에서 호텔까지 요금이 얼마나 나오나요?', 43), ('우버나 다른 차량 공유 서비스를 이용할 수 있나요?', 43),
    ('창가 자리에서 보는 경치가 정말 좋네요.', 43), ('기내식 드셔 보셨나요? 맛이 어떤가요?', 43), ('혹시 기내 엔터테인먼트 추천해 주실 수 있나요?', 43),

    ('새로 입고된 상품은 어디에서 볼 수 있나요?', 44), ('여름용 옷을 찾고 있는데 어디에 있나요?', 44), ('이 가게에서 가장 인기 있는 상품은 무엇인가요?', 44),
    ('이 제품의 가격이 얼마인가요?', 44), ('이 제품이 세일 중인가요?', 44), ('할인이 적용되면 최종 가격이 얼마인가요?', 44),
    ('이 색상의 한 치수 작은 제품이 있나요?', 44), ('이 신발을 반 치수 더 큰 걸로 바꿀 수 있을까요?', 44), ('이 제품의 남성용 버전도 있나요?', 44),
    ('현재 진행 중인 할인 행사가 있나요?', 44), ('멤버십 가입하면 추가 할인이 있나요?', 44), ('카드 결제 시 할인이 적용되나요?', 44),
    ('애플 페이나 삼성 페이로 결제할 수 있나요?', 44), ('현금과 카드로 나눠서 결제할 수 있나요?', 44), ('할부 개월 수는 몇 개월까지 가능한가요?', 44),
    ('환불받으려면 영수증이 꼭 필요한가요?', 44), ('카드 결제한 제품을 환불받으면 돈이 바로 들어오나요?', 44), ('구매한 상품을 다른 색상으로 교환할 수 있나요?', 44),
    ('추천해 주신 제품 정말 마음에 들어요!', 44), ('이 제품에 대해 자세히 설명해 주셔서 감사합니다.', 44), ('항상 친절하게 응대해 주셔서 감사해요.', 44),
    ('선물용으로 좋은 제품을 추천해 주세요.', 44), ('이 계절에 어울리는 제품이 있나요?', 44), ('피부 타입에 맞는 화장품을 추천해 주세요.', 44),
    ('이 제품을 선물용으로 포장해 주실 수 있나요?', 44), ('포장할 때 리본도 추가할 수 있나요?', 44), ('환경을 생각해서 최소한의 포장으로 부탁드려요.', 44),
    ('세일 정보까지 챙겨 주셔서 덕분에 저렴하게 샀어요!', 44), ('직원분들 모두 친절해서 기분 좋게 쇼핑했어요.', 44), ('구매 후에도 관리 방법을 알려주셔서 감사합니다!', 44),

    ('와이파이 비밀번호를 알려주실 수 있나요?', 45), ('짐을 방까지 가져다주실 수 있나요?', 45), ('에어컨/난방 조절 방법을 알려주세요.', 45),
    ('현지 사람들이 많이 가는 곳을 추천해 주세요.', 45), ('이곳에서 가장 아름다운 풍경을 볼 수 있는 곳은 어디인가요?', 45), ('가이드 투어를 예약할 수 있나요?', 45),
    ('여기에서 택시를 잡으려면 어떻게 해야 하나요?', 45), ('이 길이 맞나요, 아니면 다른 방향으로 가야 하나요?', 45), ('여기서 오른쪽으로 가야 하나요, 왼쪽으로 가야 하나요?', 45),
    ('이곳에서 가장 인기 있는 메뉴는 무엇인가요?', 45), ('추천해 주실 만한 현지 음식이 있나요?', 45), ('채식주의자를 위한 메뉴가 있나요?', 45),
    ('이곳에서 가장 가까운 기차역은 어디인가요?', 45), ('공항까지 가는 가장 빠른 방법은 무엇인가요?', 45), ('이 지역에서 교통카드를 사용할 수 있나요?', 45),
    ('실례하지만, 사진 좀 찍어주실 수 있나요?', 45), ('배경이 함께 나오도록 찍어주시면 감사해요.', 45), ('파노라마 사진으로 찍어주실 수 있나요?', 45),
    ('오늘 어떤 일정이 계획되어 있나요?', 45), ('내일의 추천 일정을 알려주실 수 있나요?', 45), ('이 여행 패키지에 포함된 활동은 무엇인가요?', 45),
    ('이 도시에 대해 조금 알려주실 수 있나요?', 45), ('전통 문화에 대해 설명해 주실 수 있나요?', 45), ('현지인들이 자주 가는 숨은 맛집이 있을까요?', 45),
    ('여권을 잃어버렸어요. 어떻게 해야 하나요?', 45), ('가방을 도난당했어요. 경찰서가 어디인가요?', 45), ('제 카드가 작동하지 않아요. 도움을 받을 수 있을까요?', 45),
    ('이번 여행은 정말 잊지 못할 경험이었어요!', 45), ('이 나라의 음식이 정말 맛있었어요!', 45), ('여기서 찍은 사진들이 너무 예뻐요!', 45),

    ('이 정류장에서 관광버스를 탈 수 있나요?', 46), ('이 노선의 전체 경로를 확인할 수 있는 방법이 있나요?', 46), ('버스 도착 시간이 정확한가요, 아니면 지연될 수도 있나요?', 46),
    ('이 역에서 티켓을 어디에서 구매할 수 있나요?', 46), ('이 노선이 연착될 가능성이 있나요?', 46), ('이 노선에서 가장 붐비는 시간대가 언제인가요?', 46),
    ('지하철 티켓을 구매하려면 어디로 가야 하나요?', 46), ('이 티켓을 구매하는 데 현금이 필요한가요?', 46), ('자동 발매기를 이용하는 방법을 알려주세요.', 46),
    ('지하철을 탈 때 티켓을 어디에 스캔해야 하나요?', 46), ('앉을 자리가 없으면 서서 타도 되나요?', 46), ('지하철 내에서 짐을 어디에 놓아야 하나요?', 46),
    ('이 노선에서 다른 노선으로 환승하려면 어떻게 해야 하나요?', 46), ('이 버스에서 지하철로 환승할 수 있나요?', 46), ('지하철에서 다른 노선으로 갈아타는 방법을 알려주세요.', 46),
    ('이 교통카드는 어디에서 충전할 수 있나요?', 46), ('교통카드를 분실하면 재발급 받을 수 있나요?', 46), ('교통카드 충전 시 수수료가 있나요?', 46),
    ('죄송하지만, 길을 잃었어요. 도와주실 수 있나요?', 46), ('택시를 타는 것이 좋을까요, 아니면 대중교통을 이용하는 것이 좋을까요?', 46), ('휴대폰 배터리가 없어서 길을 찾을 수 없어요. 도와주실 수 있나요?', 46),
    ('차를 조금 더 천천히 운전해 주실 수 있나요?', 46), ('이곳이 역삼역에서 얼마나 먼가요?', 46), ('안양에서 가장 유명한 명소는 무엇인가요?', 46),
    ('이 경로가 가장 빠른 길인가요?', 46), ('지금 출발하면 몇 시쯤 도착할까요?', 46), ('도착지까지 소요 시간을 알고 싶어요.', 46),
    ('큰 배낭은 앞으로 메야 합니다.', 46), ('애완동물을 데리고 탈 수 있나요?', 46), ('사람이 많을 때 큰 가방은 어디에 두어야 하나요?', 46);

INSERT INTO sentence (text, subcategory_id) VALUES
    ('코드 리뷰 요청했는데 확인해 주실 수 있나요?', 47), ('이 부분에서 코드 스타일을 조금 통일하는 게 좋을 것 같아요.', 47), ('이 함수는 조금 더 간결하게 리팩토링할 수 있을 것 같은데요?', 47),
    ('이 버그가 발생한 원인을 분석해 봤나요?', 47), ('어떤 환경에서 버그가 재현되나요?', 47), ('에러 로그를 확인해 보셨나요?', 47),
    ('이번 프로젝트의 마감 기한이 언제인가요?', 47), ('현재 일정대로 진행하면 문제없이 완료될 수 있을까요?', 47), ('개발 일정이 너무 타이트한 것 같은데 조정이 가능할까요?', 47),
    ('현재 트렌드를 고려했을 때 어떤 기술을 도입하는 게 좋을까요?', 47), ('팀원들이 가장 익숙한 기술 스택을 선택하는 게 나을까요?', 47), ('마이크로서비스 아키텍처를 적용할 필요가 있을까요?', 47),
    ('유닛 테스트는 충분히 커버하고 있나요?', 47), ('통합 테스트를 추가해야 할까요?', 47), ('테스트 케이스를 더 늘리는 게 좋을까요?', 47), ('슬랙에서 알림이 잘 안 오는 것 같아요, 설정 확인 부탁드려요.', 47),
    ('협업 도구에서 알림 설정을 효율적으로 관리하는 방법이 있을까요?', 47), ('피그마에서 UI 디자인 확인하실 수 있어요.', 47), ('이번 프로젝트에서 사용할 데이터베이스는 무엇으로 할까요?', 47),
    ('인덱싱 전략을 어떻게 가져가면 좋을까요?', 47), ('트랜잭션 처리를 어떻게 설계하면 좋을까요?', 47), ('이번 프로젝트에서 어떤 API를 통합해야 하나요?', 47),
    ('API 문서를 먼저 확인해 보셨나요?', 47), ('이 API의 응답 형식이 JSON인가요, XML인가요?', 47), ('CSRF 방어를 위한 조치가 필요할까요?', 47),
    ('CORS 정책을 어떻게 설정할까요?', 47), ('SQL 인젝션 방지를 위해 어떤 방법을 적용할까요?', 47), ('이번 프로젝트에서 새로운 기술을 도입해 볼까요?', 47),
    ('이 기술이 기존 시스템과 잘 호환될까요?', 47), ('이 기술의 커뮤니티 지원이 활발한가요?', 47), ('이번 마케팅 캠페인의 핵심 목표는 무엇인가요?', 48),

    ('캠페인의 주요 메시지는 어떤 방향으로 가져가면 좋을까요?', 48), ('이 캠페인이 브랜드 이미지에 어떤 영향을 줄까요?', 48), ('이번 캠페인의 주요 타겟층은 누구인가요?', 48),
    ('연령대별로 반응이 다를 수 있는데 세분화할 필요가 있을까요?', 48), ('이전에 비슷한 타겟을 대상으로 진행한 사례가 있나요?', 48), ('이전 캠페인의 예산 대비 성과를 비교해 봤나요?', 48),
    ('광고비를 월 단위로 나누는 게 좋을까요, 아니면 일괄 집행할까요?', 48), ('가장 효과적인 광고 채널을 우선순위로 예산을 조정하는 게 좋겠어요.', 48), ('개인화된 이메일 콘텐츠가 효과적인가요?', 48),
    ('고객이 이메일 구독을 쉽게 취소할 수 있도록 해야겠어요.', 48), ('이메일 발송 후 유입된 트래픽을 분석해 봐야겠어요.', 48), ('비디오, 이미지, 텍스트 중 어떤 포맷이 가장 효과적일까요?', 48),
    ('콘텐츠 제작 일정이 촉박한데 우선순위를 조정해야 할까요?', 48), ('SNS 콘텐츠와 블로그 콘텐츠를 다르게 기획하는 것이 좋을까요?', 48), ('이번 캠페인의 주요 성과 데이터를 분석해 보셨나요?', 48),
    ('페이지 방문자 수와 이탈률을 비교해 보면 어떨까요?', 48), ('광고별 전환율 차이를 분석해 보면 좋을 것 같아요.', 48), ('최근 경쟁사의 마케팅 전략에서 주목할 만한 점이 있나요?', 48),
    ('경쟁사가 주로 활용하는 광고 채널은 어디인가요?', 48), ('경쟁사 웹사이트 트래픽을 분석해 보면 어떨까요?', 48), ('최근 고객 리뷰에서 가장 많이 언급된 내용이 무엇인가요?', 48),
    ('고객 만족도를 높이기 위해 개선할 점이 있나요?', 48), ('부정적인 피드백 중에서 가장 자주 언급되는 문제는 무엇인가요?', 48), ('마케팅 목표 대비 실제 성과가 어땠는지 분석해 봅시다.', 48),
    ('전환율이 가장 높은 캠페인은 무엇인가요?', 48), ('이전 캠페인과 비교해서 성장한 부분을 강조해야겠어요.', 48), ('기존 전략을 개선할 수 있는 창의적인 방법이 있을까요?', 48),
    ('최근 마케팅 트렌드를 참고해서 새로운 시도를 해볼까요?', 48), ('우리 브랜드만의 차별점을 강조할 수 있는 방법을 찾아야겠어요.', 48),

    ('이번 미팅의 주요 목표는 무엇인가요?', 49), ('고객사가 우리 제품이나 서비스에 대해 이미 알고 있는 정보는 무엇인가요?', 49), ('고객사의 산업군과 주요 니즈를 사전에 조사했나요?', 49),
    ('우리 제품의 핵심 가치는 무엇인가요?', 49), ('이 제품이 고객의 어떤 문제를 해결할 수 있는지 설명해야 합니다.', 49), ('경쟁 제품과 비교했을 때 가장 차별화된 기능은 무엇인가요?', 49),
    ('이번 계약에서 가장 중요한 협상 포인트는 무엇인가요?', 49), ('고객사가 요청한 조항을 검토하고 내부 승인 절차를 진행해야겠어요.', 49), ('고객사의 지불 방식이 우리와 맞는지 확인해 봐야겠어요.', 49),
    ('현재 제품이 고객의 요구 사항을 충족할 수 있을까요?', 49), ('고객 요구 사항을 내부 개발팀과 공유해야겠어요.', 49), ('요구 사항 우선순위를 정해서 대응하면 좋겠어요.', 49),
    ('이번 분기의 영업 목표를 어떻게 설정하면 좋을까요?', 49), ('매출 목표를 현실적으로 달성할 수 있도록 조정해야 할까요?', 49), ('각 영업 담당자의 개별 목표를 정리해서 공유해 주세요.', 49),
    ('주요 거래처별 담당자를 정리해서 공유해 주세요.', 49), ('장기적인 관계 유지를 위해 거래처와 정기적인 미팅을 진행할까요?', 49), ('각 거래처별 구매 패턴을 분석해서 맞춤형 제안을 준비해야겠어요.', 49),
    ('이번 분기의 영업 성과를 정리해서 공유해 주세요.', 49), ('목표 대비 현재 매출이 어느 정도 달성되었나요?', 49), ('각 담당자별 영업 실적을 분석해서 보고하면 좋겠어요.', 49),
    ('고객이 가장 많이 제기하는 불만 사항이 무엇인가요?', 49), ('최근 접수된 고객 불만 사례를 분석해서 해결책을 찾아야 합니다.', 49), ('고객 불만을 신속하게 해결하기 위한 대응 프로세스를 마련해야겠어요.', 49),
    ('현재 영업 전략의 가장 큰 강점과 약점은 무엇인가요?', 49), ('시장 변화에 맞춰 영업 전략을 수정해야 할까요?', 49), ('영업팀의 성과를 높이기 위한 새로운 접근법이 필요할까요?', 49),
    ('이번 달 영업 실적을 분석해서 문제점을 찾아야 합니다.', 49), ('목표 대비 실적이 부족한 원인은 무엇일까요?', 49), ('새로운 영업 전략을 도입할 필요가 있을까요?', 49),

    ('이번 채용에서 가장 중요한 직무 요건은 무엇인가요?', 50), ('채용 공고에 포함해야 할 필수 내용을 정리해 주세요.', 50), ('채용 공고의 문구를 좀 더 매력적으로 수정하면 어떨까요?', 50),
    ('이번 면접에서 중점적으로 평가할 항목은 무엇인가요?', 50), ('면접 질문 리스트를 사전에 정리해서 공유해 주세요.', 50), ('지원자의 이력서와 포트폴리오를 미리 검토해야 합니다.', 50),
    ('신입 사원 오리엔테이션의 전체 일정을 정리해 주세요.', 50), ('회사 소개와 조직 문화를 어떻게 전달할까요?', 50), ('신입 사원이 가장 먼저 알아야 할 정보는 무엇일까요?', 50),
    ('직원 평가 기준을 어떻게 설정하면 좋을까요?', 50), ('이번 직원 평가에서 중점적으로 볼 항목은 무엇인가요?', 50), ('성과 평가와 역량 평가를 어떻게 구분할까요?', 50),
    ('직원들이 가장 필요로 하는 교육 내용은 무엇일까요?', 50), ('신입 직원과 경력 직원의 교육을 분리해서 진행하는 것이 효과적일까요?', 50), ('기존 교육 프로그램에서 개선해야 할 점이 있을까요?', 50),
    ('현재 휴가 제도가 직원들에게 충분한 혜택을 제공하고 있나요?', 50), ('연차 사용률이 낮다면 원인이 무엇인지 분석해야 합니다.', 50), ('직원들의 휴가 신청 프로세스를 간소화하는 것이 필요할까요?', 50),
    ('익명 상담을 허용하면 직원들의 참여도가 높아질까요?', 50), ('상담 후 피드백을 제공하는 것이 중요할까요?', 50), ('직원들의 불만 사항을 수집하여 조직 개선에 반영해야 합니다.', 50),
    ('조직 문화 개선을 위해 팀워크 강화 프로그램을 운영하면 어떨까요?', 50), ('회사의 핵심 가치가 조직 문화에 잘 반영되고 있는지 점검해야 합니다.', 50), ('임직원 간의 신뢰를 높이는 방법을 고민해야 합니다.', 50),
    ('퇴사자가 퇴직 후에도 긍정적인 기업 이미지를 가질 수 있도록 배려해야 합니다.', 50), ('퇴사 면담 시 솔직한 피드백을 받을 수 있는 분위기를 조성해야 합니다.', 50), ('퇴사 면담에서 다룰 주요 질문을 사전에 정리해야 합니다.', 50),
    ('최근 채용 성과를 수치로 정리해서 보고하면 좋겠습니다.', 50), ('직원 이직률과 유지율을 분석하여 보고서에 포함해야 합니다.', 50), ('HR 지표를 시각적으로 표현하기 위해 그래프나 차트를 추가할까요?', 50),

    ('이번 프로젝트의 주요 디자인 컨셉을 어떻게 설정하면 좋을까요?', 51), ('클라이언트가 원하는 디자인 스타일을 구체적으로 정리해야 합니다.', 51), ('브랜드의 핵심 가치를 반영할 수 있는 디자인 방향을 논의해야 합니다.', 51),
    ('클라이언트가 제공한 피드백을 정리해서 공유해 주세요.', 51), ('요청 사항 중 우선적으로 반영해야 할 항목이 무엇인가요?', 51), ('디자인 수정 요청이 논리적으로 타당한지 검토해야 합니다.', 51),
    ('디자인 파일 관리를 체계적으로 하기 위한 가이드라인을 정해야 합니다.', 51), ('작업 파일을 클라우드에서 공유하면 협업이 더 원활할까요?', 51), ('디자인 툴의 최신 업데이트 내용을 숙지해야 합니다.', 51),
    ('사용자의 피드백을 기반으로 프로토타입을 개선해야 합니다.', 51), ('클라이언트가 직접 테스트할 수 있도록 프로토타입을 공유하면 좋겠습니다.', 51), ('프로토타입의 흐름이 직관적인지 검토해야 합니다.', 51),
    ('이번 프로젝트의 주요 색상 팔레트를 어떻게 설정하면 좋을까요?', 51), ('브랜드 컬러와 조화를 이루는 색상을 선정해야 합니다.', 51), ('색상의 대비를 높여 가독성을 개선할 필요가 있을까요?', 51),
    ('프로젝트 전체 디자인 일정을 어떻게 설정하면 좋을까요?', 51), ('디자인 초안을 언제까지 완료해야 할까요?', 51), ('클라이언트 피드백을 반영할 시간을 고려해야 합니다.', 51),
    ('디자인 팀이 주로 사용하는 협업 플랫폼은 어떤 것이 있나요?', 51), ('디자인 파일을 효과적으로 공유할 수 있는 방법을 논의해야 합니다.', 51), ('버전 관리를 위해 파일 네이밍 규칙을 설정하면 좋겠습니다.', 51),
    ('클라이언트 피드백을 반영하기 위한 방법을 논의해야 합니다.', 51), ('현재 디자인 방향이 프로젝트 목표와 일치하는지 검토해야 합니다.', 51), ('회의 전에 각자의 작업 내용을 정리해 오는 것이 필요합니다.', 51),
    ('최근 가장 인기 있는 디자인 트렌드는 무엇인가요?', 51), ('미니멀리즘 디자인이 여전히 트렌드로 자리 잡고 있을까요?', 51), ('뉴모피즘 스타일이 사용자 경험에 어떤 영향을 미칠까요?', 51),
    ('최종 디자인을 클라이언트에게 공유하기 전에 내부적으로 검토해야 합니다.', 51), ('디자인이 프로젝트 목표를 충족하는지 다시 한번 확인해야 합니다.', 51), ('디자인 피드백이 모두 반영되었는지 점검해야 합니다.', 51),

    ('이번 연구에서 다룰 핵심 주제는 무엇인가요?', 52), ('현재 연구 트렌드를 분석하여 주제를 선정하는 것이 필요합니다.', 52), ('우리 연구팀의 강점을 살릴 수 있는 주제를 고민해야 합니다.', 52),
    ('실험의 목표를 명확하게 설정하는 것이 중요합니다.', 52), ('실험 변수를 어떻게 설정하면 가장 효과적일까요?', 52), ('실험 대상과 샘플 크기를 적절하게 결정해야 합니다.', 52),
    ('데이터를 시각적으로 표현하는 것이 분석에 도움이 될까요?', 52), ('통계 분석을 위해 어떤 소프트웨어를 활용하는 것이 좋을까요?', 52), ('데이터의 신뢰도를 높이기 위한 검증 절차가 필요합니다.', 52),
    ('연구 결과 보고서를 작성하는 기준을 정리해야 합니다.', 52), ('보고서에서 연구 목표와 결과를 명확하게 설명하는 것이 중요합니다.', 52), ('데이터 분석 결과를 보고서에서 어떻게 표현하면 좋을까요?', 52),
    ('특허 명세서를 작성할 때 중요한 사항은 무엇인가요?', 52), ('특허 출원을 위해 필요한 자료를 정리해야 합니다.', 52), ('유사 특허가 있는지 사전 조사를 진행해야 합니다.', 52),
    ('연구비 지원 가능성이 높은 기관과 프로그램을 조사해야 합니다.', 52), ('연구비 지원 신청서에서 핵심적으로 강조해야 할 점은 무엇인가요?', 52), ('정부 연구 지원과 민간 연구 지원 중 어디에 신청하는 것이 좋을까요?', 52),
    ('기존 연구 방법에서 개선할 수 있는 부분이 있을까요?', 52), ('다양한 관점을 반영하여 연구 방향을 설정하는 것이 중요합니다.', 52), ('경쟁 연구팀이 진행 중인 연구를 참고하면 어떤 아이디어가 떠오를까요?', 52),
    ('논문의 구조를 어떻게 구성할지 논의해야 합니다.', 52), ('논문의 초안을 작성하기 전에 관련 문헌 조사를 철저히 해야 합니다.', 52), ('데이터 분석 결과를 논문에서 어떻게 표현하면 좋을까요?', 52),
    ('청중의 이해도를 고려하여 발표 자료를 구성해야 합니다.', 52), ('발표 시간 내에 핵심 내용을 효과적으로 전달하는 것이 중요합니다.', 52), ('연구의 주요 결과를 강조하는 방식으로 발표를 구성해야 합니다.', 52),
    ('성과 공유 미팅을 통해 연구 결과에 대한 피드백을 받을 필요가 있습니다.', 52), ('연구 성과가 실용화될 수 있는 방안을 논의해야 합니다.', 52), ('연구 결과를 활용하여 새로운 프로젝트를 기획할 수 있을까요?', 52);
