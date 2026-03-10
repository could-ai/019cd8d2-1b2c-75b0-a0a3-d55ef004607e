import 'package:flutter/material.dart';

void main() {
  runApp(const AuditQuizApp());
}

class AuditQuizApp extends StatelessWidget {
  const AuditQuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Audit Scrutiny Quiz (Pakistan)',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1B5E20), // Dark green theme for Pakistan
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1B5E20),
          foregroundColor: Colors.white,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const QuizHomeScreen(),
      },
    );
  }
}

// --- DATA MODEL ---
class Question {
  final String text;
  final List<String> options;
  final int correctIndex;
  final String explanation;

  Question({
    required this.text,
    required this.options,
    required this.correctIndex,
    required this.explanation,
  });
}

// --- SAMPLE DATA (15 Questions out of 500) ---
// Note: Generating 500 questions at once exceeds system limits. 
// Here is a robust sample set. You can easily add more to this list or fetch them from a database later.
final List<Question> auditQuestions = [
  Question(
    text: 'Under the Constitution of Pakistan, who appoints the Auditor General of Pakistan (AGP)?',
    options: ['Prime Minister', 'President', 'Chief Justice', 'Parliament'],
    correctIndex: 1,
    explanation: 'Under Article 168 of the Constitution of Pakistan, the Auditor General is appointed by the President.',
  ),
  Question(
    text: 'According to PPRA (Public Procurement Regulatory Authority) Rules 2004, what is the minimum response time for national competitive bidding?',
    options: ['10 days', '15 days', '30 days', '45 days'],
    correctIndex: 1,
    explanation: 'Rule 13 of PPRA Rules 2004 states the minimum response time shall not be less than 15 days for national competitive bidding.',
  ),
  Question(
    text: 'In the context of government audits in Pakistan, what does PAC stand for?',
    options: ['Public Accounts Committee', 'Provincial Audit Commission', 'Public Audit Council', 'Primary Accounts Center'],
    correctIndex: 0,
    explanation: 'PAC stands for Public Accounts Committee, which reviews the audit reports of the Auditor General.',
  ),
  Question(
    text: 'What is the primary purpose of "Vouching" during the scrutiny of records?',
    options: ['Checking mathematical accuracy', 'Examining documentary evidence supporting a transaction', 'Verifying physical assets', 'Evaluating internal controls'],
    correctIndex: 1,
    explanation: 'Vouching is the process of examining documentary evidence (vouchers, invoices) to support recorded transactions.',
  ),
  Question(
    text: 'Which forum is initially responsible for discussing audit observations before they are sent to the PAC?',
    options: ['Supreme Court', 'DAC (Departmental Accounts Committee)', 'Ministry of Finance', 'Cabinet Division'],
    correctIndex: 1,
    explanation: 'The Departmental Accounts Committee (DAC) is the initial forum where audit paras are discussed with the respective department.',
  ),
  Question(
    text: 'When scrutinizing a Cash Book in a government department, which of the following is a critical check?',
    options: ['Ensuring all employees are present', 'Verifying that daily balances are signed by the DDO (Drawing and Disbursing Officer)', 'Checking the color of the ink used', 'Reviewing the department\\'s annual leave policy'],
    correctIndex: 1,
    explanation: 'The DDO must verify and sign the daily closing balances of the Cash Book to prevent misappropriation.',
  ),
  Question(
    text: 'Which body is responsible for issuing auditing standards for the private sector in Pakistan?',
    options: ['SECP', 'State Bank of Pakistan', 'ICAP (Institute of Chartered Accountants of Pakistan)', 'FBR'],
    correctIndex: 2,
    explanation: 'ICAP adopts and issues International Standards on Auditing (ISAs) for use in Pakistan.',
  ),
  Question(
    text: 'What type of audit focuses on whether government programs have achieved their intended objectives efficiently and effectively?',
    options: ['Financial Audit', 'Compliance Audit', 'Performance Audit', 'Forensic Audit'],
    correctIndex: 2,
    explanation: 'Performance audits assess the economy, efficiency, and effectiveness (the 3 Es) of government programs.',
  ),
  Question(
    text: 'During the scrutiny of procurement records, an auditor finds that a contract was split into smaller amounts. What rule does this likely violate?',
    options: ['Income Tax Ordinance', 'PPRA Rule against splitting or framing of contracts to avoid open bidding', 'Companies Act 2017', 'State Bank regulations'],
    correctIndex: 1,
    explanation: 'PPRA Rule 9 strictly prohibits splitting or framing of procurements to avoid the necessity of open competitive bidding.',
  ),
  Question(
    text: 'What is the main objective of a Compliance Audit?',
    options: ['To detect fraud', 'To ensure financial statements are accurate', 'To verify adherence to applicable laws, rules, and regulations', 'To assess employee performance'],
    correctIndex: 2,
    explanation: 'Compliance audits specifically check whether the entity has complied with relevant laws, regulations, and internal policies.',
  ),
  Question(
    text: 'In government accounting in Pakistan, what is a "Token Provision"?',
    options: ['A small budget allocation to keep a project alive in the budget books', 'A physical token given to auditors', 'A penalty for late tax filing', 'A temporary employee contract'],
    correctIndex: 0,
    explanation: 'A token provision (usually Rs. 1000) is allocated in the budget to acknowledge a project when full funding is not currently available.',
  ),
  Question(
    text: 'When auditing payroll records, which document is the primary source for verifying deductions like General Provident (GP) Fund?',
    options: ['Attendance Register', 'Pay Bill / Acquittance Roll', 'Service Book', 'Log Book'],
    correctIndex: 1,
    explanation: 'The Pay Bill or Acquittance Roll details the gross pay, all deductions (including GP Fund), and net pay.',
  ),
  Question(
    text: 'What is the statutory time limit for the Auditor General to submit the audit report to the President/Governor?',
    options: ['Within 3 months of the financial year end', 'As soon as possible after the close of the financial year', 'Within 5 years', 'Before the next budget is announced'],
    correctIndex: 1,
    explanation: 'The reports relating to the accounts of the Federation/Province shall be submitted to the President/Governor, who shall cause them to be laid before the National/Provincial Assembly.',
  ),
  Question(
    text: 'During scrutiny of a vehicle logbook, an auditor should primarily check for:',
    options: ['The brand of the vehicle', 'Authorized usage, mileage, and fuel consumption matching official duties', 'The driver\\'s uniform', 'The color of the vehicle'],
    correctIndex: 1,
    explanation: 'Logbooks are scrutinized to ensure vehicles are used for authorized official purposes and fuel consumption aligns with mileage.',
  ),
  Question(
    text: 'If an auditor discovers a serious financial irregularity involving suspected fraud, what is the immediate next step?',
    options: ['Ignore it if the amount is small', 'Issue an Advance Para / Audit Observation immediately to the management', 'Arrest the responsible officer', 'Wait for the next financial year'],
    correctIndex: 1,
    explanation: 'Serious irregularities must be immediately communicated to the management via an Audit Observation or Advance Para for their response.',
  ),
];

// --- SCREENS ---

class QuizHomeScreen extends StatelessWidget {
  const QuizHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Audit Scrutiny Pakistan'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.account_balance,
                size: 80,
                color: Color(0xFF1B5E20),
              ),
              const SizedBox(height: 24),
              Text(
                'Audit & Scrutiny MCQs',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF1B5E20),
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              const Text(
                'Test your knowledge on the scrutiny of records for audit purposes in Pakistan. Includes PPRA rules, AGP guidelines, and general auditing principles.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              const SizedBox(height: 48),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const QuizScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1B5E20),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
                  textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                child: const Text('Start Quiz'),
              ),
              const SizedBox(height: 16),
              Text(
                'Currently loaded: ${auditQuestions.length} Questions\n(Architecture supports 500+ questions)',
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _currentIndex = 0;
  int _score = 0;
  int? _selectedOptionIndex;
  bool _isAnswered = false;

  void _submitAnswer(int index) {
    if (_isAnswered) return;

    setState(() {
      _selectedOptionIndex = index;
      _isAnswered = true;
      if (index == auditQuestions[_currentIndex].correctIndex) {
        _score++;
      }
    });
  }

  void _nextQuestion() {
    if (_currentIndex < auditQuestions.length - 1) {
      setState(() {
        _currentIndex++;
        _selectedOptionIndex = null;
        _isAnswered = false;
      });
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ResultScreen(
            score: _score,
            total: auditQuestions.length,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final question = auditQuestions[_currentIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text('Question ${_currentIndex + 1} of ${auditQuestions.length}'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Progress Bar
              LinearProgressIndicator(
                value: (_currentIndex + 1) / auditQuestions.length,
                backgroundColor: Colors.grey[300],
                color: const Color(0xFF1B5E20),
              ),
              const SizedBox(height: 24),
              
              // Question Text
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    question.text,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Options
              Expanded(
                child: ListView.builder(
                  itemCount: question.options.length,
                  itemBuilder: (context, index) {
                    bool isSelected = _selectedOptionIndex == index;
                    bool isCorrect = index == question.correctIndex;
                    
                    Color buttonColor = Colors.white;
                    Color textColor = Colors.black87;
                    BorderSide borderSide = BorderSide(color: Colors.grey.shade400);

                    if (_isAnswered) {
                      if (isCorrect) {
                        buttonColor = Colors.green.shade100;
                        textColor = Colors.green.shade900;
                        borderSide = const BorderSide(color: Colors.green, width: 2);
                      } else if (isSelected && !isCorrect) {
                        buttonColor = Colors.red.shade100;
                        textColor = Colors.red.shade900;
                        borderSide = const BorderSide(color: Colors.red, width: 2);
                      }
                    } else if (isSelected) {
                      buttonColor = Colors.blue.shade50;
                      borderSide = const BorderSide(color: Colors.blue, width: 2);
                    }

                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: InkWell(
                        onTap: () => _submitAnswer(index),
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: buttonColor,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: borderSide.color,
                              width: borderSide.width,
                            ),
                          ),
                          child: Row(
                            children: [
                              Text(
                                '${String.fromCharCode(65 + index)}.',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: textColor,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  question.options[index],
                                  style: TextStyle(
                                    color: textColor,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              if (_isAnswered && isCorrect)
                                const Icon(Icons.check_circle, color: Colors.green),
                              if (_isAnswered && isSelected && !isCorrect)
                                const Icon(Icons.cancel, color: Colors.red),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              // Explanation Box
              if (_isAnswered)
                Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.blue.shade200),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Icon(Icons.info_outline, color: Colors.blue, size: 20),
                          SizedBox(width: 8),
                          Text(
                            'Explanation',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        question.explanation,
                        style: TextStyle(color: Colors.blue.shade900),
                      ),
                    ],
                  ),
                ),

              // Next Button
              ElevatedButton(
                onPressed: _isAnswered ? _nextQuestion : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1B5E20),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  disabledBackgroundColor: Colors.grey.shade300,
                ),
                child: Text(
                  _currentIndex < auditQuestions.length - 1 ? 'Next Question' : 'Finish Quiz',
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ResultScreen extends StatelessWidget {
  final int score;
  final int total;

  const ResultScreen({
    super.key,
    required this.score,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    final double percentage = (score / total) * 100;
    String feedback = '';
    Color feedbackColor = Colors.black;

    if (percentage >= 80) {
      feedback = 'Excellent! You have a strong grasp of audit scrutiny.';
      feedbackColor = Colors.green;
    } else if (percentage >= 50) {
      feedback = 'Good effort! Review the PPRA rules and AGP guidelines to improve.';
      feedbackColor = Colors.orange;
    } else {
      feedback = 'Keep studying! Audit rules require careful attention to detail.';
      feedbackColor = Colors.red;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Results'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.emoji_events,
                size: 100,
                color: Colors.amber,
              ),
              const SizedBox(height: 24),
              const Text(
                'Your Score',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text(
                '$score / $total',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                '${percentage.toStringAsFixed(1)}%',
                style: const TextStyle(fontSize: 20, color: Colors.grey),
              ),
              const SizedBox(height: 24),
              Text(
                feedback,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: feedbackColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 48),
              OutlinedButton.icon(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
                icon: const Icon(Icons.refresh),
                label: const Text('Restart Quiz'),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  textStyle: const TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
