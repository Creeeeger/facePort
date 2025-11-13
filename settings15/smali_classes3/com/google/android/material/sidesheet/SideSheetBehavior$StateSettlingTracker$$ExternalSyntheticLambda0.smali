.class public final synthetic Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->isContinueSettlingRunnablePosted:Z

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object v1, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->targetState:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->continueSettlingToState(I)V

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->targetState:I

    invoke-virtual {v0, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setStateInternal(I)V

    :cond_1
    :goto_0
    return-void
.end method
