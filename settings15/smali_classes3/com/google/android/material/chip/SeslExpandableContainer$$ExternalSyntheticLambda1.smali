.class public final synthetic Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/chip/SeslExpandableContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/chip/SeslExpandableContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/material/chip/SeslExpandableContainer;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/material/chip/SeslExpandableContainer;

    iget-boolean p1, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpanded:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpanded:Z

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslExpandableContainer;->refreshLayout()V

    new-instance p1, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/chip/SeslExpandableContainer;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
