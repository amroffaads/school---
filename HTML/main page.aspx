<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="main page.aspx.cs" Inherits="ai.HTML.main_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .readMoreBtn {
            display: inline-block;
            padding: 8px 18px;
            margin: 10px;
            background-color: #19c9c3;
            color: white;
            font-weight: bold;
            text-decoration: none;
            border: 1px solid #0e928d;
        }

        .readMoreBtn:hover {
            background-color: #0e928d;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1 id="top">الذكاء الاصطناعي</h1>
 <ul>
     <li><h2><a href="#an1">ما هو الذكاء الاصطناعي؟</a></h2></li>
     <li><h2><a href="#an2">تعلم الآلة</a></h2></li>
     <li><h2><a href="#an3">التعلم العميق والشبكات العصبية</a></h2></li>
     <li><h2><a href="#an4">معالجة اللغة الطبيعية</a></h2></li>
     <li><h2><a href="#an5">الرؤية الحاسوبية</a></h2></li>
     <li><h2><a href="#an6">الذكاء الاصطناعي التوليدي</a></h2></li>
     <li><h2><a href="#an7">الأخلاقيات ومستقبل الذكاء الاصطناعي</a></h2></li>
 </ul>

 <h1>مجالات الذكاء الاصطناعي</h1>

 <h2 id="an1">ما هو الذكاء الاصطناعي؟</h2>

 <h3>الذكاء الاصطناعي فرع من علوم الحاسوب يهدف إلى بناء أنظمة تستطيع أداء مهام تحتاج عادة إلى ذكاء بشري: الفهم، والاستنتاج، والتعلم، واتخاذ القرار. لا يوجد «ذكاء» حقيقي داخل هذه الأنظمة، بل نماذج رياضية تتعلم من البيانات وتستخرج منها أنماطًا تساعدها على التنبؤ. بدأ المجال رسميًا في مؤتمر دارتموث عام 1956، وتطور اليوم بفضل ثلاثة عناصر: البيانات الكبيرة، وقوة الحوسبة، والخوارزميات المحسّنة.
     <p><strong>معلومات:</strong> فروعه: تعلم الآلة، الرؤية الحاسوبية، معالجة اللغة، والروبوتات • أنواعه: ضيّق (Narrow) وعام (General) • من تطبيقاته: الترجمة الآلية، المساعدات الصوتية، السيارات ذاتية القيادة، والتشخيص الطبي.</p>
 </h3>
  <div style="text-align:center;">
     <img src="../pics/ai-basics.jpg" /> 
 </div>
    <div style="text-align:center;">
        <a class="readMoreBtn" href="AiBasicsInfo.aspx">اقرأ المزيد</a>
    </div>

    <div style="text-align:center;">
        <a href="#top">
            <img src="../pics/png-transparent-arrow-green-up-top-green-arrow.png" width="50" />
        </a>
    </div>

 <h2 id="an2">تعلم الآلة</h2>

 <h3>
     تعلم الآلة هو الطريقة الأكثر شيوعًا لبناء أنظمة ذكية. بدل أن نكتب القواعد يدويًا، نعطي الخوارزمية أمثلة كثيرة وهي تستنتج القواعد بنفسها. كلما كانت البيانات أنظف وأكثر تنوعًا، تحسّن أداء النموذج وقدرته على التعميم على أمثلة لم يرها من قبل.
     <p><strong>معلومات:</strong> أنواع التعلم: مراقب (Supervised)، وغير مراقب (Unsupervised)، ومعزز (Reinforcement) • يُقسَّم المشروع إلى تدريب وتحقق واختبار • مقاييس التقييم: الدقة، الاستدعاء، وF1 • من أشهر الأدوات: scikit-learn وXGBoost وTensorFlow.</p>
 </h3>
  <div style="text-align:center;">
     <img src="../pics/machine-learning.jpg" />
 </div>
    <div style="text-align:center;">
        <a class="readMoreBtn" href="MachineLearningInfo.aspx">اقرأ المزيد</a>
    </div>
    <div style="text-align:center;">
    <a href="#top">
        <img src="../pics/png-transparent-arrow-green-up-top-green-arrow.png" width="50" />
    </a>
</div>

 <h2 id="an3">التعلم العميق والشبكات العصبية</h2>

 <h3>
     الشبكات العصبية نماذج مستوحاة من طريقة عمل الدماغ: طبقات من «العصبونات» الرياضية تتعلم تمثيلات متعددة المستويات للبيانات. التعلم العميق هو استخدام شبكات تحتوي طبقات كثيرة، وهو ما أحدث القفزة الكبيرة في التعرف على الصور والصوت وتوليد النصوص.
     <p><strong>معلومات:</strong> تتكون الشبكة من طبقة إدخال وطبقات مخفية وطبقة إخراج • تُدرَّب بخوارزمية الانتشار العكسي (Backpropagation) • تحتاج بطاقة رسومات GPU للتدريب • من أشهر المعماريات: CNN للصور، وRNN للتسلسل، وTransformer للغة.</p>
 </h3>
  <div style="text-align:center;">
     <img src="../pics/deep-learning.jpg" />
 </div>
    <div style="text-align:center;">
        <a class="readMoreBtn" href="DeepLearningInfo.aspx">اقرأ المزيد</a>
    </div>
    <div style="text-align:center;">
    <a href="#top">
        <img src="../pics/png-transparent-arrow-green-up-top-green-arrow.png" width="50" />
    </a>
</div>

 <h2 id="an4">معالجة اللغة الطبيعية</h2>

 <h3>
     معالجة اللغة الطبيعية تجعل الحاسوب يفهم النصوص والكلام ويولّدهما. اليوم تعتمد معظم التطبيقات على نماذج Transformer ونماذج اللغة الكبيرة التي تتعلم من مليارات الكلمات، وتستطيع التلخيص والترجمة والإجابة عن الأسئلة وكتابة نصوص جديدة.
     <p><strong>معلومات:</strong> من مهامها: تصنيف النصوص، والترجمة، والتلخيص، والإجابة عن الأسئلة • تُقسَّم النصوص إلى وحدات (Tokens) قبل المعالجة • من أشهر النماذج: BERT وGPT • من المكتبات: Hugging Face Transformers وspaCy.</p>
 </h3>
  <div style="text-align:center;">
     <img src="../pics/nlp.jpg" />
 </div>
    <div style="text-align:center;">
        <a class="readMoreBtn" href="NlpInfo.aspx">اقرأ المزيد</a>
    </div>

<div style="text-align:center;">
    <a href="#top">
        <img src="../pics/png-transparent-arrow-green-up-top-green-arrow.png" width="50" />
    </a>
</div>
 <h2 id="an5">الرؤية الحاسوبية</h2>

 <h3>
     الرؤية الحاسوبية تعطي الحاسوب القدرة على «رؤية» الصور والفيديو: كشف الأشياء، والتعرف على الوجوه، وقراءة النصوص، وتحليل الصور الطبية. تعتمد غالبًا على الشبكات الالتفافية (CNN) التي تستخرج من الصورة حوافًا وأشكالًا ثم تفهمها.
     <p><strong>معلومات:</strong> مهامها: التصنيف، والكشف (Detection)، والتقسيم (Segmentation) • تحتاج بيانات موسومة (Labeled Data) • من المكتبات: OpenCV وPyTorch وYOLO • تطبيقات: السيارات ذاتية القيادة، المزارع الذكية، والتشخيص الطبي.</p>
 </h3>
  <div style="text-align:center;">
     <img src="../pics/computer-vision.jpg" />
 </div>
    <div style="text-align:center;">
        <a class="readMoreBtn" href="ComputerVisionInfo.aspx">اقرأ المزيد</a>
    </div>

    <div style="text-align:center;">
    <a href="#top">
        <img src="../pics/png-transparent-arrow-green-up-top-green-arrow.png" width="50" />
    </a>
</div>

 <h2 id="an6">الذكاء الاصطناعي التوليدي</h2>

 <h3>
     الذكاء الاصطناعي التوليدي ينتج محتوى جديدًا: صورًا ونصوصًا وأصواتًا وأكوادًا. يعتمد على نماذج تعلمت توزيع البيانات وأصبحت قادرة على توليد عينات جديدة منها، مثل نماذج الانتشار (Diffusion) للصور والنماذج اللغوية الكبيرة للنصوص.
     <p><strong>معلومات:</strong> أدوات شائعة: ChatGPT وDALL·E وMidjourney وStable Diffusion • يُستخدم معها «هندسة الأوامر» (Prompt Engineering) • من مشكلاتها: الهلوسة (Hallucination) وحقوق الملكية • تحتاج مراجعة بشرية دائمًا.</p>
 </h3>
  <div style="text-align:center;">
     <img src="../pics/generative-ai.jpg" />
 </div>
    <div style="text-align:center;">
        <a class="readMoreBtn" href="GenerativeAiInfo.aspx">اقرأ المزيد</a>
    </div>
    <div style="text-align:center;">
    <a href="#top">
        <img src="../pics/png-transparent-arrow-green-up-top-green-arrow.png" width="50" />
    </a>
</div>

 <h2 id="an7">الأخلاقيات ومستقبل الذكاء الاصطناعي</h2>

 <h3>
     قوة الذكاء الاصطناعي تأتي مع مسؤولية: التحيز في البيانات، والخصوصية، والشفافية، والتأثير على الوظائف. النظام الجيد ليس الذي يعمل بدقة فقط، بل الذي يعمل بعدالة ويمكن تفسير قراراته ولا يضرّ الناس.
     <p><strong>معلومات:</strong> مبادئ أساسية: العدالة، والشفافية، والخصوصية، والمسؤولية • تنظيمات: قانون الذكاء الاصطناعي الأوروبي (AI Act) • مخاطر: التحيز، والتزييف العميق، وانتهاك الخصوصية • الحل: بيانات متنوعة، وتدقيق النماذج، وإشراف بشري.</p>
 </h3>
  <div style="text-align:center;">
     <img src="../pics/ai-ethics.jpg" />
 </div>
    <div style="text-align:center;">
        <a class="readMoreBtn" href="AiEthicsInfo.aspx">اقرأ المزيد</a>
    </div>

    <div style="text-align:center;">
    <a href="#top">
        <img src="../pics/png-transparent-arrow-green-up-top-green-arrow.png" width="50" />
    </a>
</div>
  
</asp:Content>
