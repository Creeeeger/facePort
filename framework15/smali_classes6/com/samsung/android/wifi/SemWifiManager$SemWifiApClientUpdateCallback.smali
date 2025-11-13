.class public abstract Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;
.super Ljava/lang/Object;
.source "SemWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SemWifiApClientUpdateCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;
    }
.end annotation


# instance fields
.field private final blacklist mSemWifiApClientUpdateCallbackProxy:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;->mSemWifiApClientUpdateCallbackProxy:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;

    return-void
.end method


# virtual methods
.method blacklist getProxy()Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;->mSemWifiApClientUpdateCallbackProxy:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;

    return-object v0
.end method

.method public abstract blacklist onClientUpdated(Lcom/samsung/android/wifi/SemWifiApClientDetails;)V
.end method
