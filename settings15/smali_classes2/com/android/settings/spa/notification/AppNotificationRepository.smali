.class public final Lcom/android/settings/spa/notification/AppNotificationRepository;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/spa/notification/IAppNotificationRepository;


# static fields
.field public static final Companion:Lcom/android/settings/spa/notification/AppNotificationRepository$Companion;


# instance fields
.field public final context:Landroid/content/Context;

.field public final notificationManager:Landroid/app/INotificationManager;

.field public final packageManagers:Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;

.field public final usageStatsManager:Landroid/app/usage/IUsageStatsManager;

.field public final userManager:Landroid/os/IUserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    sget-object v0, Lcom/android/settingslib/spaprivileged/model/app/PackageManagers;->INSTANCE:Lcom/android/settingslib/spaprivileged/model/app/PackageManagers;

    const-string v1, "usagestats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v1

    const-string v2, "asInterface(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "user"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "packageManagers"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/notification/AppNotificationRepository;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/settings/spa/notification/AppNotificationRepository;->packageManagers:Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;

    iput-object v1, p0, Lcom/android/settings/spa/notification/AppNotificationRepository;->usageStatsManager:Landroid/app/usage/IUsageStatsManager;

    iput-object v3, p0, Lcom/android/settings/spa/notification/AppNotificationRepository;->notificationManager:Landroid/app/INotificationManager;

    iput-object v4, p0, Lcom/android/settings/spa/notification/AppNotificationRepository;->userManager:Landroid/os/IUserManager;

    return-void
.end method


# virtual methods
.method public final calculateFrequencySummary(I)Ljava/lang/String;
    .locals 3

    int-to-float v0, p1

    const-wide/16 v1, 0x7

    long-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    const-string v1, "count"

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/spa/notification/AppNotificationRepository;->context:Landroid/content/Context;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v0}, [Lkotlin/Pair;

    move-result-object p1

    const v0, 0x7f141b26

    invoke-static {p0, v0, p1}, Lcom/android/settingslib/spa/framework/util/MessageFormatsKt;->formatString(Landroid/content/Context;I[Lkotlin/Pair;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/spa/notification/AppNotificationRepository;->context:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v0}, [Lkotlin/Pair;

    move-result-object p1

    const v0, 0x7f141b28

    invoke-static {p0, v0, p1}, Lcom/android/settingslib/spa/framework/util/MessageFormatsKt;->formatString(Landroid/content/Context;I[Lkotlin/Pair;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getSentCount(Landroid/content/pm/ApplicationInfo;)I
    .locals 9

    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sub-long v2, v4, v1

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/spa/notification/AppNotificationRepository;->usageStatsManager:Landroid/app/usage/IUsageStatsManager;

    invoke-static {p1}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserId(Landroid/content/pm/ApplicationInfo;)I

    move-result v6

    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/spa/notification/AppNotificationRepository;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v1 .. v8}, Landroid/app/usage/IUsageStatsManager;->queryEventsForPackageForUser(JJILjava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AppNotificationsRepo"

    const-string v1, "Failed IUsageStatsManager.queryEventsForPackageForUser(): "

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    new-instance p1, Lcom/android/settings/spa/notification/AppNotificationRepository$getSentCount$1;

    invoke-direct {p1, v0}, Lcom/android/settings/spa/notification/AppNotificationRepository$getSentCount$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;)V

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v1, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v1}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    invoke-virtual {p1, v1}, Lcom/android/settings/spa/notification/AppNotificationRepository$getSentCount$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_2
    iget p0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    return p0
.end method
