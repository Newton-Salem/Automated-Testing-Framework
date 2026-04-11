# 🧪 Manual Testing Report

This section contains all manual testing artifacts for the project, including **test cases** and **bug reports**, covering multiple functional modules of the system.

---

## 📊 Test Coverage Summary

Manual testing was executed across five main groups:

---

## 🔹 G1 – User Registration, Authentication & Account Management

- **Total Test Cases:** 17  
- **Passed:** 12  
- **Failed:** 5  

**Coverage:** Positive, negative, boundary, and input validation scenarios.

**Summary:**  
The module is stable in authentication and account management functionalities. However, the registration module contains multiple validation defects related to email format, password strength, and invalid input handling for fields such as name, phone, and ZIP code.

---

## 🔹 G2 – Product Browsing, Search & Filters

- **Total Test Cases:** 13  
- **Passed:** 10  
- **Failed:** 3  

**Summary:**  
The core functionality is working as expected. However, issues were identified in search relevance and UI alignment of product display components, affecting user experience and interface consistency.

---

## 🔹 G3 – Cart Management

- **Total Test Cases:** 13  
- **Passed:** 12  
- **Failed:** 1  

**Summary:**  
The cart module is generally stable. A usability issue was identified where users are unable to update product quantity directly from the cart page.

---

## 🔹 G4 – Checkout, Payment & Order Management

- **Total Test Cases:** 13  
- **Passed:** 10  
- **Failed:** 3  

**Summary:**  
Most functionalities are working correctly. However, issues exist in address auto-fill consistency and payment validation (e.g., invalid CVC values being accepted).

---

## 🔹 G5 – UI, Navigation & Miscellaneous Features

- **Total Test Cases:** 20
- **Passed:** 6
- **Failed:** 12  

**Summary:**  
Testing covered multiple features including login, search, cart, and checkout flows. Results indicate moderate stability with several issues in validation, usability, and UI consistency.

---

# 🐞 Bug Report Summary

---

## 🔸 G1 – User Registration Module

- **Total Bugs:** 5  
- **Severity:** Major / Critical  

**Issues:**
- Invalid email formats are accepted  
- Weak password validation  
- Special characters allowed in name fields  
- Non-numeric values accepted in phone and ZIP code fields  

---

## 🔸 G2 – Product Browsing, Search & Filters

- **Total Bugs:** 3  

**Issues:**
- Irrelevant search results returned for valid keywords  
- UI misalignment in product cards and details sections  

---

## 🔸 G3 – Cart Management

- **Total Bugs:** 1  
- **Severity:** Major  

**Issue:**
- Unable to update product quantity directly from the cart page  

---

## 🔸 G4 – Checkout & Payment Module

- **Total Bugs:** 3  

**Issues:**
- Inconsistent address auto-fill during checkout  
- Payment validation issues (invalid CVC values accepted)  

---

## 🔸 G5 – UI/UX, Validation & Functional Issues

- **Total Bugs:** 12

**Issues:**
- Multiple UI/UX inconsistencies  
- Weak input validation across forms  
- Navigation and usability issues  
- Functional bugs in cart and checkout flows  

---

# 📌 Conclusion

Overall, the system demonstrates **moderate stability** across all modules.

### Key areas requiring improvement:
- Input validation (registration & payment)
- Search accuracy
- UI/UX consistency
- Cart usability enhancements
  
---

# 📁 File Structure

- `manual-tests/test-cases/` → Test Cases  
- `manual-tests/bug-reports/` → Bug Reports  
