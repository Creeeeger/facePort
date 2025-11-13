.class public Lcom/samsung/android/wifi/aware/SemWifiAwareManager;
.super Ljava/lang/Object;
.source "SemWifiAwareManager.java"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;->mService:Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;

    .line 41
    return-void
.end method


# virtual methods
.method public blacklist setClusterMergingEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;->mService:Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;->setClusterMergingEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    nop

    .line 56
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
