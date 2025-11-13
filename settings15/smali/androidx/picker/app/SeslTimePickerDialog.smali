.class public Landroidx/picker/app/SeslTimePickerDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroidx/picker/widget/SeslTimePicker$OnTimeChangedListener;


# instance fields
.field public final mBtnFocusChangeListener:Landroidx/picker/app/SeslTimePickerDialog$1;

.field public final mImm:Landroid/view/inputmethod/InputMethodManager;

.field public mIsStartAnimation:Z

.field public final mTimePicker:Landroidx/picker/widget/SeslTimePicker;

.field public final mTimeSetListener:Landroidx/picker/app/SeslTimePickerDialog$OnTimeSetListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/picker/app/SeslTimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 2

    invoke-static {p1}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f150611

    goto :goto_0

    :cond_0
    const v0, 0x7f150615

    :goto_0
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    new-instance p1, Landroidx/picker/app/SeslTimePickerDialog$1;

    invoke-direct {p1, p0}, Landroidx/picker/app/SeslTimePickerDialog$1;-><init>(Landroidx/picker/app/SeslTimePickerDialog;)V

    iput-object p1, p0, Landroidx/picker/app/SeslTimePickerDialog;->mBtnFocusChangeListener:Landroidx/picker/app/SeslTimePickerDialog$1;

    iput-object p2, p0, Landroidx/picker/app/SeslTimePickerDialog;->mTimeSetListener:Landroidx/picker/app/SeslTimePickerDialog$OnTimeSetListener;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0b11

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AlertDialog;->setView$1(Landroid/view/View;)V

    const v0, 0x7f142b2c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v0, 0x7f142b2b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const p1, 0x7f0a101d

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/picker/widget/SeslTimePicker;

    iput-object p1, p0, Landroidx/picker/app/SeslTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/picker/widget/SeslTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    invoke-virtual {p1, p3}, Landroidx/picker/widget/SeslTimePicker;->setHour(I)V

    invoke-virtual {p1, p4}, Landroidx/picker/widget/SeslTimePicker;->setMinute(I)V

    iget-object p1, p1, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iput-object p0, p1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mOnTimeChangedListener:Landroidx/picker/widget/SeslTimePicker$OnTimeChangedListener;

    const p1, 0x7f142b4f

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Landroidx/picker/app/SeslTimePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 p1, -0x2

    const/4 v0, 0x0

    if-eq p2, p1, :cond_4

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Landroidx/picker/app/SeslTimePickerDialog;->mIsStartAnimation:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Landroidx/picker/app/SeslTimePickerDialog;->mTimeSetListener:Landroidx/picker/app/SeslTimePickerDialog$OnTimeSetListener;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/picker/app/SeslTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->clearFocus()V

    iget-object p1, p0, Landroidx/picker/app/SeslTimePickerDialog;->mTimeSetListener:Landroidx/picker/app/SeslTimePickerDialog$OnTimeSetListener;

    iget-object p2, p0, Landroidx/picker/app/SeslTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    iget-object v1, p2, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-virtual {v1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->getHour()I

    move-result v1

    iget-object v2, p0, Landroidx/picker/app/SeslTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    iget-object v2, v2, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iget-object v2, v2, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object v2, v2, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget v2, v2, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    invoke-interface {p1, p2, v1, v2}, Landroidx/picker/app/SeslTimePickerDialog$OnTimeSetListener;->onTimeSet(Landroidx/picker/widget/SeslTimePicker;II)V

    :cond_2
    iget-object p1, p0, Landroidx/picker/app/SeslTimePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Landroidx/picker/app/SeslTimePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_5
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Landroidx/picker/app/SeslTimePickerDialog;->mBtnFocusChangeListener:Landroidx/picker/app/SeslTimePickerDialog$1;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Landroidx/picker/app/SeslTimePickerDialog;->mBtnFocusChangeListener:Landroidx/picker/app/SeslTimePickerDialog$1;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/picker/app/SeslTimePickerDialog;->mIsStartAnimation:Z

    iget-object p1, p0, Landroidx/picker/app/SeslTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    new-instance v0, Landroidx/picker/app/SeslTimePickerDialog$2;

    invoke-direct {v0, p0}, Landroidx/picker/app/SeslTimePickerDialog$2;-><init>(Landroidx/picker/app/SeslTimePickerDialog;)V

    iget-object p0, p1, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    const-string v1, "hm"

    invoke-static {p1, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "a"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/16 v1, 0x189

    const/16 v2, 0x152

    const/16 v3, 0x11b

    iget-object v4, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object v5, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroidx/picker/widget/SeslNumberPicker;

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v3, v6}, Landroidx/picker/widget/SeslNumberPicker;->startAnimation(ILandroidx/picker/app/SeslTimePickerDialog$2;)V

    invoke-virtual {v5, v2, v6}, Landroidx/picker/widget/SeslNumberPicker;->startAnimation(ILandroidx/picker/app/SeslTimePickerDialog$2;)V

    invoke-virtual {v4, v1, v0}, Landroidx/picker/widget/SeslNumberPicker;->startAnimation(ILandroidx/picker/app/SeslTimePickerDialog$2;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v3, v6}, Landroidx/picker/widget/SeslNumberPicker;->startAnimation(ILandroidx/picker/app/SeslTimePickerDialog$2;)V

    invoke-virtual {v4, v2, v0}, Landroidx/picker/widget/SeslNumberPicker;->startAnimation(ILandroidx/picker/app/SeslTimePickerDialog$2;)V

    invoke-virtual {p0, v1, v6}, Landroidx/picker/widget/SeslNumberPicker;->startAnimation(ILandroidx/picker/app/SeslTimePickerDialog$2;)V

    :goto_0
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "hour"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "minute"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Landroidx/picker/app/SeslTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    const-string v3, "is24hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/picker/widget/SeslTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    iget-object p1, p0, Landroidx/picker/app/SeslTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p1, v0}, Landroidx/picker/widget/SeslTimePicker;->setHour(I)V

    iget-object p0, p0, Landroidx/picker/app/SeslTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p0, v1}, Landroidx/picker/widget/SeslTimePicker;->setMinute(I)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Landroidx/activity/ComponentDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Landroidx/picker/app/SeslTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    iget-object v1, v1, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-virtual {v1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->getHour()I

    move-result v1

    const-string v2, "hour"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Landroidx/picker/app/SeslTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    iget-object v1, v1, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget v1, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    const-string v2, "minute"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Landroidx/picker/app/SeslTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iget-boolean p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIs24HourView:Z

    const-string v1, "is24hour"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public onTimeChanged(II)V
    .locals 0

    return-void
.end method
