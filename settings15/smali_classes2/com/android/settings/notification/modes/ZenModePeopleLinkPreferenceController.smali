.class public final Lcom/android/settings/notification/modes/ZenModePeopleLinkPreferenceController;
.super Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mSummaryHelper:Lcom/android/settings/notification/modes/ZenModeSummaryHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/modes/ZenModesBackend;)V
    .locals 1

    const-string v0, "zen_mode_people"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/notification/modes/ZenModesBackend;)V

    new-instance p1, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

    invoke-direct {p1, p2, v0}, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;-><init>(Landroid/content/Context;Lcom/android/settings/notification/modes/ZenModesBackend;)V

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModePeopleLinkPreferenceController;->mSummaryHelper:Lcom/android/settings/notification/modes/ZenModeSummaryHelper;

    return-void
.end method


# virtual methods
.method public final updateState(Landroidx/preference/Preference;Lcom/android/settings/notification/modes/ZenMode;)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p2, Lcom/android/settings/notification/modes/ZenMode;->mId:Ljava/lang/String;

    const-string v2, "MODE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/notification/modes/ZenModePeopleFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v2, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iput-object v0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModePeopleLinkPreferenceController;->mSummaryHelper:Lcom/android/settings/notification/modes/ZenModeSummaryHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/android/settings/notification/modes/ZenMode;->getPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/settings/notification/modes/ZenMode;->getPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/settings/notification/modes/ZenMode;->getPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/settings/notification/modes/ZenMode;->getPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p2

    const/4 v4, 0x4

    invoke-virtual {p2, v4, v2}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result p2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    if-ne v1, v2, :cond_0

    if-ne v3, v2, :cond_0

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f1438a9

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-ne v0, v4, :cond_1

    if-ne v1, v4, :cond_1

    const/4 v0, 0x3

    if-ne v3, v0, :cond_1

    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f1438ac    # 1.9702E38f

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f1438ad

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
