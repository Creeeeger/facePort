.class public final Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mHelper:Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;

.field public final mIsMessages:Z

.field public mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field mSelectorClickListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;ZLcom/android/settings/notification/NotificationBackend;)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    new-instance p2, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController$2;

    invoke-direct {p2, p0}, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController$2;-><init>(Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->mSelectorClickListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;

    iput-boolean p4, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->mIsMessages:Z

    new-instance p2, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;

    iget-object v3, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object v5, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->mSelectorClickListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;

    move-object v0, p2

    move-object v1, p1

    move v2, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;-><init>(Landroid/content/Context;ZLcom/android/settings/notification/zen/ZenModeBackend;Lcom/android/settings/notification/NotificationBackend;Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;)V

    iput-object p2, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->mHelper:Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;)Landroid/content/Context;
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

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->mHelper:Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->displayPreference(Landroidx/preference/PreferenceCategory;)V

    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->KEY:Ljava/lang/String;

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->onResume()V

    iget-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->mIsMessages:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController$1;-><init>(Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->mHelper:Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->updateSummaries()V

    return-void
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->mIsMessages:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getPriorityMessageSenders()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getPriorityCallSenders()I

    move-result v1

    :goto_0
    if-eqz v0, :cond_2

    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget p1, p1, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    goto :goto_1

    :cond_1
    const/4 p1, 0x3

    goto :goto_1

    :cond_2
    const/16 p1, -0xa

    :goto_1
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->mHelper:Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;

    invoke-virtual {p0, v1, p1}, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->updateState(II)V

    return-void
.end method
