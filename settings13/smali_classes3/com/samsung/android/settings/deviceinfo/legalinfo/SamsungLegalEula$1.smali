.class Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula$1;
.super Landroid/os/Handler;
.source "SamsungLegalEula.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula$1;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 44
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula$1;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;->-$$Nest$fgetmLoadingDialog(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 45
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula$1;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;->-$$Nest$fgetmLoadingDialog(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula$1;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;->-$$Nest$fgetmLoadingDialog(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 47
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula$1;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;->-$$Nest$fputmLoadingDialog(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;Landroid/app/ProgressDialog;)V

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula$1;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;->-$$Nest$fgetmLegalTextView(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula$1;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;->-$$Nest$fgetmLegalText(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "(((http|https|Http|Https):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)(?:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/util/Patterns;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")(?:\\:\\d{1,5})?)(\\/(?:(?:["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\\;\\/\\?\\:\\@\\&\\=\\#\\~\\$\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?(?:\\b|$)(\\/)?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 60
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula$1;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;->-$$Nest$fgetmLegalTextView(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;)Landroid/widget/TextView;

    move-result-object p0

    const-string v0, ""

    invoke-static {p0, p1, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    return-void
.end method
