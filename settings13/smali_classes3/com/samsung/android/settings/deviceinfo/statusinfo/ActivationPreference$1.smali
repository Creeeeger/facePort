.class Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference$1;
.super Landroid/text/style/ClickableSpan;
.source "ActivationPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->makeSummary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;

.field final synthetic val$end:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;II)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference$1;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;

    iput p2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference$1;->val$start:I

    iput p3, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference$1;->val$end:I

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 68
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference$1;->val$start:I

    iget v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference$1;->val$end:I

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 71
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "https://support-cn.samsung.com/supportcn/Imei/default.aspx"

    .line 73
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 74
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference$1;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference$1;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 82
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference$1;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x1010038

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p0

    .line 83
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
