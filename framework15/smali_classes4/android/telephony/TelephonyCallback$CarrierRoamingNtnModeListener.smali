.class public interface abstract Landroid/telephony/TelephonyCallback$CarrierRoamingNtnModeListener;
.super Ljava/lang/Object;
.source "TelephonyCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CarrierRoamingNtnModeListener"
.end annotation


# virtual methods
.method public blacklist onCarrierRoamingNtnAvailableServicesChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public blacklist onCarrierRoamingNtnEligibleStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public abstract blacklist onCarrierRoamingNtnModeChanged(Z)V
.end method

.method public blacklist onCarrierRoamingNtnSignalStrengthChanged(Landroid/telephony/satellite/NtnSignalStrength;)V
    .locals 0

    return-void
.end method
