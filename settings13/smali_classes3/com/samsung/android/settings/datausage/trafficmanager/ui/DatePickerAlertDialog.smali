.class public Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;
.super Landroidx/picker/app/SeslDatePickerDialog;
.source "DatePickerAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$OnDateSetListener;
    }
.end annotation


# instance fields
.field private final mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mDatePicker:Landroidx/picker/widget/SeslDatePicker;

.field private final mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$OnDateSetListener;

.field mEndTime:J

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field mStartTime:J

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mToast:Landroid/widget/Toast;

.field private final mValidationCallback:Landroidx/picker/widget/SeslDatePicker$ValidationCallback;

.field final themeContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDatePicker(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;)Landroidx/picker/widget/SeslDatePicker;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTabHost(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;)Landroid/widget/TabHost;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$OnDateSetListener;IIII)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    .line 93
    invoke-direct/range {v0 .. v5}, Landroidx/picker/app/SeslDatePickerDialog;-><init>(Landroid/content/Context;Landroidx/picker/app/SeslDatePickerDialog$OnDateSetListener;III)V

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mToast:Landroid/widget/Toast;

    .line 41
    new-instance p6, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$1;

    invoke-direct {p6, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$1;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;)V

    iput-object p6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 58
    new-instance p6, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;

    invoke-direct {p6, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;)V

    iput-object p6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 266
    new-instance p6, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$3;

    invoke-direct {p6, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$3;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;)V

    iput-object p6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mValidationCallback:Landroidx/picker/widget/SeslDatePicker$ValidationCallback;

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->initialize()V

    .line 95
    iput-object p2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$OnDateSetListener;

    .line 96
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->themeContext:Landroid/content/Context;

    .line 97
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 99
    sget v1, Lcom/android/settings/R$layout;->sec_data_usage_date_picker:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 100
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 101
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 102
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 103
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 104
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 105
    sget v0, Lcom/android/settings/R$string;->common_done:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 106
    sget v0, Lcom/android/settings/R$string;->common_cancel:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 107
    sget v0, Lcom/android/settings/R$id;->sem_datePicker:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/picker/widget/SeslDatePicker;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    .line 108
    invoke-virtual {v0, p3, p4, p5, p0}, Landroidx/picker/widget/SeslDatePicker;->init(IIILandroidx/picker/widget/SeslDatePicker$OnDateChangedListener;)V

    .line 109
    invoke-virtual {v0, p6}, Landroidx/picker/widget/SeslDatePicker;->setValidationCallback(Landroidx/picker/widget/SeslDatePicker$ValidationCallback;)V

    const-string p3, "input_method"

    .line 110
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 111
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->initTab(Landroid/view/View;)V

    return-void
.end method

.method private initTab(Landroid/view/View;)V
    .locals 2

    .line 134
    sget v0, Lcom/android/settings/R$id;->from_to_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TabHost;

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    .line 135
    invoke-virtual {p1}, Landroid/widget/TabHost;->setup()V

    .line 137
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->edit_event_start_short:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 138
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const v1, 0x1020011

    .line 139
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 140
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 141
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 143
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->edit_event_end_short:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 146
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 147
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 148
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {p1, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method

.method private initialize()V
    .locals 5

    const-string v0, "DatePickerAlertDialog"

    const-string v1, "initialize()"

    .line 115
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 117
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 118
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 119
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v2, 0xb

    const/4 v3, 0x0

    .line 120
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 121
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 122
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 123
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize(), the current time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mStartTime:J

    const/4 v2, 0x5

    .line 126
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 127
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init end month:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init end day:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mEndTime:J

    return-void
.end method


# virtual methods
.method public getDatePicker()Landroidx/picker/widget/SeslDatePicker;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    return-object p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 162
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    .line 163
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    const/4 p1, -0x2

    if-eq p2, p1, :cond_2

    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 168
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$OnDateSetListener;

    if-eqz p1, :cond_3

    .line 170
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 172
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    iget-wide v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mStartTime:J

    iget-wide v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mEndTime:J

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$OnDateSetListener;->onDateSet(Landroidx/picker/widget/SeslDatePicker;JJ)V

    goto :goto_0

    .line 176
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 154
    invoke-super {p0, p1}, Landroidx/picker/app/SeslDatePickerDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, -0x1

    .line 155
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/4 p1, -0x2

    .line 156
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public onDateChanged(Landroidx/picker/widget/SeslDatePicker;III)V
    .locals 7

    const-string p1, "DatePickerAlertDialog"

    const-string v0, "onDateChanged()"

    .line 183
    invoke-static {p1, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "year:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " month:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " day:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 186
    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p2, 0x2

    .line 187
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->set(II)V

    const/4 p3, 0x5

    .line 188
    invoke-virtual {v0, p3, p4}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xb

    const/4 v3, 0x0

    .line 189
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 190
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 191
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 192
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 193
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/android/settings/R$string;->edit_event_start_short:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 195
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    if-eqz v5, :cond_0

    const-string v4, "mTabHost is not null"

    .line 196
    invoke-static {p1, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v4

    .line 200
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentTab is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p2, "current time is start time"

    .line 202
    invoke-static {p1, p2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mStartTime:J

    goto :goto_0

    :cond_1
    add-int/2addr p4, v1

    .line 205
    invoke-virtual {v0, p3, p4}, Ljava/util/Calendar;->set(II)V

    .line 206
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current time is end time,  month:"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "current time is end time, day:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mEndTime:J

    .line 211
    :goto_0
    iget-wide p2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mStartTime:J

    iget-wide v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mEndTime:J

    cmp-long p2, p2, v4

    const/4 p3, -0x1

    if-ltz p2, :cond_4

    .line 212
    invoke-virtual {p0, p3}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 213
    invoke-virtual {p0, p3}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 216
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/android/settings/R$string;->end_date_latter_start_date_warning:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 217
    iget-object p3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->themeContext:Landroid/content/Context;

    if-eqz p3, :cond_5

    .line 218
    iget-object p4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mToast:Landroid/widget/Toast;

    if-nez p4, :cond_3

    .line 219
    invoke-static {p3, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mToast:Landroid/widget/Toast;

    goto :goto_1

    .line 221
    :cond_3
    invoke-virtual {p4, p2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :goto_1
    iget-object p2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mToast:Landroid/widget/Toast;

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 226
    :cond_4
    invoke-virtual {p0, p3}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 227
    invoke-virtual {p0, p3}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 230
    :cond_5
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mStartTime:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mStartTime:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ", mEndTime:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mEndTime:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 259
    invoke-super {p0, p1}, Landroidx/picker/app/SeslDatePickerDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "year"

    .line 260
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "month"

    .line 261
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "day"

    .line 262
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 263
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v2, v0, v1, p1, p0}, Landroidx/picker/widget/SeslDatePicker;->init(IIILandroidx/picker/widget/SeslDatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 247
    invoke-super {p0}, Landroidx/picker/app/SeslDatePickerDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v1}, Landroidx/picker/widget/SeslDatePicker;->getYear()I

    move-result v1

    const-string v2, "year"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 249
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v1}, Landroidx/picker/widget/SeslDatePicker;->getMonth()I

    move-result v1

    const-string v2, "month"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 250
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getDayOfMonth()I

    move-result p0

    const-string v1, "day"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public updateDate(III)V
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/picker/widget/SeslDatePicker;->updateDate(III)V

    return-void
.end method
