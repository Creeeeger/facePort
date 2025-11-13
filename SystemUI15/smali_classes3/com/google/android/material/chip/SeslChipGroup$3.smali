.class public final Lcom/google/android/material/chip/SeslChipGroup$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lcom/google/android/material/chip/SeslChipGroup;)V
    .locals 0

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    check-cast p1, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;

    iget-object p0, p1, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;->mTargetView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-nez p0, :cond_0

    return-void

    :cond_0
    instance-of p1, p0, Lcom/google/android/material/chip/SeslChip;

    if-eqz p1, :cond_1

    check-cast p0, Lcom/google/android/material/chip/SeslChip;

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/SeslChip;->setInternalsAlpha(I)V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setAlpha(I)V

    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/google/android/material/chip/ChipDrawable;->isSeslFullText:Z

    invoke-virtual {p0}, Landroid/widget/CheckBox;->invalidate()V

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method
