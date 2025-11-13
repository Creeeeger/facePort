.class Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;
.super Landroid/os/AsyncTask;
.source "SamsungKnoxPrivacyNotice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PPRetrieverTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 511
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 0

    .line 516
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->getPPFromClient()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 518
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 511
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6

    .line 525
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 527
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$misChinaModel(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 528
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.klmsagent.SettingsPrivacyPolicyAction"

    .line 529
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.klmsagent"

    const-string v5, "com.samsung.klmsagent.activities.KnoxPPDetailsActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "pp_text"

    .line 532
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$fgetmFields(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "pp_fields"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-virtual {p1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 535
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$fgetmProgress(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 536
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const-string v0, "KnoxNotice"

    if-nez p1, :cond_1

    const-string p1, "PPRetrieverTask onPostExecute: no PP text found"

    .line 539
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const-string v3, "PPRetrieverTask onPostExecute: PP text Received"

    .line 542
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$fgetmProgress(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$fgettextView(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$fgetnewPPType(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 546
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$fgetmAgreeButton(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$mgetAgreeButtonText(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 547
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$fgetmAgreeButton(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method
