.class public final Lcom/android/settings/notification/app/AppBubbleNotificationSettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/android/settings/notification/app/AppBubbleNotificationSettings;->getPreferenceControllers(Landroid/content/Context;Lcom/android/settings/notification/app/AppBubbleNotificationSettings;Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
