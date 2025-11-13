.class public Landroidx/picker/app/SeslDatePickerDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "SeslDatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroidx/picker/widget/SeslDatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/picker/app/SeslDatePickerDialog$OnDateSetListener;
    }
.end annotation


# instance fields
.field private final mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mDatePicker:Landroidx/picker/widget/SeslDatePicker;

.field private final mDateSetListener:Landroidx/picker/app/SeslDatePickerDialog$OnDateSetListener;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mValidationCallback:Landroidx/picker/widget/SeslDatePicker$ValidationCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroidx/picker/app/SeslDatePickerDialog$OnDateSetListener;III)V
    .locals 3

    .line 83
    invoke-static {p1, p2}, Landroidx/picker/app/SeslDatePickerDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 41
    new-instance p1, Landroidx/picker/app/SeslDatePickerDialog$1;

    invoke-direct {p1, p0}, Landroidx/picker/app/SeslDatePickerDialog$1;-><init>(Landroidx/picker/app/SeslDatePickerDialog;)V

    iput-object p1, p0, Landroidx/picker/app/SeslDatePickerDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 197
    new-instance p1, Landroidx/picker/app/SeslDatePickerDialog$2;

    invoke-direct {p1, p0}, Landroidx/picker/app/SeslDatePickerDialog$2;-><init>(Landroidx/picker/app/SeslDatePickerDialog;)V

    iput-object p1, p0, Landroidx/picker/app/SeslDatePickerDialog;->mValidationCallback:Landroidx/picker/widget/SeslDatePicker$ValidationCallback;

    .line 85
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 86
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 87
    sget v1, Landroidx/picker/R$layout;->sesl_date_picker_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 88
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 90
    sget v1, Landroidx/picker/R$string;->sesl_picker_done:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 91
    sget v1, Landroidx/picker/R$string;->sesl_picker_cancel:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {p0, v2, v1, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 93
    sget v1, Landroidx/picker/R$id;->sesl_datePicker:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/picker/widget/SeslDatePicker;

    iput-object v1, p0, Landroidx/picker/app/SeslDatePickerDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    .line 94
    invoke-virtual {v1, p4, p5, p6, p0}, Landroidx/picker/widget/SeslDatePicker;->init(IIILandroidx/picker/widget/SeslDatePicker$OnDateChangedListener;)V

    .line 95
    invoke-virtual {v1, p1}, Landroidx/picker/widget/SeslDatePicker;->setValidationCallback(Landroidx/picker/widget/SeslDatePicker$ValidationCallback;)V

    .line 96
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/picker/widget/SeslDatePicker;->setDialogWindow(Landroid/view/Window;)V

    .line 97
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result p4

    add-int/2addr p1, p4

    invoke-virtual {v1, p1}, Landroidx/picker/widget/SeslDatePicker;->setDialogPaddingVertical(I)V

    .line 98
    iput-object p3, p0, Landroidx/picker/app/SeslDatePickerDialog;->mDateSetListener:Landroidx/picker/app/SeslDatePickerDialog$OnDateSetListener;

    const-string p1, "input_method"

    .line 100
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Landroidx/picker/app/SeslDatePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/picker/app/SeslDatePickerDialog$OnDateSetListener;III)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 64
    invoke-direct/range {v0 .. v6}, Landroidx/picker/app/SeslDatePickerDialog;-><init>(Landroid/content/Context;ILandroidx/picker/app/SeslDatePickerDialog$OnDateSetListener;III)V

    return-void
.end method

.method static synthetic access$000(Landroidx/picker/app/SeslDatePickerDialog;)Landroidx/picker/widget/SeslDatePicker;
    .locals 0

    .line 29
    iget-object p0, p0, Landroidx/picker/app/SeslDatePickerDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    return-object p0
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 0

    if-nez p1, :cond_1

    .line 105
    invoke-static {p0}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Landroidx/picker/R$style;->Theme_AppCompat_Light_PickerDialog_DatePicker:I

    goto :goto_0

    .line 106
    :cond_0
    sget p0, Landroidx/picker/R$style;->Theme_AppCompat_PickerDialog_DatePicker:I

    :goto_0
    return p0

    :cond_1
    return p1
.end method


# virtual methods
.method public getDatePicker()Landroidx/picker/widget/SeslDatePicker;
    .locals 0

    .line 158
    iget-object p0, p0, Landroidx/picker/app/SeslDatePickerDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    return-object p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 130
    iget-object p1, p0, Landroidx/picker/app/SeslDatePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    .line 131
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

    .line 136
    :cond_1
    iget-object p1, p0, Landroidx/picker/app/SeslDatePickerDialog;->mDateSetListener:Landroidx/picker/app/SeslDatePickerDialog$OnDateSetListener;

    if-eqz p1, :cond_3

    .line 139
    iget-object p1, p0, Landroidx/picker/app/SeslDatePickerDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 140
    iget-object p1, p0, Landroidx/picker/app/SeslDatePickerDialog;->mDateSetListener:Landroidx/picker/app/SeslDatePickerDialog$OnDateSetListener;

    iget-object p2, p0, Landroidx/picker/app/SeslDatePickerDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {p2}, Landroidx/picker/widget/SeslDatePicker;->getYear()I

    move-result v0

    iget-object v1, p0, Landroidx/picker/app/SeslDatePickerDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    .line 141
    invoke-virtual {v1}, Landroidx/picker/widget/SeslDatePicker;->getMonth()I

    move-result v1

    iget-object p0, p0, Landroidx/picker/app/SeslDatePickerDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getDayOfMonth()I

    move-result p0

    .line 140
    invoke-interface {p1, p2, v0, v1, p0}, Landroidx/picker/app/SeslDatePickerDialog$OnDateSetListener;->onDateSet(Landroidx/picker/widget/SeslDatePicker;III)V

    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 113
    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, -0x1

    .line 114
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Landroidx/picker/app/SeslDatePickerDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/4 p1, -0x2

    .line 115
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object p0, p0, Landroidx/picker/app/SeslDatePickerDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public onDateChanged(Landroidx/picker/widget/SeslDatePicker;III)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 190
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "year"

    .line 191
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "month"

    .line 192
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "day"

    .line 193
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 194
    iget-object v2, p0, Landroidx/picker/app/SeslDatePickerDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v2, v0, v1, p1, p0}, Landroidx/picker/widget/SeslDatePicker;->init(IIILandroidx/picker/widget/SeslDatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 178
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 179
    iget-object v1, p0, Landroidx/picker/app/SeslDatePickerDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v1}, Landroidx/picker/widget/SeslDatePicker;->getYear()I

    move-result v1

    const-string/jumbo v2, "year"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    iget-object v1, p0, Landroidx/picker/app/SeslDatePickerDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v1}, Landroidx/picker/widget/SeslDatePicker;->getMonth()I

    move-result v1

    const-string v2, "month"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    iget-object p0, p0, Landroidx/picker/app/SeslDatePickerDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getDayOfMonth()I

    move-result p0

    const-string v1, "day"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
