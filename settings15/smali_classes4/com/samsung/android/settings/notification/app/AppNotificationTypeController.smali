.class public final Lcom/samsung/android/settings/notification/app/AppNotificationTypeController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ClickListener;


# instance fields
.field public mBackend:Lcom/android/settings/notification/NotificationBackend;

.field public mDependentFieldListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

.field public mPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "notification_types"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeController;->mPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeAdapter:Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;

    if-eqz p1, :cond_0

    iput-object p0, p1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mListener:Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ClickListener;

    :cond_0
    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "notification_types"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 4

    invoke-super {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lock_screen_show_notifications"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "notification_badging"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    iget-object p0, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v3}, Lcom/android/settings/notification/NotificationBackend;->getNotificationAlertsEnabledForPackage(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 11

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeController;->mPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mNestedEnable:Z

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    const/4 v1, 0x3

    iput v1, p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->COLUMN_COUNT:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_8

    new-instance v4, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-direct {v4}, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;-><init>()V

    iget-object v5, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v6, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iput-object v6, v4, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->mPackage:Ljava/lang/String;

    iget v5, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    iput v5, v4, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->uId:I

    iget-object v7, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    const/4 v8, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v8, :cond_2

    const/4 v8, 0x2

    if-eq v3, v8, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6}, Lcom/android/settings/notification/NotificationBackend;->getNotificationAlertsEnabledForPackage(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string/jumbo v5, "popup"

    iput-object v5, v4, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->notificationType:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v6, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v5, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-static {v5, v6}, Lcom/android/settings/notification/NotificationBackend;->isAllowNotificationPopUpForPackage(ILjava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->selected:Ljava/lang/Boolean;

    const v5, 0x7f080458

    iput v5, v4, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->imageEntry:I

    iget-object v5, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v6, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v5, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-static {v5, v6}, Lcom/android/settings/notification/NotificationBackend;->getNotificationAlertsEnabledForPackage(ILjava/lang/String;)Z

    iget-object v5, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    const v6, 0x7f1420c2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->title:Ljava/lang/String;

    goto/16 :goto_2

    :cond_2
    iget-object v5, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "notification_badging"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v5, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const v9, 0x20200

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v5, "badge"

    iput-object v5, v4, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->notificationType:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v6, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v5, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6}, Lcom/android/settings/notification/NotificationBackend;->canShowBadge(ILjava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->selected:Ljava/lang/Boolean;

    const v5, 0x7f080456

    iput v5, v4, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->imageEntry:I

    iget-object v5, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    const v6, 0x7f1420b4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->title:Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_show_notifications"

    const/4 v9, -0x2

    invoke-static {v5, v6, v0, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    const-string v5, "lockscreen"

    iput-object v5, v4, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->notificationType:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v6, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v5, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6}, Lcom/android/settings/notification/NotificationBackend;->getLockScreenNotificationVisibilityForPackage(ILjava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    goto :goto_1

    :cond_6
    move v8, v0

    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->selected:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    const v6, 0x7f1420b9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->title:Ljava/lang/String;

    const v5, 0x7f080457

    iput v5, v4, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->imageEntry:I

    :goto_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    iget-object p0, p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeAdapter:Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
