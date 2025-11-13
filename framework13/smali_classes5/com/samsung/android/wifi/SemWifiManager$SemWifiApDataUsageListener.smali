.class public abstract Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;
.super Ljava/lang/Object;
.source "SemWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SemWifiApDataUsageListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;
    }
.end annotation


# instance fields
.field private final blacklist mSemWifiApDataUsageClient:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 1374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1375
    new-instance v0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;->mSemWifiApDataUsageClient:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;

    .line 1376
    return-void
.end method


# virtual methods
.method blacklist getClient()Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;
    .locals 1

    .line 1388
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;->mSemWifiApDataUsageClient:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;

    return-object v0
.end method

.method public abstract blacklist onDataUsageChanged(Ljava/lang/String;)V
.end method
