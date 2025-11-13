.class public final Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$2:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;->this$2:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;->this$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;->this$2:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;->this$2:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;->this$2:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;->this$2:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;->this$2:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;->this$2:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;->this$2:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;->this$2:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->ensureScrollWheelAdjusted(I)Z

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;->this$2:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;->this$2:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLinearScroller:Landroid/widget/Scroller;

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    iput-boolean v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsStartingAnimation:Z

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;->this$2:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;->this$2:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->startFadeAnimation(Z)V

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;->this$2:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;->this$2:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAnimationListener:Landroidx/picker/app/SeslTimePickerDialog$2;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/picker/app/SeslTimePickerDialog$2;->this$0:Landroidx/picker/app/SeslTimePickerDialog;

    iput-boolean v1, p0, Landroidx/picker/app/SeslTimePickerDialog;->mIsStartAnimation:Z

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;->this$2:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;->this$2:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_1
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;->this$2:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;

    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;

    iget-object v1, v1, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    const/4 v2, 0x0

    iput v2, v1, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPreviousScrollerY:I

    iget-object v3, v1, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    iget v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->val$delay:I

    neg-int v7, v0

    const/16 v8, 0x22d

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;->this$2:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;

    invoke-direct {v1, p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;-><init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;)V

    const-wide/16 v2, 0x359

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
