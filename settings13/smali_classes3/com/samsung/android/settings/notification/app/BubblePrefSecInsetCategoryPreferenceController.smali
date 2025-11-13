.class public Lcom/samsung/android/settings/notification/app/BubblePrefSecInsetCategoryPreferenceController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "BubblePrefSecInsetCategoryPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bubble_pref_inset"

    return-object p0
.end method

.method public hasValidConversation(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 56
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAvailable()Z
    .locals 5

    .line 31
    invoke-super {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-nez v0, :cond_1

    return v1

    .line 37
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isFloatingIconBubble()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 41
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isDefaultChannel()Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    .line 44
    :cond_3
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz p0, :cond_4

    move v1, v3

    :cond_4
    return v1

    .line 47
    :cond_5
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v4, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v2, v4, v0}, Lcom/android/settings/notification/NotificationBackend;->getConversations(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/app/BubblePrefSecInsetCategoryPreferenceController;->hasValidConversation(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isFloatingIconBubble()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v0, v2, p0}, Lcom/android/settings/notification/NotificationBackend;->hasSentValidMsg(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_6

    move v1, v3

    :cond_6
    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    const/4 p0, 0x0

    .line 52
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method
