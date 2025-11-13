.class public final Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;


# direct methods
.method private constructor <init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    const-string v0, "BR_TSP_EVENT :onReceive : return: isInteractive"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "info"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object v1, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "receive: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " info : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xb

    if-eq v0, p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    const-string p1, "BR_TSP_EVENT :onReceive : not double tap"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p1, "location"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getFloatArrayExtra(Ljava/lang/String;)[F

    move-result-object p1

    if-eqz p1, :cond_4

    array-length p2, p1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object p2, p2, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BR_TSP_EVENT : TOUCHED "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->getToastRectCalculated()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v2, p1, v1

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v3, p1, v2

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    invoke-virtual {p2}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->getToastRectCalculated()Landroid/graphics/Rect;

    move-result-object p2

    aget v0, p1, v1

    float-to-int v0, v0

    aget p1, p1, v2

    float-to-int p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->launchPendingIntent()V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    const-string p1, "BR_TSP_EVENT :onReceive : out of touch region"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    const-string p1, "BR_TSP_EVENT :onReceive : There is no [x,y position] value"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
