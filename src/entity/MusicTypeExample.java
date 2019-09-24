package entity;

import java.util.ArrayList;
import java.util.List;

public class MusicTypeExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public MusicTypeExample() {
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

        public Criteria andMusictypenameIsNull() {
            addCriterion("musicTypeName is null");
            return (Criteria) this;
        }

        public Criteria andMusictypenameIsNotNull() {
            addCriterion("musicTypeName is not null");
            return (Criteria) this;
        }

        public Criteria andMusictypenameEqualTo(String value) {
            addCriterion("musicTypeName =", value, "musictypename");
            return (Criteria) this;
        }

        public Criteria andMusictypenameNotEqualTo(String value) {
            addCriterion("musicTypeName <>", value, "musictypename");
            return (Criteria) this;
        }

        public Criteria andMusictypenameGreaterThan(String value) {
            addCriterion("musicTypeName >", value, "musictypename");
            return (Criteria) this;
        }

        public Criteria andMusictypenameGreaterThanOrEqualTo(String value) {
            addCriterion("musicTypeName >=", value, "musictypename");
            return (Criteria) this;
        }

        public Criteria andMusictypenameLessThan(String value) {
            addCriterion("musicTypeName <", value, "musictypename");
            return (Criteria) this;
        }

        public Criteria andMusictypenameLessThanOrEqualTo(String value) {
            addCriterion("musicTypeName <=", value, "musictypename");
            return (Criteria) this;
        }

        public Criteria andMusictypenameLike(String value) {
            addCriterion("musicTypeName like", value, "musictypename");
            return (Criteria) this;
        }

        public Criteria andMusictypenameNotLike(String value) {
            addCriterion("musicTypeName not like", value, "musictypename");
            return (Criteria) this;
        }

        public Criteria andMusictypenameIn(List<String> values) {
            addCriterion("musicTypeName in", values, "musictypename");
            return (Criteria) this;
        }

        public Criteria andMusictypenameNotIn(List<String> values) {
            addCriterion("musicTypeName not in", values, "musictypename");
            return (Criteria) this;
        }

        public Criteria andMusictypenameBetween(String value1, String value2) {
            addCriterion("musicTypeName between", value1, value2, "musictypename");
            return (Criteria) this;
        }

        public Criteria andMusictypenameNotBetween(String value1, String value2) {
            addCriterion("musicTypeName not between", value1, value2, "musictypename");
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