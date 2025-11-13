.class public final Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$1;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$1;->this$0:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    sget-boolean v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->DEBUG:Z

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$1;->this$0:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->expireNotiLighting(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
