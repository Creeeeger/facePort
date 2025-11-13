.class public abstract Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;
.super Ljava/lang/Object;
.source "SemWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SemWifiApSmartCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;
    }
.end annotation


# instance fields
.field private final blacklist mSemWifiApSmartCallbackProxy:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 900
    new-instance v0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;->mSemWifiApSmartCallbackProxy:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;

    .line 901
    return-void
.end method


# virtual methods
.method blacklist getProxy()Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;
    .locals 1

    .line 914
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;->mSemWifiApSmartCallbackProxy:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;

    return-object v0
.end method

.method public abstract blacklist onStateChanged(ILjava/lang/String;)V
.end method
