.class public interface abstract Landroid/telephony/satellite/SatelliteProvisionStateCallback;
.super Ljava/lang/Object;
.source "SatelliteProvisionStateCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# virtual methods
.method public abstract whitelist onSatelliteProvisionStateChanged(Z)V
.end method

.method public blacklist onSatelliteSubscriptionProvisionStateChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
