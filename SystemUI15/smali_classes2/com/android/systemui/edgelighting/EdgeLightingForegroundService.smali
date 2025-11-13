.class public Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;
.super Landroid/app/Service;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public CHANNEL_TAG:Ljava/lang/String;

.field public mScreenStateReceiver:Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "EdgeLightingForegroundService"

    const-string/jumbo v1, "stopForeground service"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v1, "edge_lighting_chnnel_id"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const v2, 0x7f13058b

    invoke-virtual {p0, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;->CHANNEL_TAG:Ljava/lang/String;

    new-instance v2, Landroid/app/NotificationChannel;

    iget-object v4, p0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;->CHANNEL_TAG:Ljava/lang/String;

    invoke-direct {v2, v1, v4, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "Edge lighting"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, "group_key_lighting"

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f08078d

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const-string v1, "EdgeLightingForegroundService"

    const-string/jumbo v2, "startForeground service"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x1000

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;I)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method
