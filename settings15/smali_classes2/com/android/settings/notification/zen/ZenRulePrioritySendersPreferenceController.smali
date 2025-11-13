.class public final Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mHelper:Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;

.field public final mIsMessages:Z

.field public mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field mSelectorClickListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 6

    const-string v0, "zen_mode_settings_category_messages"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    new-instance p2, Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController$2;

    invoke-direct {p2, p0}, Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController$2;-><init>(Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController;->mSelectorClickListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController;->mIsMessages:Z

    new-instance p2, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;

    iget-object v3, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object v5, p0, Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController;->mSelectorClickListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;

    move-object v0, p2

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;-><init>(Landroid/content/Context;ZLcom/android/settings/notification/zen/ZenModeBackend;Lcom/android/settings/notification/NotificationBackend;Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;)V

    iput-object p2, p0, Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController;->mHelper:Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController;->mHelper:Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->displayPreference(Landroidx/preference/PreferenceCategory;)V

    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->KEY:Ljava/lang/String;

    return-object p0
.end method

.method public final getPrioritySenders()I
    .locals 6

    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController;->mIsMessages:Z

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result p0

    sget-object v0, Lcom/android/settings/notification/zen/ZenModeBackend;->ZEN_MODE_FROM_NONE:Ljava/lang/String;

    if-eq p0, v5, :cond_3

    if-eq p0, v4, :cond_2

    if-eq p0, v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v5

    :cond_3
    :goto_0
    return v1

    :cond_4
    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result p0

    sget-object v0, Lcom/android/settings/notification/zen/ZenModeBackend;->ZEN_MODE_FROM_NONE:Ljava/lang/String;

    if-eq p0, v5, :cond_7

    if-eq p0, v4, :cond_6

    if-eq p0, v3, :cond_5

    move v1, v2

    goto :goto_1

    :cond_5
    move v1, v4

    goto :goto_1

    :cond_6
    move v1, v5

    :cond_7
    :goto_1
    return v1

    :cond_8
    :goto_2
    const/16 p0, -0xa

    return p0
.end method

.method public final onResume()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController;->mIsMessages:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController$1;-><init>(Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController;->mHelper:Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->updateSummaries()V

    return-void
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController;->getPrioritySenders()I

    move-result p1

    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, -0xa

    :goto_1
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController;->mHelper:Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->updateState(II)V

    :cond_2
    return-void
.end method
