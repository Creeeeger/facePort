.class public final Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/widget/SeslTimePicker$OnTimeChangedListener;
.implements Landroidx/picker/widget/SeslTimePicker$OnEditTextModeChangedListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mIs24HourFormat:Z

.field public final mTabLayout:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;

.field public final mTimePicker:Landroidx/picker/widget/SeslTimePicker;

.field public mTimePickerChangeListeners:Ljava/util/List;

.field public final mTimePickerDialog:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4

    const v0, 0x7f15033f

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePickerDialog:Landroid/view/View;

    iput-object p1, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d087e

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePickerDialog:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setView$1(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePickerDialog:Landroid/view/View;

    const v1, 0x7f0a0d49

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/picker/widget/SeslTimePicker;

    iput-object v0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    iget-object v0, v0, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iput-object p0, v0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mOnEditTextModeChangedListener:Landroidx/picker/widget/SeslTimePicker$OnEditTextModeChangedListener;

    iput-object p0, v0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mOnTimeChangedListener:Landroidx/picker/widget/SeslTimePicker$OnTimeChangedListener;

    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePickerDialog:Landroid/view/View;

    const v1, 0x7f0a0d4a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTabLayout:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14238b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;I)V

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0, v1}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f141fb2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;I)V

    const/4 v1, -0x2

    invoke-virtual {p0, v1, p1, v0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->onUpdateHourFormat$1()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTabLayout:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;

    new-instance v0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$1;-><init>(Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;)V

    new-instance v1, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$1;

    invoke-direct {v3, p1, v0}, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$1;-><init>(Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$1;)V

    invoke-virtual {p1, v3}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener$1(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    iget-object v0, p1, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTimes:[I

    const/4 v3, 0x0

    aput p2, v0, v3

    const/4 p2, 0x1

    aput p3, v0, p2

    iput-object v1, p1, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTimeFormatter:Landroidx/arch/core/util/Function;

    array-length p2, v0

    invoke-static {v3, p2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$$ExternalSyntheticLambda1;

    invoke-direct {p3, p1}, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;)V

    invoke-interface {p2, p3}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    iget p2, p1, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTabIndex:I

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p2, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result p3

    if-eq p3, v2, :cond_0

    iget v0, p2, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    if-ne p3, v0, :cond_0

    iget p2, p1, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTabIndex:I

    iget-object p1, p1, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTimes:[I

    aget p1, p1, p2

    div-int/lit8 p2, p1, 0x3c

    rem-int/lit8 p1, p1, 0x3c

    iget-object p3, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p3, p2}, Landroidx/picker/widget/SeslTimePicker;->setHour(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p2, p1}, Landroidx/picker/widget/SeslTimePicker;->setMinute(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTabLayout:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;

    invoke-virtual {p0, v3}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab not attached to a TabLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final onTimeChanged(II)V
    .locals 0

    mul-int/lit8 p1, p1, 0x3c

    add-int/2addr p1, p2

    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTabLayout:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;

    iget p2, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTabIndex:I

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->updateTime(II)V

    return-void
.end method

.method public final onTimeSet(III)V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePickerChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_3

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePickerChangeListeners:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$TimePickerChangeListener;

    if-eqz v2, :cond_2

    check-cast v2, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {p2, p3}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0x1d19

    if-nez p1, :cond_0

    iget-object v6, v2, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v6, v3}, Landroid/app/UiModeManager;->setCustomNightModeStart(Ljava/time/LocalTime;)V

    invoke-virtual {v2}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v3}, Ljava/time/LocalTime;->getHour()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    invoke-virtual {v3}, Ljava/time/LocalTime;->getMinute()I

    move-result v8

    add-int/2addr v8, v7

    int-to-long v7, v8

    const-string v9, "display_night_theme_on_time"

    invoke-static {v6, v9, v7, v8}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-virtual {v3}, Ljava/time/LocalTime;->getHour()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    invoke-virtual {v3}, Ljava/time/LocalTime;->getMinute()I

    move-result v3

    add-int/2addr v3, v6

    int-to-long v6, v3

    const/16 v3, 0x1d46

    invoke-static {v5, v3, v6, v7}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_1

    :cond_0
    if-ne p1, v4, :cond_1

    iget-object v6, v2, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v6, v3}, Landroid/app/UiModeManager;->setCustomNightModeEnd(Ljava/time/LocalTime;)V

    invoke-virtual {v2}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v3}, Ljava/time/LocalTime;->getHour()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    invoke-virtual {v3}, Ljava/time/LocalTime;->getMinute()I

    move-result v8

    add-int/2addr v8, v7

    int-to-long v7, v8

    const-string v9, "display_night_theme_off_time"

    invoke-static {v6, v9, v7, v8}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-virtual {v3}, Ljava/time/LocalTime;->getHour()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    invoke-virtual {v3}, Ljava/time/LocalTime;->getMinute()I

    move-result v3

    add-int/2addr v3, v6

    int-to-long v6, v3

    const/16 v3, 0x1d47

    invoke-static {v5, v3, v6, v7}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_1
    :goto_1
    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->updateDarkModeSchdeuledTimePreferences(Z)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final onUpdateHourFormat$1()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "time_12_24"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "24"

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    const-string v4, "12"

    if-eqz v1, :cond_1

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    move-object v4, v3

    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mIs24HourFormat:Z

    iget-object v1, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/picker/widget/SeslTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTabLayout:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTimes:[I

    array-length v0, v0

    invoke-static {v2, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->onUpdateHourFormat$1()V

    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePickerDialog:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
