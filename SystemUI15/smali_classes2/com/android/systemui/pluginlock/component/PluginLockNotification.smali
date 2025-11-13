.class public Lcom/android/systemui/pluginlock/component/PluginLockNotification;
.super Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final KEY_ICON_ONLY:Ljava/lang/String; = "lockscreen_minimizing_notification"

.field private static final KEY_NOTIFICATION_TYPE:Ljava/lang/String; = "notification_type"

.field private static final KEY_NOTIFICATION_VISIBILITY:Ljava/lang/String; = "notification_visibility"

.field private static final KEY_VISIBILITY:Ljava/lang/String; = "lock_screen_show_notifications"

.field private static final TAG:Ljava/lang/String; = "PluginLockNotification"

.field private static final UPDATE_LOCKSTAR_DATA:Ljava/lang/String; = "update_lockstar_data"

.field private static final UPDATE_LOCKSTAR_DATA_ITEM:Ljava/lang/String; = "update_lockstar_data_item"

.field private static final VALUE_CARD:I = 0x0

.field private static final VALUE_ICON_ONLY:I = 0x1


# instance fields
.field private final mCallBack:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mIsDlsData:Z

.field private final mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field private final mUris:[Landroid/net/Uri;

.field private mVisibility:I


# direct methods
.method public static synthetic $r8$lambda$MPiLN55tyjyLZWAwjJPPNf_lPSA(Lcom/android/systemui/pluginlock/component/PluginLockNotification;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->lambda$new$0(Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginLockMediator;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mIsDlsData:Z

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mVisibility:I

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/net/Uri;

    const-string p3, "lockscreen_minimizing_notification"

    invoke-static {p3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const-string p3, "lock_screen_show_notifications"

    invoke-static {p3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    aput-object p3, p2, p1

    iput-object p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mUris:[Landroid/net/Uri;

    new-instance p1, Lcom/android/systemui/pluginlock/component/PluginLockNotification$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/pluginlock/component/PluginLockNotification;)V

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mCallBack:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iput-object p4, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    return-void
.end method

.method private getCurrentNotificationType()I
    .locals 3

    const-string v0, "lockscreen_minimizing_notification"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsInt(Ljava/lang/String;I)I

    move-result p0

    const-string v0, "getCurrentNotificationType() getSettings: "

    const-string v2, ", Type : "

    invoke-static {p0, v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/2addr p0, v1

    const-string v1, "PluginLockNotification"

    invoke-static {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/net/Uri;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onChange() uri: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockNotification"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onChange() mCallbackValue: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , mVisibility: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mVisibility:I

    invoke-static {v2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v2, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mVisibility:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f40

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->getCurrentNotificationType()I

    move-result v2

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mVisibility:I

    const-string v2, "lock_screen_show_notifications"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_2

    :cond_1
    const-string p0, "onChange() ignored"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->updateLockStarStoredData(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->recover()V

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, "onChange() wrong state"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method private loadData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isDlsData()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mIsDlsData:Z

    return-void
.end method

.method private registerCallback(II)V
    .locals 3

    const-string v0, "registerCallback() type: "

    const-string v1, ", visibility: "

    const-string v2, "PluginLockNotification"

    invoke-static {p1, p2, v0, v1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mVisibility:I

    iput p1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mCallBack:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mUris:[Landroid/net/Uri;

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method private setNotificationType(I)V
    .locals 2

    const-string/jumbo v0, "setNotificationType() value: "

    const-string v1, ", putSettings : "

    invoke-static {p1, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    const-string v1, "PluginLockNotification"

    invoke-static {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v0, "lockscreen_minimizing_notification"

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSystem(Ljava/lang/String;I)V

    return-void
.end method

.method private setNotificationVisibility(I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const-string/jumbo v0, "setNotificationVisibility: "

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PluginLockNotification"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "lock_screen_show_notifications"

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private unregisterCallback()V
    .locals 2

    const-string v0, "PluginLockNotification"

    const-string/jumbo v1, "unregisterCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mVisibility:I

    iput v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mCallBack:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method private updateLockStarStoredData(Landroid/net/Uri;)V
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "lock_screen_show_notifications"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "extras"

    const-string/jumbo v4, "update_lockstar_data_item"

    const-string/jumbo v5, "update_lockstar_data"

    const-string v6, "action"

    if-eqz v2, :cond_0

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "notification_visibility"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string v1, "lockscreen_minimizing_notification"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "notification_type"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->getCurrentNotificationType()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateLockStarStoredData() bundle"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PluginLockNotification"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onEventReceived(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 7

    const-string v0, "apply()"

    const-string v1, "PluginLockNotification"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->loadData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getNotiType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/model/NotificationData;->getVisibility()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getNotificationState()I

    move-result v3

    const-string v4, "apply() state:"

    const-string v5, ", notiType:"

    const-string v6, ", notiVisibility:"

    invoke-static {v3, v0, v4, v5, v6}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2, v1, v4}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    const/4 v4, -0x2

    if-ne v3, v4, :cond_0

    const-string p0, "apply() skip!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v4, -0x3

    if-ne v3, v4, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    if-eq v2, p1, :cond_2

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->getCurrentNotificationType()I

    move-result p1

    const-string p2, "lock_screen_show_notifications"

    const/4 v3, 0x1

    invoke-virtual {p0, p2, v3}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setNotificationBackup(II)V

    const-string v3, "apply() Backup curType: "

    const-string v4, ", curVisibility: "

    const-string v5, ", Set notiType: "

    invoke-static {p1, p2, v3, v4, v5}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", notiVisibility: "

    invoke-static {p1, v0, p2, v2, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->setNotificationVisibility(I)V

    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->setNotificationType(I)V

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->registerCallback(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public recover()V
    .locals 2

    const-string v0, "PluginLockNotification"

    const-string v1, "recover()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mVisibility:I

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setNotificationBackup(II)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setNotificationState(I)V

    return-void
.end method

.method public reset(Z)V
    .locals 2

    const-string v0, "reset()"

    const-string v1, "PluginLockNotification"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->unregisterCallback()V

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getNotificationState()I

    move-result p1

    const-string v0, "reset() state: "

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, -0x2

    if-eq p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getNotificationBackupVisibility()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getNotificationBackupType()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->setNotificationVisibility(I)V

    invoke-direct {p0, v1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->setNotificationType(I)V

    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setNotificationBackup(II)V

    :cond_1
    return-void
.end method

.method public bridge synthetic setInstanceState(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setInstanceState(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    return-void
.end method

.method public bridge synthetic setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    return-void
.end method

.method public update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 4

    const-string/jumbo v0, "update()"

    const-string v1, "PluginLockNotification"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->loadData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getNotificationState()I

    move-result v0

    const-string/jumbo v2, "update() state: "

    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x2

    if-ne v0, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mIsDlsData:Z

    if-eqz v2, :cond_0

    const-string/jumbo p0, "update() skip!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->unregisterCallback()V

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/NotificationData;->getVisibility()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/NotificationData;->getNotiType()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string/jumbo v0, "update() notiType: "

    const-string v3, ", visibility: "

    invoke-static {p2, p1, v0, v3, v1}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eq p1, v2, :cond_2

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->setNotificationVisibility(I)V

    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->setNotificationType(I)V

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->registerCallback(II)V

    goto :goto_0

    :cond_2
    const-string p1, "disable & restore backup value "

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getNotificationBackupVisibility()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->setNotificationVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getNotificationBackupType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->setNotificationType(I)V

    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setNotificationBackup(II)V

    :goto_0
    return-void
.end method
