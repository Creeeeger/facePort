.class public final synthetic Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->queryDetails(Landroid/content/Context;)V

    iget-object p0, v0, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->mDataVersion:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->mBlocker:Ljava/util/concurrent/Phaser;

    invoke-virtual {p0}, Ljava/util/concurrent/Phaser;->arrive()I

    return-void
.end method
