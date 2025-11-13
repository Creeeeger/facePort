.class public final Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->getPPFromClient()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 7

    check-cast p1, Ljava/lang/String;

    const-string v0, "<!DOCTYPE html><html><head><title></title></head><body>"

    const-string/jumbo v1, "result: "

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    sget v3, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->$r8$clinit:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->isChinaModel$1()Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.klmsagent.SettingsPrivacyPolicyAction"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.klmsagent"

    const-string v5, "com.samsung.klmsagent.activities.KnoxPPDetailsActivity"

    invoke-direct {v1, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "pp_text"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    iget-object p1, p1, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mFields:Ljava/lang/String;

    const-string/jumbo v1, "pp_fields"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-virtual {p1, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    iget-object p1, p1, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_3

    :cond_0
    const-string v2, "KnoxNotice"

    if-nez p1, :cond_1

    const-string p1, "PPRetrieverTask onPostExecute: no PP text found"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    iget-object v0, p1, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->activityTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_3

    :cond_1
    :try_start_0
    const-string v5, "PPRetrieverTask onPostExecute: PP text Received"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    iget-object v5, v5, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    const-string/jumbo v5, "title"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v5}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->getTagContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    const-string v6, "body"

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v6}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->getTagContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "</body></html>"

    if-eqz v3, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-virtual {v6, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    iget-object v6, v3, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->activityTitle:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    if-eqz v5, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    iget-object v1, v1, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->textView:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->textView:Landroid/widget/TextView;

    invoke-static {p1, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    iget-object v1, v1, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->textView:Landroid/widget/TextView;

    invoke-static {p1, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "Exception in getting Title and Body"

    invoke-static {v2, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    iget-boolean v0, p1, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->newPPType:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mAgreeButton:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->getAgreeButtonText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mAgreeButton:Landroid/widget/Button;

    invoke-virtual {p0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    :goto_3
    return-void
.end method
