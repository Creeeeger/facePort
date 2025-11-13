.class public final Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;


# direct methods
.method private constructor <init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/edgelighting/EdgeLightingService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.systemui.statusbar.ANIMATING"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "com.samsung.systemui.statusbar.EXPANDED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p2, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    sget-boolean p1, Lcom/android/systemui/edgelighting/EdgeLightingService;->sConfigured:Z

    const-string p1, "EdgeLightingService"

    const-string p2, "ACTION_STATUS_OPEN"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->flushNotiNow()V

    :cond_1
    return-void
.end method
