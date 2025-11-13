.class public final Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final clock:Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory$clock$1;

.field public final connectivityManager:Landroid/net/ConnectivityManager;

.field public final context:Landroid/content/Context;

.field public final mainHandler:Landroid/os/Handler;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final threadFactory:Lcom/android/systemui/util/concurrency/ThreadFactory;

.field public final wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Lcom/android/systemui/util/time/SystemClock;Landroid/os/Handler;Lcom/android/systemui/util/concurrency/ThreadFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;->wifiManager:Landroid/net/wifi/WifiManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;->connectivityManager:Landroid/net/ConnectivityManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p5, p0, Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;->mainHandler:Landroid/os/Handler;

    iput-object p6, p0, Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;->threadFactory:Lcom/android/systemui/util/concurrency/ThreadFactory;

    sget-object p1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    new-instance p2, Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory$clock$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory$clock$1;-><init>(Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;Ljava/time/ZoneOffset;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;->clock:Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory$clock$1;

    return-void
.end method


# virtual methods
.method public final create(Landroidx/lifecycle/LifecycleRegistry;Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;Ljava/lang/String;)Lcom/android/wifitrackerlib/WifiPickerTracker;
    .locals 16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v15, Lcom/android/wifitrackerlib/WifiPickerTracker;

    iget-object v2, v0, Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;->context:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;->connectivityManager:Landroid/net/ConnectivityManager;

    const-string v1, "WifiPickerTracker-"

    move-object/from16 v5, p3

    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, v0, Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;->threadFactory:Lcom/android/systemui/util/concurrency/ThreadFactory;

    invoke-interface {v5, v1}, Lcom/android/systemui/util/concurrency/ThreadFactory;->buildHandlerOnNewThread(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v6

    iget-object v5, v0, Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;->mainHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x3a98

    iget-object v7, v0, Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;->clock:Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory$clock$1;

    const-wide/16 v10, 0x2710

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    invoke-direct/range {v0 .. v14}, Lcom/android/wifitrackerlib/WifiPickerTracker;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;Lcom/android/wifitrackerlib/WifiPickerTracker$SemWifiPickerTrackerCallback;Z)V

    :goto_0
    return-object v0
.end method
