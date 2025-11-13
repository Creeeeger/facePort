.class public final synthetic Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 p0, 0x42

    const/4 v0, 0x0

    if-eq p2, p0, :cond_0

    const/16 p0, 0xa0

    if-eq p2, p0, :cond_0

    const/16 p0, 0x17

    if-ne p2, p0, :cond_3

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    const/4 p2, 0x1

    if-eqz p0, :cond_2

    if-eq p0, p2, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    goto :goto_0

    :cond_2
    const p0, 0x3f19999a    # 0.6f

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    move v0, p2

    :cond_3
    :goto_0
    return v0
.end method
