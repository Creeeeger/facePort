.class public abstract Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;
.super Ljava/lang/Object;
.source "SemWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SemWifiApClientListUpdateCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy;
    }
.end annotation


# instance fields
.field private final blacklist mSemWifiApClientListUpdateCallbackProxy:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;->mSemWifiApClientListUpdateCallbackProxy:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy;

    return-void
.end method


# virtual methods
.method blacklist getProxy()Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;->mSemWifiApClientListUpdateCallbackProxy:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy;

    return-object v0
.end method

.method public abstract blacklist onClientListUpdated(Ljava/util/List;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApClientDetails;",
            ">;J)V"
        }
    .end annotation
.end method

.method public abstract blacklist onOverallDataLimitChanged(J)V
.end method
