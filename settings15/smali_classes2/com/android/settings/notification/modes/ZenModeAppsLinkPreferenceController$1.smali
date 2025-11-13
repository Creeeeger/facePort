.class public final Lcom/android/settings/notification/modes/ZenModeAppsLinkPreferenceController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/notification/modes/ZenModeAppsLinkPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/modes/ZenModeAppsLinkPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModeAppsLinkPreferenceController$1;->this$0:Lcom/android/settings/notification/modes/ZenModeAppsLinkPreferenceController;

    return-void
.end method


# virtual methods
.method public final onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public final onLauncherInfoChanged()V
    .locals 0

    return-void
.end method

.method public final onLoadEntriesCompleted()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeAppsLinkPreferenceController$1;->this$0:Lcom/android/settings/notification/modes/ZenModeAppsLinkPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/modes/ZenModeAppsLinkPreferenceController;->triggerUpdateAppsBypassingDndSummaryText()V

    return-void
.end method

.method public final onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public final onPackageListChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeAppsLinkPreferenceController$1;->this$0:Lcom/android/settings/notification/modes/ZenModeAppsLinkPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/modes/ZenModeAppsLinkPreferenceController;->triggerUpdateAppsBypassingDndSummaryText()V

    return-void
.end method

.method public final onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 7

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeAppsLinkPreferenceController$1;->this$0:Lcom/android/settings/notification/modes/ZenModeAppsLinkPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/modes/ZenModeAppsLinkPreferenceController;->getAppsBypassingDnd(Ljava/util/List;)Landroid/util/ArraySet;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/modes/ZenModeAppsLinkPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/notification/modes/ZenModeAppsLinkPreferenceController;->mZenMode:Lcom/android/settings/notification/modes/ZenMode;

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeAppsLinkPreferenceController;->mSummaryHelper:Lcom/android/settings/notification/modes/ZenModeSummaryHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/android/settings/notification/modes/ZenMode;->getPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/ZenPolicy;->getAllowedChannels()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f143837

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v2, Landroid/icu/text/MessageFormat;

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    const v5, 0x7f143838

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v2, p0, v5}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "count"

    invoke-virtual {p0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lt v1, v4, :cond_1

    const/4 v5, 0x0

    aget-object v5, p1, v5

    const-string v6, "app_1"

    invoke-virtual {p0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lt v1, v3, :cond_1

    const-string v5, "app_2"

    aget-object v4, p1, v4

    invoke-virtual {p0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    const-string v1, "app_3"

    aget-object p1, p1, v3

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2, p0}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/settings/notification/modes/ZenMode;->getPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getAllowedChannels()I

    move-result p1

    if-ne p1, v3, :cond_3

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f143836

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/android/settings/notification/modes/ZenMode;->getPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getAllowedChannels()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_4

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f143834

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method
