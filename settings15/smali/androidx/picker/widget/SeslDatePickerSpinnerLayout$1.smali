.class public final Landroidx/picker/widget/SeslDatePickerSpinnerLayout$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;
.implements Landroidx/picker/widget/SeslNumberPicker$OnValueChangeListener;


# instance fields
.field public final synthetic this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;


# direct methods
.method public synthetic constructor <init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$1;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditTextModeChanged(Z)V
    .locals 2

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$1;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setEditTextMode(Z)V

    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mIsEditTextMode:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_3

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object v0, p1, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroidx/picker/widget/SeslNumberPicker;->setEditTextMode(Z)V

    :cond_1
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object v0, p1, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Landroidx/picker/widget/SeslNumberPicker;->setEditTextMode(Z)V

    :cond_2
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean p1, p1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0, v1}, Landroidx/picker/widget/SeslNumberPicker;->setEditTextMode(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onValueChange(Landroidx/picker/widget/SeslNumberPicker;II)V
    .locals 6

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$1;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p1

    if-ne p2, p1, :cond_0

    if-eq p3, v4, :cond_1

    :cond_0
    if-ne p2, v4, :cond_2

    if-ne p3, p1, :cond_2

    :cond_1
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p1, v1, p3}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    sub-int/2addr p3, p2

    invoke-virtual {p1, v1, p3}, Ljava/util/Calendar;->add(II)V

    :goto_0
    move p1, v3

    :goto_1
    move p2, p1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 p1, 0xb

    if-ne p2, p1, :cond_4

    if-eqz p3, :cond_5

    :cond_4
    if-nez p2, :cond_6

    if-ne p3, p1, :cond_6

    :cond_5
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p1, v2, p3}, Ljava/util/Calendar;->set(II)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    sub-int/2addr p3, p2

    invoke-virtual {p1, v2, p3}, Ljava/util/Calendar;->add(II)V

    :goto_2
    move p1, v3

    move p2, v4

    goto :goto_3

    :cond_7
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    sub-int/2addr p3, p2

    invoke-virtual {p1, v4, p3}, Ljava/util/Calendar;->add(II)V

    move p1, v4

    goto :goto_1

    :goto_3
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result p3

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v5, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {p0, p3, v0, v5}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setDate(III)V

    if-nez p1, :cond_8

    if-eqz p2, :cond_9

    :cond_8
    invoke-virtual {p0, v3, v3, p1, p2}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    :cond_9
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mOnSpinnerDateChangedListener:Landroidx/picker/widget/SeslDatePicker$6;

    if-eqz p1, :cond_b

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p3, v2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    iget-object p1, p1, Landroidx/picker/widget/SeslDatePicker$6;->this$0:Landroidx/picker/widget/SeslDatePicker;

    iget-object v0, p1, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p1, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2, p3}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p1, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p1, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-static {v0, p2, p3, p0}, Landroidx/picker/widget/SeslDatePicker;->clearCalendar(Ljava/util/Calendar;III)V

    iget-object v0, p1, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-static {v0, p2, p3, p0}, Landroidx/picker/widget/SeslDatePicker;->clearCalendar(Ljava/util/Calendar;III)V

    iget-object p0, p1, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    iget-object p2, p1, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {p0, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v4

    iget-object p2, p1, Landroidx/picker/widget/SeslDatePicker;->mValidationCallback:Landroidx/picker/widget/SeslDatePicker$ValidationCallback;

    if-eqz p2, :cond_a

    invoke-interface {p2, p0}, Landroidx/picker/widget/SeslDatePicker$ValidationCallback;->onValidationChanged(Z)V

    :cond_a
    invoke-virtual {p1, v3}, Landroidx/picker/widget/SeslDatePicker;->updateSimpleMonthView(Z)V

    invoke-virtual {p1}, Landroidx/picker/widget/SeslDatePicker;->onDateChanged()V

    :cond_b
    return-void

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
