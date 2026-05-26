<%@ Language="VBScript" %>
<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Al Zahraa Team - Home</title>
    <!-- استيراد مكتبة Bootstrap لشكل احترافي -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { background-color: #f8f9fa; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; }
        .hero-section { background: linear-gradient(135deg, #0d6efd 0%, #003d99 100%); color: white; padding: 60px 0; border-bottom-left-radius: 50px; border-bottom-right-radius: 50px; }
        .card { border: none; border-radius: 15px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); transition: 0.3s; }
        .card:hover { transform: translateY(-5px); }
        .status-online { color: #28a745; font-weight: bold; }
    </style>
</head>
<body>

    <!-- الهيدر القسم العلوي -->
    <div class="hero-section text-center">
        <div class="container">
            <h1 class="display-4 fw-bold">مرحباً بك في Al Zahraa Team</h1>
            <p class="lead">تم ربط الموقع بنجاح مع GitHub وسيرفر SmarterASP</p>
            <span class="badge bg-light text-primary p-2">مشروع: HAODB</span>
        </div>
    </div>

    <div class="container my-5">
        <div class="row g-4">
            <!-- كرت حالة السيرفر -->
            <div class="col-md-4">
                <div class="card p-4 text-center">
                    <div class="display-6 text-primary mb-3">🌐</div>
                    <h4>حالة الموقع</h4>
                    <p class="status-online">متصل (Online)</p>
                    <small class="text-muted">السيرفر: Europe (Amsterdam)</small>
                </div>
            </div>

            <!-- كرت قاعدة البيانات -->
            <div class="col-md-4">
                <div class="card p-4 text-center">
                    <div class="display-6 text-success mb-3">🗄️</div>
                    <h4>قاعدة البيانات</h4>
                    <%
                        ' ملاحظة: استبدل القيم التالية ببياناتك الحقيقية التي ظهرت لك في لوحة التحكم
                        Dim conn, connStr, dbStatus
                        On Error Resume Next
                        
                        ' نص الاتصال بقاعدة البيانات MSSQL
                        ' قم بتغيير Password و User ID للقيم الخاصة بك
                        connStr = "Driver={SQL Server Native Client 11.0};Server=sql6031.site4now.net;Database=db_ac9d0d_haodb;Uid=db_ac9d0d_haodb_admin;Pwd=Eng81Mad81##dbا;"
                        
                        Set conn = Server.CreateObject("ADODB.Connection")
                        conn.Open connStr
                        
                        If Err.Number <> 0 Then
                            dbStatus = "<span class='text-danger'>خطأ في الاتصال</span>"
                        Else
                            dbStatus = "<span class='text-success'>متصلة بنجاح</span>"
                            conn.Close
                        End If
                        Set conn = Nothing
                    %>
                    <p><%= dbStatus %></p>
                    <small class="text-muted">SQL Server 2022</small>
                </div>
            </div>

            <!-- كرت GitHub -->
            <div class="col-md-4">
                <div class="card p-4 text-center">
                    <div class="display-6 text-dark mb-3">🐙</div>
                    <h4>GitHub</h4>
                    <p>المزامنة مفعّلة</p>
                    <a href="https://github.com/alzahraateam-org/ZahraaApp-Updates" class="btn btn-outline-dark btn-sm">زيارة المستودع</a>
                </div>
            </div>
        </div>

        <div class="mt-5 p-4 bg-white card text-center">
            <h5>ماذا تفعل الآن؟</h5>
            <p>يمكنك البدء بتعديل هذا الملف (default.asp) وإضافة أكوادك الخاصة أو ربط صفحات أخرى. هذا الموقع الآن متصل فعلياً بقاعدة البيانات السحابية.</p>
        </div>
    </div>

    <footer class="text-center py-4 text-muted">
        <p>&copy; <%= Year(Now()) %> Al Zahraa Team - برمجة وتطوير</p>
    </footer>

</body>
</html>
