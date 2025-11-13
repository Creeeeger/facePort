.class public final Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    iget-object v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Ljava/lang/Object;

    check-cast v2, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    iget-object v2, v2, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Ljava/lang/Object;

    check-cast v2, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iput v1, v2, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    iget-object v3, v2, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    iget v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->val$delay:I

    neg-int v7, v0

    iget-boolean v0, v2, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x359

    :goto_0
    move v8, v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x22d

    goto :goto_0

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;

    invoke-direct {v1, p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;)V

    const-wide/16 v2, 0x359

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted(I)Z

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLinearScroller:Landroid/widget/Scroller;

    iput-object v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    iput-boolean v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAnimationListener:Landroidx/picker/app/SeslTimePickerDialog$2;

    if-eqz p0, :cond_2

    iget-object p0, p0, Landroidx/picker/app/SeslTimePickerDialog$2;->this$0:Landroidx/picker/app/SeslTimePickerDialog;

    iput-boolean v1, p0, Landroidx/picker/app/SeslTimePickerDialog;->mIsStartAnimation:Z

    :cond_2
    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Ljava/lang/Object;

    check-cast v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4;

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean v2, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v2, :cond_3

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
