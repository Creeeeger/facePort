.class public final Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;


# direct methods
.method private constructor <init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/edgelighting/EdgeLightingService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V

    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    sget-boolean v0, Lcom/android/systemui/edgelighting/EdgeLightingService;->sConfigured:Z

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stopService by "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EdgeLightingService"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->notifyEdgeLightingPackageList(Z)V

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/EdgeLightingService;->setProcessForeground(Z)V

    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(Z)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :goto_0
    return-void
.end method
