.class public final Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mManagedButton:I

.field public mMode:I

.field public final synthetic this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 5

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v1

    const/4 v2, 0x0

    iput v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mMode:I

    iput v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    iget-object v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v3, v3, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean v4, v3, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIncrementVirtualButtonPressed:Z

    if-eqz v4, :cond_0

    iput-boolean v2, v3, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIncrementVirtualButtonPressed:Z

    iget-object v4, v3, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    iget v3, v3, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDecrementVirtualButtonPressed:Z

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDecrementVirtualButtonPressed:Z

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    invoke-virtual {v1, v2, v2, v0, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    :cond_1
    return-void
.end method

.method public final run()V
    .locals 8

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v1

    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mMode:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_5

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    if-eq v2, v5, :cond_3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean v2, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDecrementVirtualButtonPressed:Z

    if-nez v2, :cond_2

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDecrementVirtualButtonPressed:Z

    xor-int/2addr v1, v5

    iput-boolean v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDecrementVirtualButtonPressed:Z

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    invoke-virtual {v1, v4, v4, v0, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean v3, v2, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIncrementVirtualButtonPressed:Z

    if-nez v3, :cond_4

    iget-object v2, v2, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v6, v3

    invoke-virtual {v2, p0, v6, v7}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIncrementVirtualButtonPressed:Z

    xor-int/2addr v2, v5

    iput-boolean v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIncrementVirtualButtonPressed:Z

    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    invoke-virtual {v2, v4, p0, v0, v1}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    goto :goto_0

    :cond_5
    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    if-eq v2, v5, :cond_7

    if-eq v2, v3, :cond_6

    goto :goto_0

    :cond_6
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iput-boolean v5, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDecrementVirtualButtonPressed:Z

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    invoke-virtual {v1, v4, v4, v0, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    goto :goto_0

    :cond_7
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iput-boolean v5, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIncrementVirtualButtonPressed:Z

    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    invoke-virtual {v2, v4, p0, v0, v1}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    :goto_0
    return-void
.end method
