.class public final Lcom/android/settings/notification/AppBubbleListPreferenceController;
.super Lcom/android/settings/notification/app/AppConversationListPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public createConversationPref(Landroid/service/notification/ConversationChannelWrapper;)Landroidx/preference/Preference;
    .locals 3

    new-instance v0, Lcom/android/settings/notification/AppBubbleListPreferenceController$ConversationPreference;

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0161

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->populateConversationPreference(Landroid/service/notification/ConversationChannelWrapper;Landroidx/preference/Preference;)V

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->bubblePreference:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/android/settings/notification/AppBubbleListPreferenceController$ConversationPreference;->mOnClickBubbles:Z

    new-instance v1, Lcom/android/settings/notification/AppBubbleListPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settings/notification/AppBubbleListPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/AppBubbleListPreferenceController;Landroid/service/notification/ConversationChannelWrapper;Lcom/android/settings/notification/AppBubbleListPreferenceController$ConversationPreference;)V

    iput-object v1, v0, Lcom/android/settings/notification/AppBubbleListPreferenceController$ConversationPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public filterAndSortConversations(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->mConversationComparator:Lcom/android/settings/notification/app/AppConversationListPreferenceController$$ExternalSyntheticLambda0;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/settings/notification/AppBubbleListPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/AppBubbleListPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/notification/AppBubbleListPreferenceController;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bubble_conversations"

    return-object p0
.end method

.method public final getTitleResId()I
    .locals 1

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->bubblePreference:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const p0, 0x7f140871

    goto :goto_0

    :cond_0
    const p0, 0x7f14086e

    :goto_0
    return p0
.end method

.method public final isAvailable()Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Lcom/android/settings/notification/NotificationBackend;->onlyHasDefaultChannel(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "miscellaneous"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return v1

    :cond_3
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->bubblePreference:I

    if-nez p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public final onResume(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ShortcutInfo;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Ljava/util/List;)V
    .locals 0

    invoke-super/range {p0 .. p7}, Lcom/android/settings/notification/app/NotificationPreferenceController;->onResume(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ShortcutInfo;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/settings/notification/app/AppConversationListPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/app/AppConversationListPreferenceController$1;-><init>(Lcom/android/settings/notification/app/AppConversationListPreferenceController;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method public final populateList$1()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->populateList$1()V

    iget-object p0, p0, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->mPreference:Landroidx/preference/PreferenceCategory;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-super {p0, p1}, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
