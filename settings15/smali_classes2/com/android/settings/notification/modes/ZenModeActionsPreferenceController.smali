.class public final Lcom/android/settings/notification/modes/ZenModeActionsPreferenceController;
.super Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static $r8$lambda$a4cOGRhnNia5JgFHhNIk_yrZOVQ(Lcom/android/settings/notification/modes/ZenModeActionsPreferenceController;Lcom/android/settings/notification/modes/ZenMode;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p1, p1, Lcom/android/settings/notification/modes/ZenMode;->mId:Ljava/lang/String;

    const-string v1, "MODE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/notification/modes/ZenModeIconPickerFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object v1, p1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 p0, 0x0

    iput p0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iput-object v0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method


# virtual methods
.method public final updateState(Landroidx/preference/Preference;Lcom/android/settings/notification/modes/ZenMode;)V
    .locals 3

    check-cast p1, Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v0, 0x7f143826

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Text(I)V

    const v0, 0x7f0804b6

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Icon(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Enabled(Z)V

    const v0, 0x7f143825

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Text(I)V

    const v0, 0x7f0806ad

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Icon(I)V

    iget-boolean v0, p2, Lcom/android/settings/notification/modes/ZenMode;->mIsManualDnd:Z

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p1, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    iget-boolean v2, v1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mIsEnabled:Z

    if-eq v0, v2, :cond_0

    iput-boolean v0, v1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mIsEnabled:Z

    invoke-virtual {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_0
    new-instance v0, Lcom/android/settings/notification/modes/ZenModeActionsPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/notification/modes/ZenModeActionsPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/modes/ZenModeActionsPreferenceController;Lcom/android/settings/notification/modes/ZenMode;)V

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
