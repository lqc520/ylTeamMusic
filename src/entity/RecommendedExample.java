package entity;

import java.util.ArrayList;
import java.util.List;

public class RecommendedExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public RecommendedExample() {
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

        public Criteria andRecommendedidIsNull() {
            addCriterion("recommendedId is null");
            return (Criteria) this;
        }

        public Criteria andRecommendedidIsNotNull() {
            addCriterion("recommendedId is not null");
            return (Criteria) this;
        }

        public Criteria andRecommendedidEqualTo(Integer value) {
            addCriterion("recommendedId =", value, "recommendedid");
            return (Criteria) this;
        }

        public Criteria andRecommendedidNotEqualTo(Integer value) {
            addCriterion("recommendedId <>", value, "recommendedid");
            return (Criteria) this;
        }

        public Criteria andRecommendedidGreaterThan(Integer value) {
            addCriterion("recommendedId >", value, "recommendedid");
            return (Criteria) this;
        }

        public Criteria andRecommendedidGreaterThanOrEqualTo(Integer value) {
            addCriterion("recommendedId >=", value, "recommendedid");
            return (Criteria) this;
        }

        public Criteria andRecommendedidLessThan(Integer value) {
            addCriterion("recommendedId <", value, "recommendedid");
            return (Criteria) this;
        }

        public Criteria andRecommendedidLessThanOrEqualTo(Integer value) {
            addCriterion("recommendedId <=", value, "recommendedid");
            return (Criteria) this;
        }

        public Criteria andRecommendedidIn(List<Integer> values) {
            addCriterion("recommendedId in", values, "recommendedid");
            return (Criteria) this;
        }

        public Criteria andRecommendedidNotIn(List<Integer> values) {
            addCriterion("recommendedId not in", values, "recommendedid");
            return (Criteria) this;
        }

        public Criteria andRecommendedidBetween(Integer value1, Integer value2) {
            addCriterion("recommendedId between", value1, value2, "recommendedid");
            return (Criteria) this;
        }

        public Criteria andRecommendedidNotBetween(Integer value1, Integer value2) {
            addCriterion("recommendedId not between", value1, value2, "recommendedid");
            return (Criteria) this;
        }

        public Criteria andRecommendednameIsNull() {
            addCriterion("recommendedName is null");
            return (Criteria) this;
        }

        public Criteria andRecommendednameIsNotNull() {
            addCriterion("recommendedName is not null");
            return (Criteria) this;
        }

        public Criteria andRecommendednameEqualTo(String value) {
            addCriterion("recommendedName =", value, "recommendedname");
            return (Criteria) this;
        }

        public Criteria andRecommendednameNotEqualTo(String value) {
            addCriterion("recommendedName <>", value, "recommendedname");
            return (Criteria) this;
        }

        public Criteria andRecommendednameGreaterThan(String value) {
            addCriterion("recommendedName >", value, "recommendedname");
            return (Criteria) this;
        }

        public Criteria andRecommendednameGreaterThanOrEqualTo(String value) {
            addCriterion("recommendedName >=", value, "recommendedname");
            return (Criteria) this;
        }

        public Criteria andRecommendednameLessThan(String value) {
            addCriterion("recommendedName <", value, "recommendedname");
            return (Criteria) this;
        }

        public Criteria andRecommendednameLessThanOrEqualTo(String value) {
            addCriterion("recommendedName <=", value, "recommendedname");
            return (Criteria) this;
        }

        public Criteria andRecommendednameLike(String value) {
            addCriterion("recommendedName like", value, "recommendedname");
            return (Criteria) this;
        }

        public Criteria andRecommendednameNotLike(String value) {
            addCriterion("recommendedName not like", value, "recommendedname");
            return (Criteria) this;
        }

        public Criteria andRecommendednameIn(List<String> values) {
            addCriterion("recommendedName in", values, "recommendedname");
            return (Criteria) this;
        }

        public Criteria andRecommendednameNotIn(List<String> values) {
            addCriterion("recommendedName not in", values, "recommendedname");
            return (Criteria) this;
        }

        public Criteria andRecommendednameBetween(String value1, String value2) {
            addCriterion("recommendedName between", value1, value2, "recommendedname");
            return (Criteria) this;
        }

        public Criteria andRecommendednameNotBetween(String value1, String value2) {
            addCriterion("recommendedName not between", value1, value2, "recommendedname");
            return (Criteria) this;
        }

        public Criteria andPhotourlIsNull() {
            addCriterion("photoURL is null");
            return (Criteria) this;
        }

        public Criteria andPhotourlIsNotNull() {
            addCriterion("photoURL is not null");
            return (Criteria) this;
        }

        public Criteria andPhotourlEqualTo(String value) {
            addCriterion("photoURL =", value, "photourl");
            return (Criteria) this;
        }

        public Criteria andPhotourlNotEqualTo(String value) {
            addCriterion("photoURL <>", value, "photourl");
            return (Criteria) this;
        }

        public Criteria andPhotourlGreaterThan(String value) {
            addCriterion("photoURL >", value, "photourl");
            return (Criteria) this;
        }

        public Criteria andPhotourlGreaterThanOrEqualTo(String value) {
            addCriterion("photoURL >=", value, "photourl");
            return (Criteria) this;
        }

        public Criteria andPhotourlLessThan(String value) {
            addCriterion("photoURL <", value, "photourl");
            return (Criteria) this;
        }

        public Criteria andPhotourlLessThanOrEqualTo(String value) {
            addCriterion("photoURL <=", value, "photourl");
            return (Criteria) this;
        }

        public Criteria andPhotourlLike(String value) {
            addCriterion("photoURL like", value, "photourl");
            return (Criteria) this;
        }

        public Criteria andPhotourlNotLike(String value) {
            addCriterion("photoURL not like", value, "photourl");
            return (Criteria) this;
        }

        public Criteria andPhotourlIn(List<String> values) {
            addCriterion("photoURL in", values, "photourl");
            return (Criteria) this;
        }

        public Criteria andPhotourlNotIn(List<String> values) {
            addCriterion("photoURL not in", values, "photourl");
            return (Criteria) this;
        }

        public Criteria andPhotourlBetween(String value1, String value2) {
            addCriterion("photoURL between", value1, value2, "photourl");
            return (Criteria) this;
        }

        public Criteria andPhotourlNotBetween(String value1, String value2) {
            addCriterion("photoURL not between", value1, value2, "photourl");
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