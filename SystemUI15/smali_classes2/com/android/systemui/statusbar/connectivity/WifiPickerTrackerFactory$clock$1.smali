.class public final Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory$clock$1;
.super Landroid/os/SimpleClock;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;Ljava/time/ZoneOffset;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory$clock$1;->this$0:Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;

    invoke-direct {p0, p2}, Landroid/os/SimpleClock;-><init>(Ljava/time/ZoneId;)V

    return-void
.end method


# virtual methods
.method public final millis()J
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory$clock$1;->this$0:Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p0}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
