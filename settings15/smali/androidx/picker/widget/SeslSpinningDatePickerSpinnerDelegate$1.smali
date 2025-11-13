.class public final Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic val$delay:I


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Ljava/lang/Object;

    iput p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->val$delay:I

    return-void
.end method

.method public constructor <init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->val$delay:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;

    invoke-direct {v1, p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;-><init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mReservedStartAnimation:Z

    goto :goto_0

    :cond_0
    iput-boolean v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsStartingAnimation:Z

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCustomScroller:Landroid/widget/Scroller;

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    mul-int/lit8 v2, v1, 0x5

    int-to-double v3, v1

    const-wide v5, 0x401599999999999aL    # 5.4

    mul-double/2addr v3, v5

    double-to-int v1, v3

    invoke-virtual {v0, v2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->scrollBy(I)V

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;

    invoke-direct {v2, p0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;-><init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;I)V

    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->val$delay:I

    int-to-long v3, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
