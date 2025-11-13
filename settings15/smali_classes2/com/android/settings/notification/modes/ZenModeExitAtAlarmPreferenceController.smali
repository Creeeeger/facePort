.class public final Lcom/android/settings/notification/modes/ZenModeExitAtAlarmPreferenceController;
.super Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/android/settings/notification/modes/ZenModeExitAtAlarmPreferenceController;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-boolean v0, p2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    new-instance p1, Lcom/android/settings/notification/modes/ZenModeExitAtAlarmPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/modes/ZenModeExitAtAlarmPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/modes/ZenModeExitAtAlarmPreferenceController;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->saveMode(Ljava/util/function/Function;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final updateState(Landroidx/preference/Preference;Lcom/android/settings/notification/modes/ZenMode;)V
    .locals 0

    iget-object p2, p2, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/notification/modes/ZenModeExitAtAlarmPreferenceController;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iget-boolean p0, p2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
