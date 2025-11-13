.class public final Lcom/android/settings/deviceinfo/simstatus/EidStatus;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mBlocker:Ljava/util/concurrent/Phaser;

.field public final mEid:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/Phaser;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Phaser;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/EidStatus;->mBlocker:Ljava/util/concurrent/Phaser;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/EidStatus;->mEid:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/EidStatus;->mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    if-nez p3, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/settings/deviceinfo/simstatus/EidStatus;->getEidOperation(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/settings/deviceinfo/simstatus/EidStatus$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/deviceinfo/simstatus/EidStatus$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/deviceinfo/simstatus/EidStatus;Landroid/content/Context;)V

    invoke-interface {p3, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getEidOperation(Landroid/content/Context;)V
    .locals 5

    const-class v0, Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/EuiccManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/EidStatus;->mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gt v2, v3, :cond_0

    :goto_0
    move-object p1, v4

    goto/16 :goto_1

    :cond_0
    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->size()I

    move-result v1

    invoke-static {v2, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/deviceinfo/simstatus/EidStatus$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/simstatus/EidStatus$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/deviceinfo/simstatus/EidStatus;)V

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/deviceinfo/simstatus/EidStatus$$ExternalSyntheticLambda2;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/settings/deviceinfo/simstatus/EidStatus$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/deviceinfo/simstatus/EidStatus$$ExternalSyntheticLambda2;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/settings/deviceinfo/simstatus/EidStatus$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/deviceinfo/simstatus/EidStatus$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->sorted()Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->distinct()Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    array-length v2, v1

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/android/settings/deviceinfo/simstatus/EidStatus$$ExternalSyntheticLambda2;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/android/settings/deviceinfo/simstatus/EidStatus$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/android/settings/deviceinfo/simstatus/EidStatus$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1}, Lcom/android/settings/deviceinfo/simstatus/EidStatus$$ExternalSyntheticLambda6;-><init>([I)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/settings/deviceinfo/simstatus/EidStatus$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lcom/android/settings/deviceinfo/simstatus/EidStatus$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/euicc/EuiccManager;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/settings/deviceinfo/simstatus/EidStatus$$ExternalSyntheticLambda2;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/android/settings/deviceinfo/simstatus/EidStatus$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_1
    if-nez p1, :cond_6

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/telephony/euicc/EuiccManager;->getEid()Ljava/lang/String;

    move-result-object v4

    :cond_5
    :goto_2
    move-object p1, v4

    :cond_6
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/EidStatus;->mEid:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/EidStatus;->mBlocker:Ljava/util/concurrent/Phaser;

    invoke-virtual {p0}, Ljava/util/concurrent/Phaser;->arrive()I

    return-void
.end method
