.class public final Lcom/google/android/material/chip/SeslChipGroup$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# direct methods
.method public constructor <init>(Lcom/google/android/material/chip/SeslChipGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    instance-of p0, p3, Lcom/google/android/material/chip/SeslChip;

    if-nez p0, :cond_0

    return-void

    :cond_0
    check-cast p3, Lcom/google/android/material/chip/SeslChip;

    const/4 p0, 0x2

    if-eq p4, p0, :cond_1

    const/4 p0, 0x3

    if-eq p4, p0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p3, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->isSeslFullText:Z

    sget-object p0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p3, p0}, Lcom/google/android/material/chip/Chip;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_0
    return-void
.end method

.method public final startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    instance-of p0, p3, Lcom/google/android/material/chip/SeslChip;

    if-nez p0, :cond_0

    return-void

    :cond_0
    check-cast p3, Lcom/google/android/material/chip/SeslChip;

    const/4 p0, 0x2

    if-eq p4, p0, :cond_1

    const/4 p0, 0x3

    if-eq p4, p0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p3, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz p0, :cond_2

    iget p1, p0, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_2

    iput p2, p0, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Lcom/google/android/material/chip/Chip;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p0, p3, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getIntrinsicWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->seslFinalWidth:F

    iget-object p0, p3, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->isSeslFullText:Z

    :goto_0
    return-void
.end method
