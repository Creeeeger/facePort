.class public Lcom/samsung/android/core/pm/mm/MaintenanceModeNotificationService;
.super Landroid/app/Service;
.source "MaintenanceModeNotificationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/core/pm/mm/MaintenanceModeNotificationService$DismissalReceiver;
    }
.end annotation


# static fields
.field private static final blacklist CHANNEL_ID:Ljava/lang/String; = "maintenance_mode_channel"

.field private static final blacklist CHANNEL_NAME:Ljava/lang/String; = "maintenance_mode"

.field private static final blacklist NOTIFICATION_ID:I = 0x24cb3

.field private static final blacklist OUTRO_COMPONENT:Landroid/content/ComponentName;

.field private static final blacklist TAG:Ljava/lang/String; = "MaintenanceMode"


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateNotificationChannel(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeNotificationService;->createNotificationChannel(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smregisterNotification(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeNotificationService;->registerNotification(Landroid/content/Context;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/core/pm/mm/MaintenanceModeNotificationService;->OUTRO_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static blacklist buildNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeNotificationService;->OUTRO_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/samsung/android/core/pm/mm/MaintenanceModeNotificationService$DismissalReceiver;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v1, v4, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$Builder;

    const-string v5, "maintenance_mode_channel"

    invoke-direct {v2, p0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x108048c

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10407a1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10407a0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104079f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    return-object v5
.end method

.method private static blacklist createNotificationChannel(Landroid/content/Context;)V
    .locals 5

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "maintenance_mode"

    const/4 v3, 0x3

    const-string v4, "maintenance_mode_channel"

    invoke-direct {v1, v4, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private static blacklist registerNotification(Landroid/content/Context;)V
    .locals 3

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x24cb3

    invoke-static {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeNotificationService;->buildNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeNotificationService;->createNotificationChannel(Landroid/content/Context;)V

    const v0, 0x24cb3

    invoke-static {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeNotificationService;->buildNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeNotificationService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method
