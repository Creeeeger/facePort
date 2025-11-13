.class public final Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$6;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$6;->$r8$classId:I

    iput-object p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$6;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$6;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsAmPmAutoFlipped:Z

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroidx/picker/widget/SeslNumberPicker;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslNumberPicker;->setEnabled(Z)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$6;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$6;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iget-boolean v2, v1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, v1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$6;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
