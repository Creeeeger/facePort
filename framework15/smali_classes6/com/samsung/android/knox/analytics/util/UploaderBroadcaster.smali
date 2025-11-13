.class public Lcom/samsung/android/knox/analytics/util/UploaderBroadcaster;
.super Ljava/lang/Object;
.source "UploaderBroadcaster.java"


# static fields
.field private static final blacklist ACTIVATE_KNOX_ANALYTICS_DEVICE_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.action.ACTIVATE_KNOX_ANALYTICS_DEVICE_STATUS"

.field private static final blacklist BROADCAST_DB_SIZE_WARNING_TO_UPLOADER_ACTION:Ljava/lang/String; = "com.samsung.android.knox.analytics.intent.action.DB_SIZE_WARNING_USAGE_INTERNAL"

.field private static final blacklist BROADCAST_STATUS_TO_UPLOADER_ACTION:Ljava/lang/String; = "com.samsung.android.knox.analytics.intent.action.STATUS_INTERNAL"

.field private static final blacklist BROADCAST_STATUS_TO_UPLOADER_EXTRA_KEY:Ljava/lang/String; = "com.samsung.android.knox.analytics.intent.extra.STATUS_INTERNAL"

.field private static final blacklist BROADCAST_STATUS_TO_UPLOADER_OFF_FORCEFUL_VALUE:Ljava/lang/String; = "OFF_FORCEFUL"

.field private static final blacklist BROADCAST_STATUS_TO_UPLOADER_OFF_VALUE:Ljava/lang/String; = "OFF"

.field private static final blacklist BROADCAST_STATUS_TO_UPLOADER_ON_VALUE:Ljava/lang/String; = "ON"

.field private static final blacklist DEACTIVATE_KNOX_ANALYTICS_DEVICE_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.action.DEACTIVATE_KNOX_ANALYTICS_DEVICE_STATUS"

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist UPLOADER_COMPONENT:Ljava/lang/String; = "com.samsung.android.knox.analytics.uploader.service.ServiceReceiver"

.field public static final blacklist UPLOADER_PACKAGENAME:Ljava/lang/String; = "com.samsung.android.knox.analytics.uploader"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/knox/analytics/util/UploaderBroadcaster;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/util/UploaderBroadcaster;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist broadcastAnalyticsStatus(Landroid/content/Context;ZZ)V
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/analytics/util/UploaderBroadcaster;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastAnalyticsStatus("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.analytics.intent.action.STATUS_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.knox.analytics.uploader"

    const-string v3, "com.samsung.android.knox.analytics.uploader.service.ServiceReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/samsung/android/knox/analytics/util/UploaderBroadcaster;->getStatusValue(ZZ)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.knox.analytics.intent.extra.STATUS_INTERNAL"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static blacklist broadcastDbSizeWarning(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/analytics/util/UploaderBroadcaster;->TAG:Ljava/lang/String;

    const-string v1, "broadcastDbSizeWarning()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.analytics.intent.action.DB_SIZE_WARNING_USAGE_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.knox.analytics.uploader"

    const-string v3, "com.samsung.android.knox.analytics.uploader.service.ServiceReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static blacklist broadcastKAStatusToMDM(Landroid/content/Context;ZZZ)V
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/analytics/util/UploaderBroadcaster;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastKAServiceStatusToMDM( start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , isNewActivation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , isForceful:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.samsung.android.mdm"

    if-eqz p1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.ACTIVATE_KNOX_ANALYTICS_DEVICE_STATUS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "isNewActivation"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.DEACTIVATE_KNOX_ANALYTICS_DEVICE_STATUS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "isForceful"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private static blacklist getStatusValue(ZZ)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "ON"

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "OFF_FORCEFUL"

    return-object v0

    :cond_1
    const-string v0, "OFF"

    return-object v0
.end method
