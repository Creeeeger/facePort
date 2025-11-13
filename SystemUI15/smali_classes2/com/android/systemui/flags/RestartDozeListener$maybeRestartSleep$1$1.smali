.class public final Lcom/android/systemui/flags/RestartDozeListener$maybeRestartSleep$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/flags/RestartDozeListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/flags/RestartDozeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/flags/RestartDozeListener$maybeRestartSleep$1$1;->this$0:Lcom/android/systemui/flags/RestartDozeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "RestartDozeListener"

    const-string v1, "Restarting goToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/flags/RestartDozeListener$maybeRestartSleep$1$1;->this$0:Lcom/android/systemui/flags/RestartDozeListener;

    iget-object v0, p0, Lcom/android/systemui/flags/RestartDozeListener;->powerManager:Landroid/os/PowerManager;

    iget-object p0, p0, Lcom/android/systemui/flags/RestartDozeListener;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p0}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    return-void
.end method
