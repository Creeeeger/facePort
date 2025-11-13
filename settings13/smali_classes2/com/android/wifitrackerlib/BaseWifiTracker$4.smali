.class Lcom/android/wifitrackerlib/BaseWifiTracker$4;
.super Lcom/samsung/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;
.source "BaseWifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wifitrackerlib/BaseWifiTracker;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;


# direct methods
.method constructor <init>(Lcom/android/wifitrackerlib/BaseWifiTracker;Landroid/os/Handler;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$4;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-direct {p0, p2}, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public networkCacheUpdated()V
    .locals 0

    .line 328
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$4;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleQosScoreCacheUpdated()V

    return-void
.end method
