.class public final Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/widget/SeslNumberPicker$OnValueChangeListener;
.implements Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;


# direct methods
.method public synthetic constructor <init>(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;I)V
    .locals 0

    iput p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditTextModeChanged(Z)V
    .locals 2

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setEditTextMode(Z)V

    iget-boolean v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object v0, p1, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroidx/picker/widget/SeslNumberPicker;->setEditTextMode(Z)V

    :cond_1
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean p1, p1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Landroidx/picker/widget/SeslNumberPicker;->setEditTextMode(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onValueChange(Landroidx/picker/widget/SeslNumberPicker;II)V
    .locals 3

    iget p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1, p2}, Landroidx/picker/widget/SeslNumberPicker;->setEnabled(Z)V

    :cond_0
    iget-boolean p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsAmPmAutoFlipped:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsAmPmAutoFlipped:Z

    goto/16 :goto_2

    :cond_1
    iget-boolean p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsAm:Z

    if-eqz p1, :cond_2

    if-eqz p3, :cond_a

    :cond_2
    if-nez p1, :cond_3

    if-ne p3, p2, :cond_3

    goto/16 :goto_2

    :cond_3
    if-nez p3, :cond_4

    goto :goto_0

    :cond_4
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsAm:Z

    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->updateAmPmControl()V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->onTimeChanged()V

    iget-boolean p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/widget/EditText;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-boolean p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIs24HourView:Z

    if-nez p2, :cond_7

    iget-boolean p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsAm:Z

    const/16 p3, 0xc

    if-nez p2, :cond_6

    if-eq p1, p3, :cond_6

    add-int/lit8 v0, p1, 0xc

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_7

    if-ne p1, p3, :cond_7

    goto :goto_1

    :cond_7
    move v0, p1

    :goto_1
    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    :cond_8
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/widget/EditText;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_2

    :cond_9
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setMinute(I)V

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->selectAll()V

    :cond_a
    :goto_2
    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->onTimeChanged()V

    return-void

    :pswitch_1
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iget-boolean v0, p1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIs24HourView:Z

    if-nez v0, :cond_10

    iget-boolean v0, p1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    if-nez v0, :cond_10

    iget-char v0, p1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourFormat:C

    const/16 v1, 0x4b

    const/4 v2, 0x0

    if-ne v0, v1, :cond_b

    move v0, v2

    goto :goto_3

    :cond_b
    const/16 v0, 0xc

    :goto_3
    const/16 v1, 0xb

    if-ne p2, v1, :cond_c

    if-eq p3, v0, :cond_d

    :cond_c
    if-ne p2, v0, :cond_10

    if-ne p3, v1, :cond_10

    :cond_d
    iget-object p2, p1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object p3, p2, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget p3, p3, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    const/4 v0, 0x1

    if-eqz p3, :cond_e

    move p3, v0

    goto :goto_4

    :cond_e
    move p3, v2

    :goto_4
    iput-boolean p3, p1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsAm:Z

    invoke-virtual {p2, v2}, Landroidx/picker/widget/SeslNumberPicker;->setEnabled(Z)V

    iget-object p2, p2, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean p3, p2, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz p3, :cond_f

    iget p3, p2, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    iget v1, p2, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-eq p3, v1, :cond_f

    move v2, v0

    :cond_f
    invoke-virtual {p2, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    iput-boolean v0, p1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsAmPmAutoFlipped:Z

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance p3, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$6;

    const/4 v0, 0x1

    invoke-direct {p3, v0, p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$6;-><init>(ILjava/lang/Object;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_10
    invoke-virtual {p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->onTimeChanged()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
