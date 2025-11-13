.class public final Lcom/android/systemui/volume/util/IDisplayManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public iDisplayManager:Landroid/hardware/display/IDisplayManager;

.field public iRefreshRateMinLimitToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

.field public final lock:Ljava/lang/Object;

.field public final refreshRateLimitOffRunnable:Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOffRunnable$1;

.field public final refreshRateLimitOnRunnable:Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOnRunnable$1;

.field public final refreshRateToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/util/IDisplayManagerWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->context:Landroid/content/Context;

    const-string p1, "display"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->iDisplayManager:Landroid/hardware/display/IDisplayManager;

    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->refreshRateToken:Landroid/os/IBinder;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->lock:Ljava/lang/Object;

    new-instance p1, Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOnRunnable$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOnRunnable$1;-><init>(Lcom/android/systemui/volume/util/IDisplayManagerWrapper;)V

    iput-object p1, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->refreshRateLimitOnRunnable:Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOnRunnable$1;

    new-instance p1, Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOffRunnable$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOffRunnable$1;-><init>(Lcom/android/systemui/volume/util/IDisplayManagerWrapper;)V

    iput-object p1, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->refreshRateLimitOffRunnable:Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOffRunnable$1;

    return-void
.end method
