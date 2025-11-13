.class public final Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$6;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    instance-of p0, p1, Landroid/widget/EditText;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    if-nez p0, :cond_0

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
