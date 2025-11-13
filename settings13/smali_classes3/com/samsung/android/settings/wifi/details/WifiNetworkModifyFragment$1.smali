.class Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment$1;
.super Landroid/os/SimpleClock;
.source "WifiNetworkModifyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->setupNetworksDetailTracker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;Ljava/time/ZoneId;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;

    invoke-direct {p0, p2}, Landroid/os/SimpleClock;-><init>(Ljava/time/ZoneId;)V

    return-void
.end method


# virtual methods
.method public millis()J
    .locals 2

    .line 279
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
