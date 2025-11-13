.class public final synthetic Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/chip/SeslChipGroup;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/chip/SeslChipGroup;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/material/chip/SeslChipGroup;

    iput p2, p0, Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/material/chip/SeslChipGroup;

    iget v1, p0, Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda2;->f$1:I

    iget p0, p0, Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda2;->f$2:I

    sget v2, Lcom/google/android/material/chip/SeslChipGroup;->$r8$clinit:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr p1, p0

    float-to-int p0, p1

    add-int/2addr v1, p0

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Lcom/google/android/material/chip/SeslChipGroup;->mEmptyContainerHeight:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
