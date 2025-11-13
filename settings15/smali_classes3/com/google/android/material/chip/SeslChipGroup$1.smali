.class public final Lcom/google/android/material/chip/SeslChipGroup$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/chip/SeslChipGroup;


# direct methods
.method public constructor <init>(Lcom/google/android/material/chip/SeslChipGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/chip/SeslChipGroup$1;->this$0:Lcom/google/android/material/chip/SeslChipGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/google/android/material/chip/SeslChipGroup$1;->this$0:Lcom/google/android/material/chip/SeslChipGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/google/android/material/chip/SeslChipGroup$1;->this$0:Lcom/google/android/material/chip/SeslChipGroup;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/chip/SeslChipGroup;->mEmptyContainerHeight:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
