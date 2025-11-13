.class Lcom/samsung/android/settings/wifi/details/WifiHotspot20Fragment$1;
.super Landroid/os/SimpleClock;
.source "WifiHotspot20Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/details/WifiHotspot20Fragment;->setupNetworksDetailTracker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiHotspot20Fragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiHotspot20Fragment;Ljava/time/ZoneId;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiHotspot20Fragment$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiHotspot20Fragment;

    invoke-direct {p0, p2}, Landroid/os/SimpleClock;-><init>(Ljava/time/ZoneId;)V

    return-void
.end method


# virtual methods
.method public millis()J
    .locals 2

    .line 151
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
