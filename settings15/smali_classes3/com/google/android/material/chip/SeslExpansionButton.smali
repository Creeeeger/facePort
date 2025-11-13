.class public final Lcom/google/android/material/chip/SeslExpansionButton;
.super Landroid/widget/ImageView;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAutoDisappear:Z

.field public mExpanded:Z

.field public mFloated:Z

.field public final mTimer:Lcom/google/android/material/chip/SeslExpansionButton$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/chip/SeslExpansionButton;->mAutoDisappear:Z

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setElevation(F)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0027

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    new-instance v6, Lcom/google/android/material/chip/SeslExpansionButton$1;

    int-to-long v4, p1

    move-object v0, v6

    move-object v1, p0

    move-wide v2, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/chip/SeslExpansionButton$1;-><init>(Lcom/google/android/material/chip/SeslExpansionButton;JJ)V

    iput-object v6, p0, Lcom/google/android/material/chip/SeslExpansionButton;->mTimer:Lcom/google/android/material/chip/SeslExpansionButton$1;

    return-void
.end method


# virtual methods
.method public final onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-boolean v0, p0, Lcom/google/android/material/chip/SeslExpansionButton;->mExpanded:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0405df

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {p1, v0}, Landroid/widget/ImageView;->mergeDrawableStates([I[I)[I

    :cond_0
    iget-boolean p0, p0, Lcom/google/android/material/chip/SeslExpansionButton;->mFloated:Z

    if-eqz p0, :cond_1

    const p0, 0x7f0405e0

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-static {p1, p0}, Landroid/widget/ImageView;->mergeDrawableStates([I[I)[I

    :cond_1
    return-object p1
.end method

.method public final setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/chip/SeslExpansionButton;->mTimer:Lcom/google/android/material/chip/SeslExpansionButton$1;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    iget-object p0, p0, Lcom/google/android/material/chip/SeslExpansionButton;->mTimer:Lcom/google/android/material/chip/SeslExpansionButton$1;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method
