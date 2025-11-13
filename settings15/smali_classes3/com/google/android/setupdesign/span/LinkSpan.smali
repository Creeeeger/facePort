.class public Lcom/google/android/setupdesign/span/LinkSpan;
.super Landroid/text/style/ClickableSpan;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final link:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/span/LinkSpan;->link:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    instance-of v0, p1, Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lcom/google/android/setupdesign/span/LinkSpan$OnClickListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/setupdesign/span/LinkSpan$OnClickListener;

    goto :goto_1

    :cond_1
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0, p0}, Lcom/google/android/setupdesign/span/LinkSpan$OnClickListener;->onClick(Lcom/google/android/setupdesign/span/LinkSpan;)V

    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    goto :goto_2

    :cond_3
    const-string p0, "LinkSpan"

    const-string v0, "Dropping click event. No listener attached."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    instance-of p0, p1, Landroid/widget/TextView;

    if-eqz p0, :cond_4

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    instance-of p1, p0, Landroid/text/Spannable;

    if-eqz p1, :cond_4

    check-cast p0, Landroid/text/Spannable;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_4
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
