.class public Landroidx/picker/app/SeslDatePickerDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroidx/picker/widget/SeslDatePicker$OnDateChangedListener;


# instance fields
.field public final mBtnFocusChangeListener:Landroidx/picker/app/SeslDatePickerDialog$1;

.field public final mDatePicker:Landroidx/picker/widget/SeslDatePicker;

.field public final mDateSetListener:Lcom/android/settings/datetime/DatePreferenceController;

.field public final mImm:Landroid/view/inputmethod/InputMethodManager;

.field public final mValidationCallback:Landroidx/picker/app/SeslDatePickerDialog$2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/DatePreferenceController;III)V
    .locals 4

    invoke-static {p1}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f150610

    goto :goto_0

    :cond_0
    const v0, 0x7f150614

    :goto_0
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    new-instance p1, Landroidx/picker/app/SeslDatePickerDialog$1;

    invoke-direct {p1, p0}, Landroidx/picker/app/SeslDatePickerDialog$1;-><init>(Landroidx/picker/app/SeslDatePickerDialog;)V

    iput-object p1, p0, Landroidx/picker/app/SeslDatePickerDialog;->mBtnFocusChangeListener:Landroidx/picker/app/SeslDatePickerDialog$1;

    new-instance p1, Landroidx/picker/app/SeslDatePickerDialog$2;

    invoke-direct {p1, p0}, Landroidx/picker/app/SeslDatePickerDialog$2;-><init>(Landroidx/picker/app/SeslDatePickerDialog;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0ad3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AlertDialog;->setView$1(Landroid/view/View;)V

    const v2, 0x7f142b2c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v2, 0x7f142b2b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-virtual {p0, v3, v2, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v2, 0x7f0a0de1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/picker/widget/SeslDatePicker;

    iput-object v2, p0, Landroidx/picker/app/SeslDatePickerDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v2, p3, p4, p5, p0}, Landroidx/picker/widget/SeslDatePicker;->init(IIILandroidx/picker/widget/SeslDatePicker$OnDateChangedListener;)V

    iput-object p1, v2, Landroidx/picker/widget/SeslDatePicker;->mValidationCallback:Landroidx/picker/widget/SeslDatePicker$ValidationCallback;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    iput-object p1, v2, Landroidx/picker/widget/SeslDatePicker;->mDialogWindow:Landroid/view/Window;

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    add-int/2addr p3, p1

    iput p3, v2, Landroidx/picker/widget/SeslDatePicker;->mDialogPaddingVertical:I

    iput-object p2, p0, Landroidx/picker/app/SeslDatePickerDialog;->mDateSetListener:Lcom/android/settings/datetime/DatePreferenceController;

    const-string p1, "input_method"

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Landroidx/picker/app/SeslDatePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method


# virtual methods
.method public getDatePicker()Landroidx/picker/widget/SeslDatePicker;
    .locals 0

    iget-object p0, p0, Landroidx/picker/app/SeslDatePickerDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    return-object p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Landroidx/picker/app/SeslDatePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    const/4 p1, -0x2

    if-eq p2, p1, :cond_2

    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/picker/app/SeslDatePickerDialog;->mDateSetListener:Lcom/android/settings/datetime/DatePreferenceController;

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/picker/app/SeslDatePickerDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->clearFocus()V

    iget-object p1, p0, Landroidx/picker/app/SeslDatePickerDialog;->mDateSetListener:Lcom/android/settings/datetime/DatePreferenceController;

    iget-object p2, p0, Landroidx/picker/app/SeslDatePickerDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    iget-object v0, p2, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroidx/picker/app/SeslDatePickerDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    iget-object v1, v1, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object p0, p0, Landroidx/picker/app/SeslDatePickerDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, p2, v0, v1, p0}, Lcom/android/settings/datetime/DatePreferenceController;->onDateSet(Landroidx/picker/widget/SeslDatePicker;III)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Landroidx/picker/app/SeslDatePickerDialog;->mBtnFocusChangeListener:Landroidx/picker/app/SeslDatePickerDialog$1;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object p0, p0, Landroidx/picker/app/SeslDatePickerDialog;->mBtnFocusChangeListener:Landroidx/picker/app/SeslDatePickerDialog$1;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public onDateChanged(III)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "year"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "month"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "day"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object v2, p0, Landroidx/picker/app/SeslDatePickerDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v2, v0, v1, p1, p0}, Landroidx/picker/widget/SeslDatePicker;->init(IIILandroidx/picker/widget/SeslDatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Landroidx/activity/ComponentDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Landroidx/picker/app/SeslDatePickerDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    iget-object v1, v1, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const-string/jumbo v2, "year"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Landroidx/picker/app/SeslDatePickerDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    iget-object v1, v1, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const-string v2, "month"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Landroidx/picker/app/SeslDatePickerDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const-string v1, "day"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
