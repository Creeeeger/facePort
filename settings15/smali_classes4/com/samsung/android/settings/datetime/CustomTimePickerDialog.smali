.class public final Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/widget/SeslTimePicker$OnTimeChangedListener;
.implements Landroidx/picker/widget/SeslTimePicker$OnEditTextModeChangedListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEndTime:I

.field public mIs24HourFormat:Z

.field public mStartTime:I

.field public mTabIndex:I

.field public final mTimePicker:Landroidx/picker/widget/SeslTimePicker;

.field public final mTimePickerDialog:Landroid/view/View;

.field public final timePickerChangeListener:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;)V
    .locals 1

    const v0, 0x7f1504b0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTimePickerDialog:Landroid/view/View;

    iput-object p1, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mStartTime:I

    iput p3, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mEndTime:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTabIndex:I

    iput-object p4, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->timePickerChangeListener:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const p4, 0x7f0d09c1

    invoke-virtual {p3, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTimePickerDialog:Landroid/view/View;

    invoke-virtual {p0, p3}, Landroidx/appcompat/app/AlertDialog;->setView$1(Landroid/view/View;)V

    iget-object p3, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTimePickerDialog:Landroid/view/View;

    const p4, 0x7f0a0fac

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/picker/widget/SeslTimePicker;

    iput-object p3, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    iget-object p3, p3, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iput-object p0, p3, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mOnEditTextModeChangedListener:Landroidx/picker/widget/SeslTimePicker$OnEditTextModeChangedListener;

    iput-object p0, p3, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mOnTimeChangedListener:Landroidx/picker/widget/SeslTimePicker$OnTimeChangedListener;

    iget-object p3, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTimePickerDialog:Landroid/view/View;

    const p4, 0x7f0a0fad

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p3}, Lcom/google/android/material/tabs/TabLayout;->seslSetSubTabStyle()V

    iget p4, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTabIndex:I

    invoke-virtual {p3, p4}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :cond_0
    new-instance p4, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog$1;

    invoke-direct {p4, p0}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog$1;-><init>(Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;)V

    invoke-virtual {p3, p4}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener$1(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f140d53

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p4, p0, v0}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p3, p4}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f14230f

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog$$ExternalSyntheticLambda0;

    const/4 p4, 0x1

    invoke-direct {p3, p0, p4}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;I)V

    const/4 p4, -0x2

    invoke-virtual {p0, p4, p1, p3}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->onUpdateHourFormat()V

    iget p1, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mStartTime:I

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->updateTime(II)V

    const/4 p1, 0x1

    iget p2, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mEndTime:I

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->updateTime(II)V

    iget p1, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTabIndex:I

    if-nez p1, :cond_1

    iget p1, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mStartTime:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mEndTime:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->updatePicker(I)V

    return-void
.end method


# virtual methods
.method public final onTimeChanged(II)V
    .locals 0

    mul-int/lit8 p1, p1, 0x3c

    add-int/2addr p1, p2

    iget p2, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTabIndex:I

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->updateTime(II)V

    return-void
.end method

.method public final onUpdateHourFormat()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "time_12_24"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "24"

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    const-string v3, "12"

    if-eqz v1, :cond_1

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    move-object v3, v2

    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mIs24HourFormat:Z

    iget-object p0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->onUpdateHourFormat()V

    iget-object p0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTimePickerDialog:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final updatePicker(I)V
    .locals 2

    div-int/lit8 v0, p1, 0x3c

    rem-int/lit8 p1, p1, 0x3c

    iget-object v1, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {v1, v0}, Landroidx/picker/widget/SeslTimePicker;->setHour(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslTimePicker;->setMinute(I)V

    return-void
.end method

.method public final updateTime(II)V
    .locals 4

    div-int/lit8 v0, p2, 0x3c

    rem-int/lit8 v1, p2, 0x3c

    iget-boolean v2, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mIs24HourFormat:Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    :goto_0
    invoke-virtual {v3, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTimePickerDialog:Landroid/view/View;

    const v1, 0x7f0a0fad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "a"

    const-string v2, " "

    if-nez p1, :cond_2

    iput p2, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mStartTime:I

    iget-object p1, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mContext:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/samsung/android/settings/datetime/CustomTimePickerUtils;->getTimeText(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    iget-boolean p0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mIs24HourFormat:Z

    if-nez p0, :cond_1

    invoke-static {p1, v2}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-direct {p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {p2, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->subText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->updateView()V

    goto :goto_1

    :cond_2
    iput p2, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mEndTime:I

    iget-object p1, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mContext:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/samsung/android/settings/datetime/CustomTimePickerUtils;->getTimeText(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    iget-boolean p0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mIs24HourFormat:Z

    if-nez p0, :cond_3

    invoke-static {p1, v2}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-direct {p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {p2, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->subText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->updateView()V

    :goto_1
    return-void
.end method
