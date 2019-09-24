package entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class VideoExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public VideoExample() {
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

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andVideoidIsNull() {
            addCriterion("videoId is null");
            return (Criteria) this;
        }

        public Criteria andVideoidIsNotNull() {
            addCriterion("videoId is not null");
            return (Criteria) this;
        }

        public Criteria andVideoidEqualTo(Integer value) {
            addCriterion("videoId =", value, "videoid");
            return (Criteria) this;
        }

        public Criteria andVideoidNotEqualTo(Integer value) {
            addCriterion("videoId <>", value, "videoid");
            return (Criteria) this;
        }

        public Criteria andVideoidGreaterThan(Integer value) {
            addCriterion("videoId >", value, "videoid");
            return (Criteria) this;
        }

        public Criteria andVideoidGreaterThanOrEqualTo(Integer value) {
            addCriterion("videoId >=", value, "videoid");
            return (Criteria) this;
        }

        public Criteria andVideoidLessThan(Integer value) {
            addCriterion("videoId <", value, "videoid");
            return (Criteria) this;
        }

        public Criteria andVideoidLessThanOrEqualTo(Integer value) {
            addCriterion("videoId <=", value, "videoid");
            return (Criteria) this;
        }

        public Criteria andVideoidIn(List<Integer> values) {
            addCriterion("videoId in", values, "videoid");
            return (Criteria) this;
        }

        public Criteria andVideoidNotIn(List<Integer> values) {
            addCriterion("videoId not in", values, "videoid");
            return (Criteria) this;
        }

        public Criteria andVideoidBetween(Integer value1, Integer value2) {
            addCriterion("videoId between", value1, value2, "videoid");
            return (Criteria) this;
        }

        public Criteria andVideoidNotBetween(Integer value1, Integer value2) {
            addCriterion("videoId not between", value1, value2, "videoid");
            return (Criteria) this;
        }

        public Criteria andVideonameIsNull() {
            addCriterion("videoName is null");
            return (Criteria) this;
        }

        public Criteria andVideonameIsNotNull() {
            addCriterion("videoName is not null");
            return (Criteria) this;
        }

        public Criteria andVideonameEqualTo(String value) {
            addCriterion("videoName =", value, "videoname");
            return (Criteria) this;
        }

        public Criteria andVideonameNotEqualTo(String value) {
            addCriterion("videoName <>", value, "videoname");
            return (Criteria) this;
        }

        public Criteria andVideonameGreaterThan(String value) {
            addCriterion("videoName >", value, "videoname");
            return (Criteria) this;
        }

        public Criteria andVideonameGreaterThanOrEqualTo(String value) {
            addCriterion("videoName >=", value, "videoname");
            return (Criteria) this;
        }

        public Criteria andVideonameLessThan(String value) {
            addCriterion("videoName <", value, "videoname");
            return (Criteria) this;
        }

        public Criteria andVideonameLessThanOrEqualTo(String value) {
            addCriterion("videoName <=", value, "videoname");
            return (Criteria) this;
        }

        public Criteria andVideonameLike(String value) {
            addCriterion("videoName like", value, "videoname");
            return (Criteria) this;
        }

        public Criteria andVideonameNotLike(String value) {
            addCriterion("videoName not like", value, "videoname");
            return (Criteria) this;
        }

        public Criteria andVideonameIn(List<String> values) {
            addCriterion("videoName in", values, "videoname");
            return (Criteria) this;
        }

        public Criteria andVideonameNotIn(List<String> values) {
            addCriterion("videoName not in", values, "videoname");
            return (Criteria) this;
        }

        public Criteria andVideonameBetween(String value1, String value2) {
            addCriterion("videoName between", value1, value2, "videoname");
            return (Criteria) this;
        }

        public Criteria andVideonameNotBetween(String value1, String value2) {
            addCriterion("videoName not between", value1, value2, "videoname");
            return (Criteria) this;
        }

        public Criteria andVideoauthorIsNull() {
            addCriterion("videoAuthor is null");
            return (Criteria) this;
        }

        public Criteria andVideoauthorIsNotNull() {
            addCriterion("videoAuthor is not null");
            return (Criteria) this;
        }

        public Criteria andVideoauthorEqualTo(String value) {
            addCriterion("videoAuthor =", value, "videoauthor");
            return (Criteria) this;
        }

        public Criteria andVideoauthorNotEqualTo(String value) {
            addCriterion("videoAuthor <>", value, "videoauthor");
            return (Criteria) this;
        }

        public Criteria andVideoauthorGreaterThan(String value) {
            addCriterion("videoAuthor >", value, "videoauthor");
            return (Criteria) this;
        }

        public Criteria andVideoauthorGreaterThanOrEqualTo(String value) {
            addCriterion("videoAuthor >=", value, "videoauthor");
            return (Criteria) this;
        }

        public Criteria andVideoauthorLessThan(String value) {
            addCriterion("videoAuthor <", value, "videoauthor");
            return (Criteria) this;
        }

        public Criteria andVideoauthorLessThanOrEqualTo(String value) {
            addCriterion("videoAuthor <=", value, "videoauthor");
            return (Criteria) this;
        }

        public Criteria andVideoauthorLike(String value) {
            addCriterion("videoAuthor like", value, "videoauthor");
            return (Criteria) this;
        }

        public Criteria andVideoauthorNotLike(String value) {
            addCriterion("videoAuthor not like", value, "videoauthor");
            return (Criteria) this;
        }

        public Criteria andVideoauthorIn(List<String> values) {
            addCriterion("videoAuthor in", values, "videoauthor");
            return (Criteria) this;
        }

        public Criteria andVideoauthorNotIn(List<String> values) {
            addCriterion("videoAuthor not in", values, "videoauthor");
            return (Criteria) this;
        }

        public Criteria andVideoauthorBetween(String value1, String value2) {
            addCriterion("videoAuthor between", value1, value2, "videoauthor");
            return (Criteria) this;
        }

        public Criteria andVideoauthorNotBetween(String value1, String value2) {
            addCriterion("videoAuthor not between", value1, value2, "videoauthor");
            return (Criteria) this;
        }

        public Criteria andVideophotoIsNull() {
            addCriterion("videoPhoto is null");
            return (Criteria) this;
        }

        public Criteria andVideophotoIsNotNull() {
            addCriterion("videoPhoto is not null");
            return (Criteria) this;
        }

        public Criteria andVideophotoEqualTo(String value) {
            addCriterion("videoPhoto =", value, "videophoto");
            return (Criteria) this;
        }

        public Criteria andVideophotoNotEqualTo(String value) {
            addCriterion("videoPhoto <>", value, "videophoto");
            return (Criteria) this;
        }

        public Criteria andVideophotoGreaterThan(String value) {
            addCriterion("videoPhoto >", value, "videophoto");
            return (Criteria) this;
        }

        public Criteria andVideophotoGreaterThanOrEqualTo(String value) {
            addCriterion("videoPhoto >=", value, "videophoto");
            return (Criteria) this;
        }

        public Criteria andVideophotoLessThan(String value) {
            addCriterion("videoPhoto <", value, "videophoto");
            return (Criteria) this;
        }

        public Criteria andVideophotoLessThanOrEqualTo(String value) {
            addCriterion("videoPhoto <=", value, "videophoto");
            return (Criteria) this;
        }

        public Criteria andVideophotoLike(String value) {
            addCriterion("videoPhoto like", value, "videophoto");
            return (Criteria) this;
        }

        public Criteria andVideophotoNotLike(String value) {
            addCriterion("videoPhoto not like", value, "videophoto");
            return (Criteria) this;
        }

        public Criteria andVideophotoIn(List<String> values) {
            addCriterion("videoPhoto in", values, "videophoto");
            return (Criteria) this;
        }

        public Criteria andVideophotoNotIn(List<String> values) {
            addCriterion("videoPhoto not in", values, "videophoto");
            return (Criteria) this;
        }

        public Criteria andVideophotoBetween(String value1, String value2) {
            addCriterion("videoPhoto between", value1, value2, "videophoto");
            return (Criteria) this;
        }

        public Criteria andVideophotoNotBetween(String value1, String value2) {
            addCriterion("videoPhoto not between", value1, value2, "videophoto");
            return (Criteria) this;
        }

        public Criteria andVideourlIsNull() {
            addCriterion("videoURL is null");
            return (Criteria) this;
        }

        public Criteria andVideourlIsNotNull() {
            addCriterion("videoURL is not null");
            return (Criteria) this;
        }

        public Criteria andVideourlEqualTo(String value) {
            addCriterion("videoURL =", value, "videourl");
            return (Criteria) this;
        }

        public Criteria andVideourlNotEqualTo(String value) {
            addCriterion("videoURL <>", value, "videourl");
            return (Criteria) this;
        }

        public Criteria andVideourlGreaterThan(String value) {
            addCriterion("videoURL >", value, "videourl");
            return (Criteria) this;
        }

        public Criteria andVideourlGreaterThanOrEqualTo(String value) {
            addCriterion("videoURL >=", value, "videourl");
            return (Criteria) this;
        }

        public Criteria andVideourlLessThan(String value) {
            addCriterion("videoURL <", value, "videourl");
            return (Criteria) this;
        }

        public Criteria andVideourlLessThanOrEqualTo(String value) {
            addCriterion("videoURL <=", value, "videourl");
            return (Criteria) this;
        }

        public Criteria andVideourlLike(String value) {
            addCriterion("videoURL like", value, "videourl");
            return (Criteria) this;
        }

        public Criteria andVideourlNotLike(String value) {
            addCriterion("videoURL not like", value, "videourl");
            return (Criteria) this;
        }

        public Criteria andVideourlIn(List<String> values) {
            addCriterion("videoURL in", values, "videourl");
            return (Criteria) this;
        }

        public Criteria andVideourlNotIn(List<String> values) {
            addCriterion("videoURL not in", values, "videourl");
            return (Criteria) this;
        }

        public Criteria andVideourlBetween(String value1, String value2) {
            addCriterion("videoURL between", value1, value2, "videourl");
            return (Criteria) this;
        }

        public Criteria andVideourlNotBetween(String value1, String value2) {
            addCriterion("videoURL not between", value1, value2, "videourl");
            return (Criteria) this;
        }

        public Criteria andVideotimeIsNull() {
            addCriterion("videoTime is null");
            return (Criteria) this;
        }

        public Criteria andVideotimeIsNotNull() {
            addCriterion("videoTime is not null");
            return (Criteria) this;
        }

        public Criteria andVideotimeEqualTo(Date value) {
            addCriterionForJDBCDate("videoTime =", value, "videotime");
            return (Criteria) this;
        }

        public Criteria andVideotimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("videoTime <>", value, "videotime");
            return (Criteria) this;
        }

        public Criteria andVideotimeGreaterThan(Date value) {
            addCriterionForJDBCDate("videoTime >", value, "videotime");
            return (Criteria) this;
        }

        public Criteria andVideotimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("videoTime >=", value, "videotime");
            return (Criteria) this;
        }

        public Criteria andVideotimeLessThan(Date value) {
            addCriterionForJDBCDate("videoTime <", value, "videotime");
            return (Criteria) this;
        }

        public Criteria andVideotimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("videoTime <=", value, "videotime");
            return (Criteria) this;
        }

        public Criteria andVideotimeIn(List<Date> values) {
            addCriterionForJDBCDate("videoTime in", values, "videotime");
            return (Criteria) this;
        }

        public Criteria andVideotimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("videoTime not in", values, "videotime");
            return (Criteria) this;
        }

        public Criteria andVideotimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("videoTime between", value1, value2, "videotime");
            return (Criteria) this;
        }

        public Criteria andVideotimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("videoTime not between", value1, value2, "videotime");
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