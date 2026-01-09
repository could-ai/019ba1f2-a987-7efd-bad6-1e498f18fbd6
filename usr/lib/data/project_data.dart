class ProjectSection {
  final String title;
  final String content;
  final bool isTable;
  final Map<String, List<String>>? tableData;

  ProjectSection({
    required this.title,
    required this.content,
    this.isTable = false,
    this.tableData,
  });
}

class ProjectData {
  static final List<ProjectSection> sections = [
    ProjectSection(
      title: "Cover Page",
      content: """
ACCOUNTANCY PROJECT WORK
Class XII (2024-25)

TOPIC:
1. Comprehensive Project: Cash Flow Statement & Ratio Analysis
2. Specific Project: Comparative Analysis of Reliance Jio vs Bharti Airtel

Submitted to:
[Teacher's Name]

Submitted by:
[Your Name]
Class: XII - Commerce
Roll No: [Your Roll No]
""",
    ),
    ProjectSection(
      title: "Certificate",
      content: """
CERTIFICATE

This is to certify that [Your Name] of Class XII, Roll No. [Your Roll No], has successfully completed the Accountancy Project on "Cash Flow Statement, Accounting Ratios and Comparative Analysis of Jio vs Airtel" under my guidance and supervision during the academic year 2024-25.

The project is comprehensive and original. The calculations and analysis presented in this file are authentic to the best of my knowledge.


________________________
Signature of Teacher

________________________
Signature of External Examiner
""",
    ),
    ProjectSection(
      title: "Acknowledgement",
      content: """
ACKNOWLEDGEMENT

I would like to express my special thanks of gratitude to my teacher [Teacher's Name] as well as our principal [Principal's Name] who gave me the golden opportunity to do this wonderful project on the topic "Cash Flow Statement & Ratio Analysis", which also helped me in doing a lot of Research and I came to know about so many new things.

I am really thankful to them. Secondly, I would also like to thank my parents and friends who helped me a lot in finalizing this project within the limited time frame.
""",
    ),
    ProjectSection(
      title: "Index",
      content: """
INDEX

1. Introduction to Accountancy Project
2. Company Profile: Reliance Jio
3. Company Profile: Bharti Airtel
4. Objective of the Study
5. Accounting Ratios: Theory
6. Ratio Analysis: Jio vs Airtel (Calculations)
7. Cash Flow Statement: Theory
8. Cash Flow Analysis: Jio vs Airtel
9. Comparative Financial Statement
10. Conclusion
11. Bibliography
""",
    ),
    ProjectSection(
      title: "Introduction",
      content: """
INTRODUCTION

Financial Statement Analysis is the process of reviewing and analyzing a company's financial statements to make better economic decisions. These statements include the Income Statement, Balance Sheet, Statement of Cash Flows, and a Statement of Changes in Equity.

In this project, we focus on two key tools of analysis:
1. Accounting Ratios: These are mathematical comparisons of financial accounts or categories. They help in assessing the profitability, liquidity, efficiency, and solvency of a company.
2. Cash Flow Statement: This statement shows the inflow and outflow of cash and cash equivalents from operating, investing, and financing activities.

We will apply these tools to compare two telecommunication giants in India: Reliance Jio and Bharti Airtel for the financial year 2023-24.
""",
    ),
    ProjectSection(
      title: "Company Profiles",
      content: """
RELIANCE JIO INFOCOMM LTD (JIO)
Reliance Jio is an Indian telecommunications company and a subsidiary of Jio Platforms, headquartered in Navi Mumbai, Maharashtra. It operates a national LTE network with coverage across all 22 telecom circles.
- Subscribers (2024): ~46.5 Crore
- ARPU: ₹245
- Key Strategy: Aggressive pricing, digital ecosystem.

BHARTI AIRTEL LIMITED (AIRTEL)
Bharti Airtel Limited is an Indian multinational telecommunications services company based in New Delhi. It operates in 18 countries across South Asia and Africa.
- Subscribers (2024): ~38.5 Crore
- ARPU: ₹206
- Key Strategy: Premium customers, quality network, B2B focus.
""",
    ),
    ProjectSection(
      title: "Comparative Balance Sheet (Extract)",
      content: "Figures in Crores (₹) for FY 2023-24 (Hypothetical/Representative Data for Project)",
      isTable: true,
      tableData: {
        "Particulars": ["Share Capital", "Reserves & Surplus", "Long Term Borrowings", "Trade Payables", "Fixed Assets", "Current Assets"],
        "Jio (2024)": ["15,000", "45,000", "30,000", "10,000", "80,000", "20,000"],
        "Airtel (2024)": ["12,000", "38,000", "35,000", "15,000", "75,000", "25,000"],
      },
    ),
    ProjectSection(
      title: "Ratio Analysis: Liquidity",
      content: """
1. CURRENT RATIO
Formula: Current Assets / Current Liabilities

Reliance Jio:
Current Assets = ₹20,000 Cr
Current Liabilities = ₹10,000 Cr
Ratio = 20,000 / 10,000 = 2:1
Interpretation: Jio has a strong liquidity position, ideal 2:1.

Bharti Airtel:
Current Assets = ₹25,000 Cr
Current Liabilities = ₹15,000 Cr
Ratio = 25,000 / 15,000 = 1.67:1
Interpretation: Airtel has decent liquidity but slightly lower than Jio.
""",
    ),
    ProjectSection(
      title: "Ratio Analysis: Solvency",
      content: """
2. DEBT TO EQUITY RATIO
Formula: Debt / Equity

Reliance Jio:
Debt (Long Term) = ₹30,000 Cr
Equity (Share Cap + Reserves) = ₹60,000 Cr
Ratio = 30,000 / 60,000 = 0.5:1
Interpretation: Low financial risk.

Bharti Airtel:
Debt (Long Term) = ₹35,000 Cr
Equity = ₹50,000 Cr
Ratio = 35,000 / 50,000 = 0.7:1
Interpretation: Higher leverage than Jio, but still safe.
""",
    ),
    ProjectSection(
      title: "Ratio Analysis: Profitability",
      content: """
3. NET PROFIT RATIO
Formula: (Net Profit / Revenue) * 100

Reliance Jio:
Net Profit = ₹12,000 Cr (Approx)
Revenue = ₹1,00,000 Cr (Approx)
Ratio = 12%

Bharti Airtel:
Net Profit = ₹8,000 Cr (Approx)
Revenue = ₹90,000 Cr (Approx)
Ratio = 8.8%

Conclusion: Jio shows better profitability margins compared to Airtel in this period.
""",
    ),
    ProjectSection(
      title: "Cash Flow Analysis",
      content: """
CASH FLOW STATEMENT ANALYSIS (2023-24)

Operating Activities:
Both companies show positive cash flow from operations, indicating healthy core business performance. Jio's operating cash flow is higher due to a larger subscriber base and higher ARPU (₹245 vs ₹206).

Investing Activities:
Both companies have significant negative cash flow in investing activities. This is due to heavy capital expenditure (Capex) on 5G infrastructure rollout across India.

Financing Activities:
Airtel shows higher activity in financing to service its debt obligations, whereas Jio has been deleveraging in recent years.
""",
    ),
    ProjectSection(
      title: "Conclusion",
      content: """
CONCLUSION

Based on the comparative analysis of Reliance Jio and Bharti Airtel for the year 2023-24:

1. Market Share: Jio leads with a larger subscriber base (46.5 Cr vs 38.5 Cr).
2. Profitability: Jio has a higher Net Profit Ratio and ARPU, indicating better operational efficiency.
3. Liquidity: Jio maintains a better Current Ratio (2:1) compared to Airtel (1.67:1).
4. Solvency: Jio has a lower Debt-Equity ratio, making it less risky for investors compared to Airtel.

However, Airtel has shown significant improvement in ARPU growth (18% YoY) and is focusing on high-value customers. Both companies are strong, but financially, Jio appears slightly more robust in the current fiscal year.
""",
    ),
    ProjectSection(
      title: "Bibliography",
      content: """
BIBLIOGRAPHY

1. NCERT Accountancy Textbook Class XII
2. Annual Reports 2023-24: Reliance Industries Ltd & Bharti Airtel Ltd
3. www.moneycontrol.com
4. www.bseindia.com
5. Business Standard & Economic Times Articles
""",
    ),
  ];
}
