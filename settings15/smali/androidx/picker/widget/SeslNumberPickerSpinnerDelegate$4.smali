.class public final Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;


# direct methods
.method public synthetic constructor <init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;I)V
    .locals 0

    iput p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4;->$r8$classId:I

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    iget-boolean v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextModeEnabled:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsLongClicked:Z

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean v2, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v2, :cond_1

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    new-instance v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;

    invoke-direct {v1, p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4$1;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
