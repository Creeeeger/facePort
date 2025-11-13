.class public final Lcom/android/systemui/broadcast/BroadcastSender$sendInBackground$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $broadcastWakelock:Lcom/android/systemui/util/wakelock/WakeLock;

.field public final synthetic $callable:Lkotlin/jvm/functions/Function0;

.field public final synthetic $reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            "Lcom/android/systemui/util/wakelock/WakeLock;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendInBackground$1;->$callable:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendInBackground$1;->$broadcastWakelock:Lcom/android/systemui/util/wakelock/WakeLock;

    iput-object p3, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendInBackground$1;->$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendInBackground$1;->$callable:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendInBackground$1;->$broadcastWakelock:Lcom/android/systemui/util/wakelock/WakeLock;

    iget-object p0, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendInBackground$1;->$reason:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendInBackground$1;->$broadcastWakelock:Lcom/android/systemui/util/wakelock/WakeLock;

    iget-object p0, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendInBackground$1;->$reason:Ljava/lang/String;

    invoke-interface {v1, p0}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    throw v0
.end method
