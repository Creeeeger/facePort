.class public final Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;
.super Landroidx/picker/app/SeslDatePickerDialog;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mBtnFocusChangeListener:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$1;

.field public final mDatePicker:Landroidx/picker/widget/SeslDatePicker;

.field public final mDateSetListener:Lcom/android/settings/datausage/AppDataUsage$2;

.field public mEndTime:J

.field public final mImm:Landroid/view/inputmethod/InputMethodManager;

.field public mStartTime:J

.field public final mTabHost:Landroid/widget/TabHost;

.field public final mTabListener:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;

.field public mToast:Landroid/widget/Toast;

.field public final mValidationCallback:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$3;

.field public final themeContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settings/datausage/AppDataUsage$2;III)V
    .locals 8

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/picker/app/SeslDatePickerDialog;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/DatePreferenceController;III)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mToast:Landroid/widget/Toast;

    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$1;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mBtnFocusChangeListener:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$1;

    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;)V

    new-instance v1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$3;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;)V

    const-string v2, "initialize()"

    const-string v3, "DatePickerAlertDialog"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v2, 0xb

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {v4, v2, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    invoke-virtual {v4, v2, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    invoke-virtual {v4, v2, v5}, Ljava/util/Calendar;->set(II)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "initialize(), the current time:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mStartTime:J

    const/4 v2, 0x5

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v2, v5}, Ljava/util/Calendar;->set(II)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "init end month:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "init end day:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mEndTime:J

    iput-object p2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDateSetListener:Lcom/android/settings/datausage/AppDataUsage$2;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->themeContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0888

    invoke-virtual {v2, v3, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setView$1(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, -0x2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v4, 0x3e99999a    # 0.3f

    invoke-virtual {v2, v4}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/Window;->addFlags(I)V

    const v2, 0x7f1409b9

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {p0, v4, v2, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v2, 0x7f1409b6

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v2, 0x7f0a0dac

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/picker/widget/SeslDatePicker;

    iput-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v2, p3, p4, p5, p0}, Landroidx/picker/widget/SeslDatePicker;->init(IIILandroidx/picker/widget/SeslDatePicker$OnDateChangedListener;)V

    iput-object v1, v2, Landroidx/picker/widget/SeslDatePicker;->mValidationCallback:Landroidx/picker/widget/SeslDatePicker$ValidationCallback;

    const-string p3, "input_method"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const p2, 0x7f0a06b5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TabHost;

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p1}, Landroid/widget/TabHost;->setup()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f140dad

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p2, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    const p3, 0x1020011

    invoke-virtual {p2, p3}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {p2, p1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f140dac

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p2, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {p2, p1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method


# virtual methods
.method public final getDatePicker()Landroidx/picker/widget/SeslDatePicker;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    return-object p0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

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
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDateSetListener:Lcom/android/settings/datausage/AppDataUsage$2;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->clearFocus()V

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDateSetListener:Lcom/android/settings/datausage/AppDataUsage$2;

    iget-wide v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mStartTime:J

    iget-wide v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mEndTime:J

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "onDateSet(), mStartTime:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", mEndTime:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "AppDataUsage"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p1, Lcom/android/settings/datausage/AppDataUsage$2;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    iget-boolean p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mIsCHNDataUsage:Z

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleController:Lcom/android/settings/datausage/AppDataUsageCycleController;

    if-eqz v0, :cond_3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/datausage/AppDataUsageCycleController;->updateView(JJZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/picker/app/SeslDatePickerDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mBtnFocusChangeListener:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$1;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mBtnFocusChangeListener:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$1;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public final onDateChanged(III)V
    .locals 8

    const-string v0, "DatePickerAlertDialog"

    const-string/jumbo v1, "onDateChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "year:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " month:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " day:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x2

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p2, 0x5

    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f140dad

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    if-eqz v6, :cond_0

    const-string v5, "mTabHost is not null"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v5

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "currentTab is:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "current time is start time"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mStartTime:J

    goto :goto_0

    :cond_1
    add-int/2addr p3, v2

    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->set(II)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v3, "current time is end time,  month:"

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "current time is end time, day:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mEndTime:J

    :goto_0
    iget-wide p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mStartTime:J

    iget-wide v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mEndTime:J

    cmp-long p1, p1, v5

    const/4 p2, -0x1

    if-ltz p1, :cond_4

    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f140e1a

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->themeContext:Landroid/content/Context;

    if-eqz p2, :cond_5

    iget-object p3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mToast:Landroid/widget/Toast;

    if-nez p3, :cond_3

    invoke-static {p2, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mToast:Landroid/widget/Toast;

    goto :goto_1

    :cond_3
    invoke-virtual {p3, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_5
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mStartTime:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide p2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mStartTime:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", mEndTime:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mEndTime:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/picker/app/SeslDatePickerDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "year"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "month"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "day"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v2, v0, v1, p1, p0}, Landroidx/picker/widget/SeslDatePicker;->init(IIILandroidx/picker/widget/SeslDatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Landroidx/picker/app/SeslDatePickerDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    iget-object v1, v1, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const-string/jumbo v2, "year"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    iget-object v1, v1, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const-string/jumbo v2, "month"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const-string v1, "day"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
