.class public final Lcom/android/settings/notification/modes/ZenModeNotifVisLinkPreferenceController;
.super Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mSummaryBuilder:Lcom/android/settings/notification/modes/ZenModeSummaryHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/modes/ZenModesBackend;)V
    .locals 1

    const-string v0, "notification_visibility"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/notification/modes/ZenModesBackend;)V

    new-instance v0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;-><init>(Landroid/content/Context;Lcom/android/settings/notification/modes/ZenModesBackend;)V

    iput-object v0, p0, Lcom/android/settings/notification/modes/ZenModeNotifVisLinkPreferenceController;->mSummaryBuilder:Lcom/android/settings/notification/modes/ZenModeSummaryHelper;

    return-void
.end method


# virtual methods
.method public final getSummary(Lcom/android/settings/notification/modes/ZenMode;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeNotifVisLinkPreferenceController;->mSummaryBuilder:Lcom/android/settings/notification/modes/ZenModeSummaryHelper;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->getBlockedEffectsSummary(Lcom/android/settings/notification/modes/ZenMode;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateState(Landroidx/preference/Preference;Lcom/android/settings/notification/modes/ZenMode;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p2, p2, Lcom/android/settings/notification/modes/ZenMode;->mId:Ljava/lang/String;

    const-string v1, "MODE_ID"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/notification/modes/ZenModeNotifVisFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object v1, p2, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 p0, 0x0

    iput p0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iput-object v0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p2}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    return-void
.end method
