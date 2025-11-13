.class public abstract Lcom/samsung/android/settings/asbase/utils/SeekBarUtil;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final vibrateIfNeeded(Landroid/widget/SeekBar;II)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    if-ne p2, p1, :cond_2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMin()I

    move-result p1

    if-eq p2, p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    if-ne p2, p1, :cond_2

    :cond_1
    :goto_0
    const/16 p1, 0x29

    invoke-static {p1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    :cond_2
    return-void
.end method
