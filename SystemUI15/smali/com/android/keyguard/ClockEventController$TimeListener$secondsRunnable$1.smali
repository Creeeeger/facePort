.class public final Lcom/android/keyguard/ClockEventController$TimeListener$secondsRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/ClockEventController$TimeListener;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/ClockEventController$TimeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/ClockEventController$TimeListener$secondsRunnable$1;->this$0:Lcom/android/keyguard/ClockEventController$TimeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/ClockEventController$TimeListener$secondsRunnable$1;->this$0:Lcom/android/keyguard/ClockEventController$TimeListener;

    iget-boolean v1, v0, Lcom/android/keyguard/ClockEventController$TimeListener;->isRunning:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/android/keyguard/ClockEventController$TimeListener;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    const-wide/16 v1, 0x3de

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$TimeListener$secondsRunnable$1;->this$0:Lcom/android/keyguard/ClockEventController$TimeListener;

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$TimeListener;->clockFace:Lcom/android/systemui/plugins/clocks/ClockFaceController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getEvents()Lcom/android/systemui/plugins/clocks/ClockFaceEvents;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/clocks/ClockFaceEvents;->onTimeTick()V

    return-void
.end method
