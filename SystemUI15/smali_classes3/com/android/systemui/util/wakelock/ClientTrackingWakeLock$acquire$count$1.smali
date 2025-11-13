.class final Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock$acquire$count$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Function;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock$acquire$count$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock$acquire$count$1<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock$acquire$count$1;

    invoke-direct {v0}, Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock$acquire$count$1;-><init>()V

    sput-object v0, Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock$acquire$count$1;->INSTANCE:Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock$acquire$count$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock$acquire$count$1;->apply(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    return-object p0
.end method

.method public final apply(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    new-instance p0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    return-object p0
.end method
