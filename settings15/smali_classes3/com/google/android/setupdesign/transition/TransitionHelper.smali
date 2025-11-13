.class public abstract Lcom/google/android/setupdesign/transition/TransitionHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static isFinishCalled:Z

.field static isStartActivity:Z

.field static isStartActivityForResult:Z


# direct methods
.method public static applyForwardTransition(Landroid/app/Activity;I)V
    .locals 4

    invoke-static {}, Lcom/google/android/setupcompat/util/BuildCompatUtils;->isAtLeastU()Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifThemeControlledTransitionApplied(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eq p1, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/google/android/setupcompat/util/BuildCompatUtils;->isAtLeastU()Z

    move-result v0

    const v2, 0x7f0100dc

    const v3, 0x7f0100db

    if-eqz v0, :cond_3

    if-ne p1, v1, :cond_3

    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifThemeControlledTransitionApplied(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->shouldApplyDynamicColor(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0100d2

    goto :goto_0

    :cond_1
    const p1, 0x7f0100d1

    :goto_0
    const v0, 0x7f0100d3

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    const/high16 p1, 0x10a0000

    const v0, 0x7f0100dd

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    const p1, 0x10100b8

    const v2, 0x10100b9

    filled-new-array {p1, v2}, [I

    move-result-object p1

    const v2, 0x1030001

    invoke-virtual {p0, v2, p1}, Landroid/app/Activity;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    const p1, 0x7f0100d7

    const v0, 0x7f0100d8

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    :cond_7
    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_8
    :goto_1
    return-void
.end method
