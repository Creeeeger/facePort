.class public final Lcom/android/systemui/volume/VolumeDialogSeekBarAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final accessibilityStep:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogSeekBarAccessibilityDelegate;->accessibilityStep:I

    return-void
.end method


# virtual methods
.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    instance-of v0, p1, Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/widget/SeekBar;

    const/16 v1, 0x1000

    const/16 v2, 0x2000

    if-eq p2, v1, :cond_0

    if-eq p2, v2, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_0
    iget p3, p0, Lcom/android/systemui/volume/VolumeDialogSeekBarAccessibilityDelegate;->accessibilityStep:I

    if-ne p2, v2, :cond_1

    neg-int p3, p3

    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMin()I

    move-result p3

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    invoke-static {v1, p3, v0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p3

    int-to-float p3, p3

    const-string v0, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const p3, 0x102003d

    invoke-super {p0, p1, p3, p2}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This class only works with the SeekBar"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
