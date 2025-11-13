.class public final Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference$1;
.super Landroid/text/style/ClickableSpan;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;

.field public final synthetic val$end:I

.field public final synthetic val$start:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;II)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference$1;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;

    iput p2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference$1;->val$start:I

    iput p3, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference$1;->val$end:I

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference$1;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->mOnUpdateListener:Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;->$r8$lambda$AI2OWRLPsMv1sCOSSUaTsNATreE(Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;)V

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference$1;->val$start:I

    iget v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference$1;->val$end:I

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->URL_ACTIVATION:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference$1;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference$1;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference$1;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->mContext:Landroid/content/Context;

    const v0, 0x1010038

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
