.class public final Lcom/samsung/android/gtscell/utils/GtsTimer;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\nJ\u0006\u0010\u000c\u001a\u00020\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/samsung/android/gtscell/utils/GtsTimer;",
        "",
        "handler",
        "Landroid/os/Handler;",
        "duration",
        "",
        "expired",
        "Ljava/lang/Runnable;",
        "(Landroid/os/Handler;JLjava/lang/Runnable;)V",
        "refresh",
        "",
        "start",
        "stop",
        "gtscell_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final duration:J

.field private final expired:Ljava/lang/Runnable;

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;JLjava/lang/Runnable;)V
    .locals 1

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expired"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gtscell/utils/GtsTimer;->handler:Landroid/os/Handler;

    iput-wide p2, p0, Lcom/samsung/android/gtscell/utils/GtsTimer;->duration:J

    iput-object p4, p0, Lcom/samsung/android/gtscell/utils/GtsTimer;->expired:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final refresh()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/utils/GtsTimer;->stop()V

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/utils/GtsTimer;->start()V

    return-void
.end method

.method public final start()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/gtscell/utils/GtsTimer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/gtscell/utils/GtsTimer;->expired:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/samsung/android/gtscell/utils/GtsTimer;->duration:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final stop()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gtscell/utils/GtsTimer;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/gtscell/utils/GtsTimer;->expired:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
