.class public final Lcom/android/settings/notification/zen/ZenModePeoplePreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final KEY:Ljava/lang/String;

.field public final mSummaryBuilder:Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;

.field public final mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "zen_mode_behavior_people"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModePeoplePreferenceController;->KEY:Ljava/lang/String;

    new-instance p2, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;

    invoke-direct {p2, p1}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/notification/zen/ZenModePeoplePreferenceController;->mSummaryBuilder:Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;

    const-string p2, "user"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModePeoplePreferenceController;->mUm:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModePeoplePreferenceController;->KEY:Ljava/lang/String;

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModePeoplePreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isRestrictedProfile()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 12

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->getZenMode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    move-object v1, p1

    check-cast v1, Landroidx/preference/SecPreference;

    invoke-static {v1, v0}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    iget-object v1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModePeoplePreferenceController;->mSummaryBuilder:Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x8

    invoke-static {v1, v4}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v5

    const/16 v6, 0x10

    const/4 v7, 0x4

    if-nez v5, :cond_0

    invoke-static {v1, v7}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0x100

    invoke-static {v1, v5}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v1, v6}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez v3, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    invoke-static {v1, v4}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v8

    if-eqz v8, :cond_1

    iget v8, v1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-nez v8, :cond_1

    invoke-static {v1, v7}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v8

    if-eqz v8, :cond_1

    iget v8, v1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    if-nez v8, :cond_1

    if-lez v3, :cond_1

    move v8, v0

    goto :goto_1

    :cond_1
    move v8, v2

    :goto_1
    iget v9, v1, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    if-gez v9, :cond_2

    move v9, v2

    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " mCurrentAllowState: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ZenModeSettings"

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v4}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v1, v7}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v1, v6}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v1

    if-nez v1, :cond_3

    move v2, v0

    :cond_3
    if-eqz v5, :cond_4

    if-nez v9, :cond_4

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v0, 0x7f142907

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    if-eqz v8, :cond_5

    if-eqz v9, :cond_6

    :cond_5
    if-nez v3, :cond_7

    if-ne v9, v0, :cond_7

    :cond_6
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v0, 0x7f142906

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_7
    if-lez v3, :cond_9

    if-eqz v2, :cond_8

    if-nez v9, :cond_8

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f120041

    invoke-virtual {p0, v1, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_8
    if-ne v9, v0, :cond_9

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f120040

    invoke-virtual {p0, v1, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_9
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v0, 0x7f142908

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_a
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f1438a3

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_3
    return-void
.end method
