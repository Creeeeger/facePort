.class public final Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;
.super Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mEndSetter:Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda2;

.field public final mLongDayFormat:Ljava/text/SimpleDateFormat;

.field public final mParent:Landroidx/fragment/app/Fragment;

.field public mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

.field public final mShortDayFormat:Ljava/text/SimpleDateFormat;

.field public final mStartSetter:Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda2;


# direct methods
.method public static synthetic $r8$lambda$M0azf3lzoHeZKY5fU0IIP8x2vgs(Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;IILcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda2;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/settings/notification/modes/ZenModeTimePickerFragment;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/settings/notification/modes/ZenModeTimePickerFragment;-><init>(Landroid/content/Context;IILcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda2;)V

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "ZenModeSetSchedulePreferenceController"

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static $r8$lambda$i0KwHfjRt6iBF4iCBfHvJ9uWSes(Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;Landroid/service/notification/ZenModeConfig$ScheduleInfo;Lcom/android/settings/notification/modes/ZenMode;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule;->setConditionId(Landroid/net/Uri;)V

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p2, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Landroid/service/notification/SystemZenRules;->getTriggerDescriptionForScheduleTime(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/app/AutomaticZenRule;->setTriggerDescription(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settings/notification/modes/ZenModesBackend;)V
    .locals 1

    const-string v0, "schedule"

    invoke-direct {p0, p1, v0, p3}, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/notification/modes/ZenModesBackend;)V

    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p3, "EEEEE"

    invoke-direct {p1, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;->mShortDayFormat:Ljava/text/SimpleDateFormat;

    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p3, "EEEE"

    invoke-direct {p1, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;->mLongDayFormat:Ljava/text/SimpleDateFormat;

    new-instance p1, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda2;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;I)V

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;->mStartSetter:Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda2;

    new-instance p1, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda2;

    const/4 p3, 0x1

    invoke-direct {p1, p0, p3}, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;I)V

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;->mEndSetter:Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda2;

    iput-object p2, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;->mParent:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public static updateScheduleDays(Landroid/service/notification/ZenModeConfig$ScheduleInfo;IZ)Z
    .locals 5

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    array-length v4, v3

    if-ge v1, v4, :cond_0

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, p2, :cond_3

    if-eqz p2, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p1

    new-array p1, p1, [I

    :goto_2
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p2

    if-ge v2, p2, :cond_2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    iput-object p1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    const/4 p0, 0x1

    return p0

    :cond_3
    return v2
.end method


# virtual methods
.method public setupDayToggles(Landroid/view/ViewGroup;Landroid/service/notification/ZenModeConfig$ScheduleInfo;Ljava/util/Calendar;)V
    .locals 10

    const/4 v0, 0x7

    new-array v1, v0, [I

    invoke-virtual {p3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v0, :cond_1

    if-le v2, v0, :cond_0

    move v2, v5

    :cond_0
    aput v2, v1, v4

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_1
    if-ge v2, v0, :cond_5

    packed-switch v2, :pswitch_data_0

    move v4, v3

    goto :goto_2

    :pswitch_0
    const v4, 0x7f0a04b2

    goto :goto_2

    :pswitch_1
    const v4, 0x7f0a04b1

    goto :goto_2

    :pswitch_2
    const v4, 0x7f0a04b0

    goto :goto_2

    :pswitch_3
    const v4, 0x7f0a04af

    goto :goto_2

    :pswitch_4
    const v4, 0x7f0a04ae

    goto :goto_2

    :pswitch_5
    const v4, 0x7f0a04ad

    goto :goto_2

    :pswitch_6
    const v4, 0x7f0a04ac

    :goto_2
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    if-nez v4, :cond_2

    goto :goto_5

    :cond_2
    aget v6, v1, v2

    invoke-virtual {p3, v0, v6}, Ljava/util/Calendar;->set(II)V

    iget-object v7, p2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v7, :cond_4

    move v7, v3

    :goto_3
    iget-object v8, p2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    array-length v9, v8

    if-ge v7, v9, :cond_4

    aget v8, v8, v7

    if-ne v8, v6, :cond_3

    move v7, v5

    goto :goto_4

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    move v7, v3

    :goto_4
    iget-object v8, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;->mShortDayFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;->mShortDayFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;->mLongDayFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/ToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    new-instance v7, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, p2, v6}, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;Landroid/service/notification/ZenModeConfig$ScheduleInfo;I)V

    invoke-virtual {v4, v7}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setHorizontalScrollBarEnabled(Z)V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateScheduleMode(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/ZenModeConfig$ScheduleInfo;",
            ")",
            "Ljava/util/function/Function<",
            "Lcom/android/settings/notification/modes/ZenMode;",
            "Lcom/android/settings/notification/modes/ZenMode;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)V

    return-object v0
.end method

.method public final updateState(Landroidx/preference/Preference;Lcom/android/settings/notification/modes/ZenMode;)V
    .locals 6

    iget-object p2, p2, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p2, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a0ef7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v2, v1, v0}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    iget-object v4, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;->mStartSetter:Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda2;

    new-instance v5, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, v2, v0, v4}, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;IILcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda2;)V

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a05bc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4, v1, v0}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    iget-object v2, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;->mEndSetter:Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda2;

    new-instance v3, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v1, v0, v2}, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;IILcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda2;)V

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a0d00

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    mul-int/lit8 v1, v1, 0x3c

    iget v2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    mul-int/lit8 v2, v2, 0x3c

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    add-int/2addr v2, v0

    if-lt v1, v2, :cond_0

    add-int/lit16 v2, v2, 0x5a0

    sub-int/2addr v2, v1

    int-to-long v0, v2

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    goto :goto_0

    :cond_0
    sub-int/2addr v2, v1

    int-to-long v0, v2

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/time/Duration;->toHoursPart()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/time/Duration;->minusHours(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMinutesPart()I

    move-result v0

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f1438d3

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const p2, 0x7f0a04b6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;->setupDayToggles(Landroid/view/ViewGroup;Landroid/service/notification/ZenModeConfig$ScheduleInfo;Ljava/util/Calendar;)V

    return-void
.end method
