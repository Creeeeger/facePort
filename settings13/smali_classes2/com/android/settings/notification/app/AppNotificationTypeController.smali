.class public Lcom/android/settings/notification/app/AppNotificationTypeController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "AppNotificationTypeController.java"

# interfaces
.implements Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ClickListener;


# instance fields
.field private mBackend:Lcom/android/settings/notification/NotificationBackend;

.field private mDependentFieldListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

.field private mPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p3}, Lcom/android/settings/notification/app/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 36
    iput-object p3, p0, Lcom/android/settings/notification/app/AppNotificationTypeController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 37
    iput-object p2, p0, Lcom/android/settings/notification/app/AppNotificationTypeController;->mDependentFieldListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    return-void
.end method

.method private isPackageLaunchable(Ljava/lang/String;)Z
    .locals 3

    .line 125
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 127
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x20200

    .line 129
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 131
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 132
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private updateEntry()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/notification/app/AppNotificationTypeInfo;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_8

    .line 81
    new-instance v3, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-direct {v3}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;-><init>()V

    .line 82
    iget-object v4, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v4, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->setmPackage(Ljava/lang/String;)V

    .line 83
    iget-object v4, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v4, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->setuId(I)V

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    goto/16 :goto_2

    .line 107
    :cond_0
    iget-object v4, p0, Lcom/android/settings/notification/app/AppNotificationTypeController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v5, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v6, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v5, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v4, v6, v5}, Lcom/android/settings/notification/NotificationBackend;->getNotificationAlertsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string/jumbo v4, "popup"

    .line 110
    invoke-virtual {v3, v4}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->setNotificationType(Ljava/lang/String;)V

    .line 111
    iget-object v4, p0, Lcom/android/settings/notification/app/AppNotificationTypeController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v5, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v6, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v5, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v4, v6, v5}, Lcom/android/settings/notification/NotificationBackend;->isAllowNotificationPopUpForPackage(Ljava/lang/String;I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->setSelected(Ljava/lang/Boolean;)V

    .line 112
    sget v4, Lcom/android/settings/R$drawable;->noti_type_headsup:I

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->setImageEntry(I)V

    .line 113
    iget-object v4, p0, Lcom/android/settings/notification/app/AppNotificationTypeController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v5, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v6, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v5, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v4, v6, v5}, Lcom/android/settings/notification/NotificationBackend;->getNotificationAlertsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->setShow(Ljava/lang/Boolean;)V

    .line 114
    iget-object v4, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->sec_app_notification_pop_up:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 96
    :cond_2
    iget-object v5, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "notification_badging"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v4, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    .line 97
    invoke-direct {p0, v4}, Lcom/android/settings/notification/app/AppNotificationTypeController;->isPackageLaunchable(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    const-string v4, "badge"

    .line 100
    invoke-virtual {v3, v4}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->setNotificationType(Ljava/lang/String;)V

    .line 101
    iget-object v4, p0, Lcom/android/settings/notification/app/AppNotificationTypeController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v5, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v6, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v5, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v4, v6, v5}, Lcom/android/settings/notification/NotificationBackend;->canShowBadge(Ljava/lang/String;I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->setSelected(Ljava/lang/Boolean;)V

    .line 102
    sget v4, Lcom/android/settings/R$drawable;->noti_type_badge:I

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->setImageEntry(I)V

    .line 103
    iget-object v4, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->sec_app_notification_badge:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->setTitle(Ljava/lang/String;)V

    goto :goto_2

    .line 86
    :cond_4
    iget-object v5, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_show_notifications"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    const-string v5, "lockscreen"

    .line 90
    invoke-virtual {v3, v5}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->setNotificationType(Ljava/lang/String;)V

    .line 91
    iget-object v5, p0, Lcom/android/settings/notification/app/AppNotificationTypeController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v6, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v7, v6, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v6, v6, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v5, v7, v6}, Lcom/android/settings/notification/NotificationBackend;->getLockScreenNotificationVisibilityForPackage(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    goto :goto_1

    :cond_6
    move v4, v1

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->setSelected(Ljava/lang/Boolean;)V

    .line 92
    iget-object v4, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->sec_app_notification_lock_screen:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->setTitle(Ljava/lang/String;)V

    .line 93
    sget v4, Lcom/android/settings/R$drawable;->noti_type_lock:I

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->setImageEntry(I)V

    .line 118
    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "notification_types"

    .line 61
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeController;->mPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->getAppNotificationTypeAdapter()Lcom/android/settings/notification/app/AppNotificationTypeAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->getAppNotificationTypeAdapter()Lcom/android/settings/notification/app/AppNotificationTypeAdapter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->setListener(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ClickListener;)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "notification_types"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 4

    .line 47
    invoke-super {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "notification_badging"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationTypeController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    .line 52
    invoke-virtual {v0, v3, p0}, Lcom/android/settings/notification/NotificationBackend;->getNotificationAlertsEnabledForPackage(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public performClick(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 141
    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeController;->mDependentFieldListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;->onFieldValueChanged()V

    .line 142
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string/jumbo p0, "popup"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const v0, 0x8cb8

    const-string v1, "_on"

    const-string v2, "_off"

    if-nez p0, :cond_2

    const-string p0, "lockscreen"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_2

    .line 145
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "App_Lock"

    if-eqz p3, :cond_1

    .line 147
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 149
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "NSTE0035"

    invoke-static {p1, p2, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 156
    :cond_2
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "App_Popup"

    if-eqz p3, :cond_3

    .line 158
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 160
    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "NSTE0037"

    invoke-static {p1, p2, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_2
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 71
    iget-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeController;->mPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->setNestedScroll(Z)V

    const/4 v0, 0x3

    .line 73
    iput v0, p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->COLUMN_COUNT:I

    .line 74
    invoke-direct {p0}, Lcom/android/settings/notification/app/AppNotificationTypeController;->updateEntry()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->updateEntries(Ljava/util/ArrayList;)V

    .line 75
    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->notifyAdapter()V

    return-void
.end method
