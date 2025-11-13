.class public final Lcom/samsung/android/gtscell/utils/GtsTimer;
.super Ljava/lang/Object;
.source "GtsTimer.kt"


# instance fields
.field private final duration:J

.field private final expired:Ljava/lang/Runnable;

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;JLjava/lang/Runnable;)V
    .locals 1
    .param p1    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expired"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gtscell/utils/GtsTimer;->handler:Landroid/os/Handler;

    iput-wide p2, p0, Lcom/samsung/android/gtscell/utils/GtsTimer;->duration:J

    iput-object p4, p0, Lcom/samsung/android/gtscell/utils/GtsTimer;->expired:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final refresh()V
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/gtscell/utils/GtsTimer;->stop()V

    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/gtscell/utils/GtsTimer;->start()V

    return-void
.end method

.method public final start()V
    .locals 4

    .line 11
    iget-object v0, p0, Lcom/samsung/android/gtscell/utils/GtsTimer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/gtscell/utils/GtsTimer;->expired:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/samsung/android/gtscell/utils/GtsTimer;->duration:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final stop()V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/samsung/android/gtscell/utils/GtsTimer;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/gtscell/utils/GtsTimer;->expired:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
