.class public final Lcom/android/settings/notification/modes/ZenModeMessagesLinkPreferenceController;
.super Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mSummaryHelper:Lcom/android/settings/notification/modes/ZenModeSummaryHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/modes/ZenModesBackend;)V
    .locals 1

    const-string v0, "zen_mode_people_messages"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/notification/modes/ZenModesBackend;)V

    new-instance v0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;-><init>(Landroid/content/Context;Lcom/android/settings/notification/modes/ZenModesBackend;)V

    iput-object v0, p0, Lcom/android/settings/notification/modes/ZenModeMessagesLinkPreferenceController;->mSummaryHelper:Lcom/android/settings/notification/modes/ZenModeSummaryHelper;

    return-void
.end method


# virtual methods
.method public final updateState(Landroidx/preference/Preference;Lcom/android/settings/notification/modes/ZenMode;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p2, Lcom/android/settings/notification/modes/ZenMode;->mId:Ljava/lang/String;

    const-string v2, "MODE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/notification/modes/ZenModeMessagesFragment;

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

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p2}, Lcom/android/settings/notification/modes/ZenMode;->getPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeMessagesLinkPreferenceController;->mSummaryHelper:Lcom/android/settings/notification/modes/ZenModeSummaryHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/settings/notification/modes/ZenModeSummaryHelper$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/settings/notification/modes/ZenModeSummaryHelper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, p2, v1}, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->getEnabledCategories(Landroid/service/notification/ZenPolicy;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    const p2, 0x7f1438a3

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f143869

    invoke-virtual {p0, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
