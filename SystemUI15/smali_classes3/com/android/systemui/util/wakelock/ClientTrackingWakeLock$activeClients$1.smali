.class final synthetic Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock$activeClients$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock$activeClients$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock$activeClients$1;

    invoke-direct {v0}, Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock$activeClients$1;-><init>()V

    sput-object v0, Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock$activeClients$1;->INSTANCE:Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock$activeClients$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock$activeClients$1;->applyAsInt(Ljava/util/concurrent/atomic/AtomicInteger;)I

    move-result p0

    return p0
.end method

.method public final applyAsInt(Ljava/util/concurrent/atomic/AtomicInteger;)I
    .locals 0

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method
