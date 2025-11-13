.class public final Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity$4;
.super Landroid/text/style/ClickableSpan;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity$4;->this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity$4;->this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;

    iget-boolean p1, p1, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;->mCurrentIsGoogle:Z

    if-eqz p1, :cond_0

    const-string p1, "LP001"

    const-string v0, "LP0001"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "LP002"

    const-string v0, "LP0002"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.intent.action.SIDE_KEY_LONG_PRESS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "fota_suw"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity$4;->this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSetupWizardActivity$4;->val$context:Landroid/content/Context;

    const v0, 0x7f06060b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
