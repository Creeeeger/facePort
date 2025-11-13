.class public final synthetic Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda49;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/TelephonyCallback$SemSatelliteStateListener;

.field public final synthetic blacklist f$1:Landroid/telephony/satellite/SemSatelliteSignalStrength;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/TelephonyCallback$SemSatelliteStateListener;Landroid/telephony/satellite/SemSatelliteSignalStrength;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda49;->f$0:Landroid/telephony/TelephonyCallback$SemSatelliteStateListener;

    iput-object p2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda49;->f$1:Landroid/telephony/satellite/SemSatelliteSignalStrength;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda49;->f$0:Landroid/telephony/TelephonyCallback$SemSatelliteStateListener;

    iget-object v1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda49;->f$1:Landroid/telephony/satellite/SemSatelliteSignalStrength;

    invoke-static {v0, v1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onSemSatelliteSignalStrengthChanged$84(Landroid/telephony/TelephonyCallback$SemSatelliteStateListener;Landroid/telephony/satellite/SemSatelliteSignalStrength;)V

    return-void
.end method
