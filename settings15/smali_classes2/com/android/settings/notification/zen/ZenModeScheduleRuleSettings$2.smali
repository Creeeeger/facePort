.class public final Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 p1, 0x42

    if-eq p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x6

    if-eq p2, p0, :cond_1

    const/4 p0, 0x5

    if-ne p2, p0, :cond_2

    :cond_1
    const-string p0, "ZenModeSettings"

    const-string p1, "Enter pressed"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
