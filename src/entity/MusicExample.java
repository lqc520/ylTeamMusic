package entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class MusicExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public MusicExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andMusicidIsNull() {
            addCriterion("musicId is null");
            return (Criteria) this;
        }

        public Criteria andMusicidIsNotNull() {
            addCriterion("musicId is not null");
            return (Criteria) this;
        }

        public Criteria andMusicidEqualTo(Integer value) {
            addCriterion("musicId =", value, "musicid");
            return (Criteria) this;
        }

        public Criteria andMusicidNotEqualTo(Integer value) {
            addCriterion("musicId <>", value, "musicid");
            return (Criteria) this;
        }

        public Criteria andMusicidGreaterThan(Integer value) {
            addCriterion("musicId >", value, "musicid");
            return (Criteria) this;
        }

        public Criteria andMusicidGreaterThanOrEqualTo(Integer value) {
            addCriterion("musicId >=", value, "musicid");
            return (Criteria) this;
        }

        public Criteria andMusicidLessThan(Integer value) {
            addCriterion("musicId <", value, "musicid");
            return (Criteria) this;
        }

        public Criteria andMusicidLessThanOrEqualTo(Integer value) {
            addCriterion("musicId <=", value, "musicid");
            return (Criteria) this;
        }

        public Criteria andMusicidIn(List<Integer> values) {
            addCriterion("musicId in", values, "musicid");
            return (Criteria) this;
        }

        public Criteria andMusicidNotIn(List<Integer> values) {
            addCriterion("musicId not in", values, "musicid");
            return (Criteria) this;
        }

        public Criteria andMusicidBetween(Integer value1, Integer value2) {
            addCriterion("musicId between", value1, value2, "musicid");
            return (Criteria) this;
        }

        public Criteria andMusicidNotBetween(Integer value1, Integer value2) {
            addCriterion("musicId not between", value1, value2, "musicid");
            return (Criteria) this;
        }

        public Criteria andMusicnameIsNull() {
            addCriterion("musicName is null");
            return (Criteria) this;
        }

        public Criteria andMusicnameIsNotNull() {
            addCriterion("musicName is not null");
            return (Criteria) this;
        }

        public Criteria andMusicnameEqualTo(String value) {
            addCriterion("musicName =", value, "musicname");
            return (Criteria) this;
        }

        public Criteria andMusicnameNotEqualTo(String value) {
            addCriterion("musicName <>", value, "musicname");
            return (Criteria) this;
        }

        public Criteria andMusicnameGreaterThan(String value) {
            addCriterion("musicName >", value, "musicname");
            return (Criteria) this;
        }

        public Criteria andMusicnameGreaterThanOrEqualTo(String value) {
            addCriterion("musicName >=", value, "musicname");
            return (Criteria) this;
        }

        public Criteria andMusicnameLessThan(String value) {
            addCriterion("musicName <", value, "musicname");
            return (Criteria) this;
        }

        public Criteria andMusicnameLessThanOrEqualTo(String value) {
            addCriterion("musicName <=", value, "musicname");
            return (Criteria) this;
        }

        public Criteria andMusicnameLike(String value) {
            addCriterion("musicName like", value, "musicname");
            return (Criteria) this;
        }

        public Criteria andMusicnameNotLike(String value) {
            addCriterion("musicName not like", value, "musicname");
            return (Criteria) this;
        }

        public Criteria andMusicnameIn(List<String> values) {
            addCriterion("musicName in", values, "musicname");
            return (Criteria) this;
        }

        public Criteria andMusicnameNotIn(List<String> values) {
            addCriterion("musicName not in", values, "musicname");
            return (Criteria) this;
        }

        public Criteria andMusicnameBetween(String value1, String value2) {
            addCriterion("musicName between", value1, value2, "musicname");
            return (Criteria) this;
        }

        public Criteria andMusicnameNotBetween(String value1, String value2) {
            addCriterion("musicName not between", value1, value2, "musicname");
            return (Criteria) this;
        }

        public Criteria andMusicphotourlIsNull() {
            addCriterion("musicPhotoURL is null");
            return (Criteria) this;
        }

        public Criteria andMusicphotourlIsNotNull() {
            addCriterion("musicPhotoURL is not null");
            return (Criteria) this;
        }

        public Criteria andMusicphotourlEqualTo(String value) {
            addCriterion("musicPhotoURL =", value, "musicphotourl");
            return (Criteria) this;
        }

        public Criteria andMusicphotourlNotEqualTo(String value) {
            addCriterion("musicPhotoURL <>", value, "musicphotourl");
            return (Criteria) this;
        }

        public Criteria andMusicphotourlGreaterThan(String value) {
            addCriterion("musicPhotoURL >", value, "musicphotourl");
            return (Criteria) this;
        }

        public Criteria andMusicphotourlGreaterThanOrEqualTo(String value) {
            addCriterion("musicPhotoURL >=", value, "musicphotourl");
            return (Criteria) this;
        }

        public Criteria andMusicphotourlLessThan(String value) {
            addCriterion("musicPhotoURL <", value, "musicphotourl");
            return (Criteria) this;
        }

        public Criteria andMusicphotourlLessThanOrEqualTo(String value) {
            addCriterion("musicPhotoURL <=", value, "musicphotourl");
            return (Criteria) this;
        }

        public Criteria andMusicphotourlLike(String value) {
            addCriterion("musicPhotoURL like", value, "musicphotourl");
            return (Criteria) this;
        }

        public Criteria andMusicphotourlNotLike(String value) {
            addCriterion("musicPhotoURL not like", value, "musicphotourl");
            return (Criteria) this;
        }

        public Criteria andMusicphotourlIn(List<String> values) {
            addCriterion("musicPhotoURL in", values, "musicphotourl");
            return (Criteria) this;
        }

        public Criteria andMusicphotourlNotIn(List<String> values) {
            addCriterion("musicPhotoURL not in", values, "musicphotourl");
            return (Criteria) this;
        }

        public Criteria andMusicphotourlBetween(String value1, String value2) {
            addCriterion("musicPhotoURL between", value1, value2, "musicphotourl");
            return (Criteria) this;
        }

        public Criteria andMusicphotourlNotBetween(String value1, String value2) {
            addCriterion("musicPhotoURL not between", value1, value2, "musicphotourl");
            return (Criteria) this;
        }

        public Criteria andSingeridIsNull() {
            addCriterion("singerId is null");
            return (Criteria) this;
        }

        public Criteria andSingeridIsNotNull() {
            addCriterion("singerId is not null");
            return (Criteria) this;
        }

        public Criteria andSingeridEqualTo(Integer value) {
            addCriterion("singerId =", value, "singerid");
            return (Criteria) this;
        }

        public Criteria andSingeridNotEqualTo(Integer value) {
            addCriterion("singerId <>", value, "singerid");
            return (Criteria) this;
        }

        public Criteria andSingeridGreaterThan(Integer value) {
            addCriterion("singerId >", value, "singerid");
            return (Criteria) this;
        }

        public Criteria andSingeridGreaterThanOrEqualTo(Integer value) {
            addCriterion("singerId >=", value, "singerid");
            return (Criteria) this;
        }

        public Criteria andSingeridLessThan(Integer value) {
            addCriterion("singerId <", value, "singerid");
            return (Criteria) this;
        }

        public Criteria andSingeridLessThanOrEqualTo(Integer value) {
            addCriterion("singerId <=", value, "singerid");
            return (Criteria) this;
        }

        public Criteria andSingeridIn(List<Integer> values) {
            addCriterion("singerId in", values, "singerid");
            return (Criteria) this;
        }

        public Criteria andSingeridNotIn(List<Integer> values) {
            addCriterion("singerId not in", values, "singerid");
            return (Criteria) this;
        }

        public Criteria andSingeridBetween(Integer value1, Integer value2) {
            addCriterion("singerId between", value1, value2, "singerid");
            return (Criteria) this;
        }

        public Criteria andSingeridNotBetween(Integer value1, Integer value2) {
            addCriterion("singerId not between", value1, value2, "singerid");
            return (Criteria) this;
        }

        public Criteria andMusichotIsNull() {
            addCriterion("musicHot is null");
            return (Criteria) this;
        }

        public Criteria andMusichotIsNotNull() {
            addCriterion("musicHot is not null");
            return (Criteria) this;
        }

        public Criteria andMusichotEqualTo(Integer value) {
            addCriterion("musicHot =", value, "musichot");
            return (Criteria) this;
        }

        public Criteria andMusichotNotEqualTo(Integer value) {
            addCriterion("musicHot <>", value, "musichot");
            return (Criteria) this;
        }

        public Criteria andMusichotGreaterThan(Integer value) {
            addCriterion("musicHot >", value, "musichot");
            return (Criteria) this;
        }

        public Criteria andMusichotGreaterThanOrEqualTo(Integer value) {
            addCriterion("musicHot >=", value, "musichot");
            return (Criteria) this;
        }

        public Criteria andMusichotLessThan(Integer value) {
            addCriterion("musicHot <", value, "musichot");
            return (Criteria) this;
        }

        public Criteria andMusichotLessThanOrEqualTo(Integer value) {
            addCriterion("musicHot <=", value, "musichot");
            return (Criteria) this;
        }

        public Criteria andMusichotIn(List<Integer> values) {
            addCriterion("musicHot in", values, "musichot");
            return (Criteria) this;
        }

        public Criteria andMusichotNotIn(List<Integer> values) {
            addCriterion("musicHot not in", values, "musichot");
            return (Criteria) this;
        }

        public Criteria andMusichotBetween(Integer value1, Integer value2) {
            addCriterion("musicHot between", value1, value2, "musichot");
            return (Criteria) this;
        }

        public Criteria andMusichotNotBetween(Integer value1, Integer value2) {
            addCriterion("musicHot not between", value1, value2, "musichot");
            return (Criteria) this;
        }

        public Criteria andLyricurlIsNull() {
            addCriterion("lyricURL is null");
            return (Criteria) this;
        }

        public Criteria andLyricurlIsNotNull() {
            addCriterion("lyricURL is not null");
            return (Criteria) this;
        }

        public Criteria andLyricurlEqualTo(String value) {
            addCriterion("lyricURL =", value, "lyricurl");
            return (Criteria) this;
        }

        public Criteria andLyricurlNotEqualTo(String value) {
            addCriterion("lyricURL <>", value, "lyricurl");
            return (Criteria) this;
        }

        public Criteria andLyricurlGreaterThan(String value) {
            addCriterion("lyricURL >", value, "lyricurl");
            return (Criteria) this;
        }

        public Criteria andLyricurlGreaterThanOrEqualTo(String value) {
            addCriterion("lyricURL >=", value, "lyricurl");
            return (Criteria) this;
        }

        public Criteria andLyricurlLessThan(String value) {
            addCriterion("lyricURL <", value, "lyricurl");
            return (Criteria) this;
        }

        public Criteria andLyricurlLessThanOrEqualTo(String value) {
            addCriterion("lyricURL <=", value, "lyricurl");
            return (Criteria) this;
        }

        public Criteria andLyricurlLike(String value) {
            addCriterion("lyricURL like", value, "lyricurl");
            return (Criteria) this;
        }

        public Criteria andLyricurlNotLike(String value) {
            addCriterion("lyricURL not like", value, "lyricurl");
            return (Criteria) this;
        }

        public Criteria andLyricurlIn(List<String> values) {
            addCriterion("lyricURL in", values, "lyricurl");
            return (Criteria) this;
        }

        public Criteria andLyricurlNotIn(List<String> values) {
            addCriterion("lyricURL not in", values, "lyricurl");
            return (Criteria) this;
        }

        public Criteria andLyricurlBetween(String value1, String value2) {
            addCriterion("lyricURL between", value1, value2, "lyricurl");
            return (Criteria) this;
        }

        public Criteria andLyricurlNotBetween(String value1, String value2) {
            addCriterion("lyricURL not between", value1, value2, "lyricurl");
            return (Criteria) this;
        }

        public Criteria andMusictypeidIsNull() {
            addCriterion("musicTypeId is null");
            return (Criteria) this;
        }

        public Criteria andMusictypeidIsNotNull() {
            addCriterion("musicTypeId is not null");
            return (Criteria) this;
        }

        public Criteria andMusictypeidEqualTo(Integer value) {
            addCriterion("musicTypeId =", value, "musictypeid");
            return (Criteria) this;
        }

        public Criteria andMusictypeidNotEqualTo(Integer value) {
            addCriterion("musicTypeId <>", value, "musictypeid");
            return (Criteria) this;
        }

        public Criteria andMusictypeidGreaterThan(Integer value) {
            addCriterion("musicTypeId >", value, "musictypeid");
            return (Criteria) this;
        }

        public Criteria andMusictypeidGreaterThanOrEqualTo(Integer value) {
            addCriterion("musicTypeId >=", value, "musictypeid");
            return (Criteria) this;
        }

        public Criteria andMusictypeidLessThan(Integer value) {
            addCriterion("musicTypeId <", value, "musictypeid");
            return (Criteria) this;
        }

        public Criteria andMusictypeidLessThanOrEqualTo(Integer value) {
            addCriterion("musicTypeId <=", value, "musictypeid");
            return (Criteria) this;
        }

        public Criteria andMusictypeidIn(List<Integer> values) {
            addCriterion("musicTypeId in", values, "musictypeid");
            return (Criteria) this;
        }

        public Criteria andMusictypeidNotIn(List<Integer> values) {
            addCriterion("musicTypeId not in", values, "musictypeid");
            return (Criteria) this;
        }

        public Criteria andMusictypeidBetween(Integer value1, Integer value2) {
            addCriterion("musicTypeId between", value1, value2, "musictypeid");
            return (Criteria) this;
        }

        public Criteria andMusictypeidNotBetween(Integer value1, Integer value2) {
            addCriterion("musicTypeId not between", value1, value2, "musictypeid");
            return (Criteria) this;
        }

        public Criteria andSongurlIsNull() {
            addCriterion("songURL is null");
            return (Criteria) this;
        }

        public Criteria andSongurlIsNotNull() {
            addCriterion("songURL is not null");
            return (Criteria) this;
        }

        public Criteria andSongurlEqualTo(String value) {
            addCriterion("songURL =", value, "songurl");
            return (Criteria) this;
        }

        public Criteria andSongurlNotEqualTo(String value) {
            addCriterion("songURL <>", value, "songurl");
            return (Criteria) this;
        }

        public Criteria andSongurlGreaterThan(String value) {
            addCriterion("songURL >", value, "songurl");
            return (Criteria) this;
        }

        public Criteria andSongurlGreaterThanOrEqualTo(String value) {
            addCriterion("songURL >=", value, "songurl");
            return (Criteria) this;
        }

        public Criteria andSongurlLessThan(String value) {
            addCriterion("songURL <", value, "songurl");
            return (Criteria) this;
        }

        public Criteria andSongurlLessThanOrEqualTo(String value) {
            addCriterion("songURL <=", value, "songurl");
            return (Criteria) this;
        }

        public Criteria andSongurlLike(String value) {
            addCriterion("songURL like", value, "songurl");
            return (Criteria) this;
        }

        public Criteria andSongurlNotLike(String value) {
            addCriterion("songURL not like", value, "songurl");
            return (Criteria) this;
        }

        public Criteria andSongurlIn(List<String> values) {
            addCriterion("songURL in", values, "songurl");
            return (Criteria) this;
        }

        public Criteria andSongurlNotIn(List<String> values) {
            addCriterion("songURL not in", values, "songurl");
            return (Criteria) this;
        }

        public Criteria andSongurlBetween(String value1, String value2) {
            addCriterion("songURL between", value1, value2, "songurl");
            return (Criteria) this;
        }

        public Criteria andSongurlNotBetween(String value1, String value2) {
            addCriterion("songURL not between", value1, value2, "songurl");
            return (Criteria) this;
        }

        public Criteria andTimeIsNull() {
            addCriterion("time is null");
            return (Criteria) this;
        }

        public Criteria andTimeIsNotNull() {
            addCriterion("time is not null");
            return (Criteria) this;
        }

        public Criteria andTimeEqualTo(Date value) {
            addCriterion("time =", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeNotEqualTo(Date value) {
            addCriterion("time <>", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeGreaterThan(Date value) {
            addCriterion("time >", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("time >=", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeLessThan(Date value) {
            addCriterion("time <", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeLessThanOrEqualTo(Date value) {
            addCriterion("time <=", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeIn(List<Date> values) {
            addCriterion("time in", values, "time");
            return (Criteria) this;
        }

        public Criteria andTimeNotIn(List<Date> values) {
            addCriterion("time not in", values, "time");
            return (Criteria) this;
        }

        public Criteria andTimeBetween(Date value1, Date value2) {
            addCriterion("time between", value1, value2, "time");
            return (Criteria) this;
        }

        public Criteria andTimeNotBetween(Date value1, Date value2) {
            addCriterion("time not between", value1, value2, "time");
            return (Criteria) this;
        }

        public Criteria andMusictimeIsNull() {
            addCriterion("musicTime is null");
            return (Criteria) this;
        }

        public Criteria andMusictimeIsNotNull() {
            addCriterion("musicTime is not null");
            return (Criteria) this;
        }

        public Criteria andMusictimeEqualTo(String value) {
            addCriterion("musicTime =", value, "musictime");
            return (Criteria) this;
        }

        public Criteria andMusictimeNotEqualTo(String value) {
            addCriterion("musicTime <>", value, "musictime");
            return (Criteria) this;
        }

        public Criteria andMusictimeGreaterThan(String value) {
            addCriterion("musicTime >", value, "musictime");
            return (Criteria) this;
        }

        public Criteria andMusictimeGreaterThanOrEqualTo(String value) {
            addCriterion("musicTime >=", value, "musictime");
            return (Criteria) this;
        }

        public Criteria andMusictimeLessThan(String value) {
            addCriterion("musicTime <", value, "musictime");
            return (Criteria) this;
        }

        public Criteria andMusictimeLessThanOrEqualTo(String value) {
            addCriterion("musicTime <=", value, "musictime");
            return (Criteria) this;
        }

        public Criteria andMusictimeLike(String value) {
            addCriterion("musicTime like", value, "musictime");
            return (Criteria) this;
        }

        public Criteria andMusictimeNotLike(String value) {
            addCriterion("musicTime not like", value, "musictime");
            return (Criteria) this;
        }

        public Criteria andMusictimeIn(List<String> values) {
            addCriterion("musicTime in", values, "musictime");
            return (Criteria) this;
        }

        public Criteria andMusictimeNotIn(List<String> values) {
            addCriterion("musicTime not in", values, "musictime");
            return (Criteria) this;
        }

        public Criteria andMusictimeBetween(String value1, String value2) {
            addCriterion("musicTime between", value1, value2, "musictime");
            return (Criteria) this;
        }

        public Criteria andMusictimeNotBetween(String value1, String value2) {
            addCriterion("musicTime not between", value1, value2, "musictime");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}