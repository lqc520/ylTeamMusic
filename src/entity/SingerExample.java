package entity;

import java.util.ArrayList;
import java.util.List;

public class SingerExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public SingerExample() {
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

        public Criteria andSingernameIsNull() {
            addCriterion("singerName is null");
            return (Criteria) this;
        }

        public Criteria andSingernameIsNotNull() {
            addCriterion("singerName is not null");
            return (Criteria) this;
        }

        public Criteria andSingernameEqualTo(String value) {
            addCriterion("singerName =", value, "singername");
            return (Criteria) this;
        }

        public Criteria andSingernameNotEqualTo(String value) {
            addCriterion("singerName <>", value, "singername");
            return (Criteria) this;
        }

        public Criteria andSingernameGreaterThan(String value) {
            addCriterion("singerName >", value, "singername");
            return (Criteria) this;
        }

        public Criteria andSingernameGreaterThanOrEqualTo(String value) {
            addCriterion("singerName >=", value, "singername");
            return (Criteria) this;
        }

        public Criteria andSingernameLessThan(String value) {
            addCriterion("singerName <", value, "singername");
            return (Criteria) this;
        }

        public Criteria andSingernameLessThanOrEqualTo(String value) {
            addCriterion("singerName <=", value, "singername");
            return (Criteria) this;
        }

        public Criteria andSingernameLike(String value) {
            addCriterion("singerName like", value, "singername");
            return (Criteria) this;
        }

        public Criteria andSingernameNotLike(String value) {
            addCriterion("singerName not like", value, "singername");
            return (Criteria) this;
        }

        public Criteria andSingernameIn(List<String> values) {
            addCriterion("singerName in", values, "singername");
            return (Criteria) this;
        }

        public Criteria andSingernameNotIn(List<String> values) {
            addCriterion("singerName not in", values, "singername");
            return (Criteria) this;
        }

        public Criteria andSingernameBetween(String value1, String value2) {
            addCriterion("singerName between", value1, value2, "singername");
            return (Criteria) this;
        }

        public Criteria andSingernameNotBetween(String value1, String value2) {
            addCriterion("singerName not between", value1, value2, "singername");
            return (Criteria) this;
        }

        public Criteria andSingerphotourlIsNull() {
            addCriterion("singerPhotoURL is null");
            return (Criteria) this;
        }

        public Criteria andSingerphotourlIsNotNull() {
            addCriterion("singerPhotoURL is not null");
            return (Criteria) this;
        }

        public Criteria andSingerphotourlEqualTo(String value) {
            addCriterion("singerPhotoURL =", value, "singerphotourl");
            return (Criteria) this;
        }

        public Criteria andSingerphotourlNotEqualTo(String value) {
            addCriterion("singerPhotoURL <>", value, "singerphotourl");
            return (Criteria) this;
        }

        public Criteria andSingerphotourlGreaterThan(String value) {
            addCriterion("singerPhotoURL >", value, "singerphotourl");
            return (Criteria) this;
        }

        public Criteria andSingerphotourlGreaterThanOrEqualTo(String value) {
            addCriterion("singerPhotoURL >=", value, "singerphotourl");
            return (Criteria) this;
        }

        public Criteria andSingerphotourlLessThan(String value) {
            addCriterion("singerPhotoURL <", value, "singerphotourl");
            return (Criteria) this;
        }

        public Criteria andSingerphotourlLessThanOrEqualTo(String value) {
            addCriterion("singerPhotoURL <=", value, "singerphotourl");
            return (Criteria) this;
        }

        public Criteria andSingerphotourlLike(String value) {
            addCriterion("singerPhotoURL like", value, "singerphotourl");
            return (Criteria) this;
        }

        public Criteria andSingerphotourlNotLike(String value) {
            addCriterion("singerPhotoURL not like", value, "singerphotourl");
            return (Criteria) this;
        }

        public Criteria andSingerphotourlIn(List<String> values) {
            addCriterion("singerPhotoURL in", values, "singerphotourl");
            return (Criteria) this;
        }

        public Criteria andSingerphotourlNotIn(List<String> values) {
            addCriterion("singerPhotoURL not in", values, "singerphotourl");
            return (Criteria) this;
        }

        public Criteria andSingerphotourlBetween(String value1, String value2) {
            addCriterion("singerPhotoURL between", value1, value2, "singerphotourl");
            return (Criteria) this;
        }

        public Criteria andSingerphotourlNotBetween(String value1, String value2) {
            addCriterion("singerPhotoURL not between", value1, value2, "singerphotourl");
            return (Criteria) this;
        }

        public Criteria andSingerhotIsNull() {
            addCriterion("singerHot is null");
            return (Criteria) this;
        }

        public Criteria andSingerhotIsNotNull() {
            addCriterion("singerHot is not null");
            return (Criteria) this;
        }

        public Criteria andSingerhotEqualTo(Integer value) {
            addCriterion("singerHot =", value, "singerhot");
            return (Criteria) this;
        }

        public Criteria andSingerhotNotEqualTo(Integer value) {
            addCriterion("singerHot <>", value, "singerhot");
            return (Criteria) this;
        }

        public Criteria andSingerhotGreaterThan(Integer value) {
            addCriterion("singerHot >", value, "singerhot");
            return (Criteria) this;
        }

        public Criteria andSingerhotGreaterThanOrEqualTo(Integer value) {
            addCriterion("singerHot >=", value, "singerhot");
            return (Criteria) this;
        }

        public Criteria andSingerhotLessThan(Integer value) {
            addCriterion("singerHot <", value, "singerhot");
            return (Criteria) this;
        }

        public Criteria andSingerhotLessThanOrEqualTo(Integer value) {
            addCriterion("singerHot <=", value, "singerhot");
            return (Criteria) this;
        }

        public Criteria andSingerhotIn(List<Integer> values) {
            addCriterion("singerHot in", values, "singerhot");
            return (Criteria) this;
        }

        public Criteria andSingerhotNotIn(List<Integer> values) {
            addCriterion("singerHot not in", values, "singerhot");
            return (Criteria) this;
        }

        public Criteria andSingerhotBetween(Integer value1, Integer value2) {
            addCriterion("singerHot between", value1, value2, "singerhot");
            return (Criteria) this;
        }

        public Criteria andSingerhotNotBetween(Integer value1, Integer value2) {
            addCriterion("singerHot not between", value1, value2, "singerhot");
            return (Criteria) this;
        }

        public Criteria andTypeidIsNull() {
            addCriterion("typeId is null");
            return (Criteria) this;
        }

        public Criteria andTypeidIsNotNull() {
            addCriterion("typeId is not null");
            return (Criteria) this;
        }

        public Criteria andTypeidEqualTo(Integer value) {
            addCriterion("typeId =", value, "typeid");
            return (Criteria) this;
        }

        public Criteria andTypeidNotEqualTo(Integer value) {
            addCriterion("typeId <>", value, "typeid");
            return (Criteria) this;
        }

        public Criteria andTypeidGreaterThan(Integer value) {
            addCriterion("typeId >", value, "typeid");
            return (Criteria) this;
        }

        public Criteria andTypeidGreaterThanOrEqualTo(Integer value) {
            addCriterion("typeId >=", value, "typeid");
            return (Criteria) this;
        }

        public Criteria andTypeidLessThan(Integer value) {
            addCriterion("typeId <", value, "typeid");
            return (Criteria) this;
        }

        public Criteria andTypeidLessThanOrEqualTo(Integer value) {
            addCriterion("typeId <=", value, "typeid");
            return (Criteria) this;
        }

        public Criteria andTypeidIn(List<Integer> values) {
            addCriterion("typeId in", values, "typeid");
            return (Criteria) this;
        }

        public Criteria andTypeidNotIn(List<Integer> values) {
            addCriterion("typeId not in", values, "typeid");
            return (Criteria) this;
        }

        public Criteria andTypeidBetween(Integer value1, Integer value2) {
            addCriterion("typeId between", value1, value2, "typeid");
            return (Criteria) this;
        }

        public Criteria andTypeidNotBetween(Integer value1, Integer value2) {
            addCriterion("typeId not between", value1, value2, "typeid");
            return (Criteria) this;
        }

        public Criteria andAddressIsNull() {
            addCriterion("address is null");
            return (Criteria) this;
        }

        public Criteria andAddressIsNotNull() {
            addCriterion("address is not null");
            return (Criteria) this;
        }

        public Criteria andAddressEqualTo(String value) {
            addCriterion("address =", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotEqualTo(String value) {
            addCriterion("address <>", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressGreaterThan(String value) {
            addCriterion("address >", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressGreaterThanOrEqualTo(String value) {
            addCriterion("address >=", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressLessThan(String value) {
            addCriterion("address <", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressLessThanOrEqualTo(String value) {
            addCriterion("address <=", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressLike(String value) {
            addCriterion("address like", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotLike(String value) {
            addCriterion("address not like", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressIn(List<String> values) {
            addCriterion("address in", values, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotIn(List<String> values) {
            addCriterion("address not in", values, "address");
            return (Criteria) this;
        }

        public Criteria andAddressBetween(String value1, String value2) {
            addCriterion("address between", value1, value2, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotBetween(String value1, String value2) {
            addCriterion("address not between", value1, value2, "address");
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