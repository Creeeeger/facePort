.class public final Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic val$delay:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->$r8$classId:I

    iput-object p3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Ljava/lang/Object;

    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->val$delay:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;

    invoke-direct {v1, p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mReservedStartAnimation:Z

    goto :goto_5

    :cond_0
    iput-boolean v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    iget-object v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCustomScroller:Landroid/widget/Scroller;

    iput-object v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    iget v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    if-eq v2, v3, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    neg-int v4, v1

    :goto_0
    sub-int/2addr v2, v3

    iget-boolean v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    const/4 v5, 0x5

    if-nez v3, :cond_2

    if-ge v2, v5, :cond_2

    move v6, v2

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    if-nez v3, :cond_3

    if-ge v2, v5, :cond_3

    int-to-float v2, v2

    const v3, 0x3ecccccd    # 0.4f

    add-float/2addr v2, v3

    goto :goto_2

    :cond_3
    const v2, 0x40accccd    # 5.4f

    :goto_2
    iget-boolean v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v3, :cond_4

    move v6, v4

    goto :goto_3

    :cond_4
    mul-int/2addr v6, v1

    :goto_3
    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v4, v1

    :goto_4
    invoke-virtual {v0, v6}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->scrollBy(I)V

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    const/4 v2, 0x1

    invoke-direct {v1, v4, v2, p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;-><init>(IILjava/lang/Object;)V

    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->val$delay:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
