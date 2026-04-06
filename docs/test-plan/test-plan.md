# DEPI Graduation Project  
## Automated Testing Framework for a Web Application

---

## 📄 Document Info

| Field | Value |
|------|------|
| Test Plan ID | TP-DEPI-001 |
| Project Name | DEPI Automated Testing Framework |
| Prepared By | Team QC Engineers |
| Date | April 2025 |
| Version | 1.0 |
| Status | Active |

---

## 🌐 Testing Websites

| Website | URL / Purpose |
|--------|-------------|
| Automation Exercise | https://automationexercise.com — Manual, API & Automation Testing |
| OpenCart Demo | https://demo.opencart.com — Database (MySQL) Testing |

---

## 👥 Team Members

| Name | Role |
|------|------|
| Hassan Yehia Hassan Aboalersahd | Team Leader / QC Engineer |
| Ahemd Mahmoud Ahmed | QC Engineer |
| Hatem Ashraf Abdel Tawab Abdel Hamid | QC Engineer |
| Mohamed Essam Ahmed Salem | QC Engineer |
| Ziad Mahmoud Ahmed Ali Mostafa | QC Engineer |

---

## 1. Introduction

This Test Plan governs the design, development, and execution of an automated testing framework for a web application as part of the DEPI Graduation Project.

The framework covers end-to-end validation across UI, API, Database, and Performance layers using industry-standard tools and Agile Scrum practices.

### Target Websites:
- Automation Exercise: https://automationexercise.com  
- OpenCart Demo: https://demo.opencart.com  

The testing effort is organized across four sprints following Agile Scrum methodology.

---

## 2. Objectives

- Verify full functional coverage of Automation Exercise (user management, products, cart, checkout, APIs)
- Validate database integrity on OpenCart using MySQL (CRUD operations + JOINs)
- Build scalable automation framework using Page Object Model (POM)
- Implement API testing using Postman + Newman
- Apply BDD using Cucumber + Gherkin
- Track defects using Jira (severity & priority)
- Integrate CI/CD using Jenkins
- Perform performance testing using JMeter
- Generate detailed test reports per sprint

---

## 3. Scope

### 3.1 In Scope

| Testing Type | Covered Features |
|-------------|----------------|
| Manual Testing (UI) | Registration, Login, Logout, Products, Cart, Checkout, Contact, Subscription |
| API Testing | 26+ endpoints (GET, POST, PUT, DELETE) |
| Database Testing | OpenCart DB validation after CRUD |
| Automation Testing | Selenium + POM UI flows |
| BDD | Gherkin scenarios mapped to automation |
| Performance Testing | Load & stress testing |
| CI/CD | Jenkins pipeline execution |
| Defect Management | Jira tracking |

---

### 3.2 Out of Scope

- Security / Penetration testing  
- Payment gateway testing  
- Mobile app testing  
- Third-party OAuth / SSO  
- Accessibility testing  

---

## 4. Test Items

### 4.1 Automation Exercise

| Module | Features |
|--------|--------|
| Registration | Valid, duplicate, blank, mismatch |
| Login | Valid/invalid, session handling |
| Delete Account | Confirmation, session end |
| Products | Categories, details, images |
| Search | Keyword, partial, no results |
| Cart | Add, update, remove |
| Checkout | Address, payment, confirmation |
| Contact | Form validation, file upload |
| Subscription | Email confirmation |
| APIs | Response, payload, errors |

---

### 4.2 OpenCart Database

| Area | Validation |
|-----|----------|
| Users | INSERT, UPDATE verification |
| Products | Price & stock integrity |
| Orders | JOIN validation |
| Data Integrity | Constraints & NULL checks |

---

## 5. Test Approach

### 5.1 Testing Types

| Type | Tools | Details |
|-----|------|--------|
| Manual | Jira | Functional & exploratory |
| UI Automation | Selenium + Java | POM + TestNG |
| API | Postman / Newman | Assertions |
| Database | MySQL | SQL validation |
| BDD | Cucumber | Feature files |
| Performance | JMeter | Load & stress |
| CI/CD | Jenkins | Automation pipeline |

---

### 5.2 Techniques

- Black-box testing  
- Equivalence Partitioning  
- Boundary Value Analysis  
- State Transition Testing  
- Exploratory Testing  
- Decision Table Testing  

---

### 5.3 Test Levels

| Level | Scope | Responsible |
|------|------|------------|
| Unit | Helper classes | Dev |
| Integration | API + DB | QC |
| System | End-to-end | Team |
| Acceptance | Final scenarios | Leader |

---

## 6. Test Environment

| Item | Details |
|-----|--------|
| OS | Windows 11 |
| Browsers | Chrome, Brave, Edge |
| Language | Java 17+ |
| Framework | Selenium, TestNG, Cucumber |
| API Tool | Postman + Newman |
| DB Tool | MySQL |
| CI/CD | Jenkins |
| Version Control | GitHub |
| Bug Tracking | Jira |

---

## 7. Test Data

### 7.1 User Data

| Field | Valid | Invalid |
|------|------|--------|
| Email | valid@email.com | invalid |
| Password | Test@1234 | weak |
| Name | Ahmed | blank |

---

### 7.2 API Data

- Valid & invalid IDs  
- Empty values  
- Wrong data types  
- JSON payload variations  

---

### 7.3 Database

- Verify INSERT, UPDATE, DELETE  
- Validate JOINs  
- Ensure constraints  

---

## 8. Entry & Exit Criteria

### Entry
- Environment ready  
- Tools configured  
- Repo created  
- Dependencies installed  

### Exit
- 100% test execution  
- Critical bugs resolved  
- Coverage ≥ 90%  
- Automation pass ≥ 85%  
- CI/CD successful  

---

## 9. Sprint Plan

### Sprint 1
- Setup project  
- Define scope  
- Create repo & Jira  

### Sprint 2
- Design test cases  
- Start automation  
- Write BDD  

### Sprint 3
- Implement tools  
- API + DB testing  
- Expand automation  

### Sprint 4
- Execute tests  
- CI/CD integration  
- Final reports  

---

## 10. Agile Practices

### Daily Standup
- Yesterday  
- Today  
- Blockers  

### Retrospective
- What went well  
- What to improve  

---

## 11. Tools

| Tool | Purpose |
|-----|--------|
| Selenium | UI Automation |
| TestNG | Test runner |
| Cucumber | BDD |
| Postman | API |
| Newman | CI API |
| JMeter | Performance |
| MySQL | Database |
| Jenkins | CI/CD |
| Jira | Bug tracking |
| GitHub | Version control |

---

## 12. Deliverables

| Sprint | Deliverable |
|------|------------|
| 1 | Test Plan + Setup |
| 2 | Test Cases + Framework |
| 3 | API + DB + Automation |
| 4 | Reports + CI/CD |

---

## 13. Risks

| Risk | Impact | Mitigation |
|-----|-------|-----------|
| Website downtime | High | Retry |
| Dynamic locators | High | Stable selectors |
| Data reset | Medium | Recreate data |
| Jenkins complexity | Low | Documentation |

---

## 14. Schedule

| Activity | Sprint |
|---------|-------|
| Planning | 1 |
| Design | 2 |
| Implementation | 3 |
| Execution | 4 |
