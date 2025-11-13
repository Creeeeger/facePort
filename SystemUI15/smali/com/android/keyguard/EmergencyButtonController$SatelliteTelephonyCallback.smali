.class public final Lcom/android/keyguard/EmergencyButtonController$SatelliteTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/telephony/TelephonyCallback$SemSatelliteStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/EmergencyButtonController;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/EmergencyButtonController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/EmergencyButtonController$SatelliteTelephonyCallback;->this$0:Lcom/android/keyguard/EmergencyButtonController;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/keyguard/EmergencyButtonController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/EmergencyButtonController$SatelliteTelephonyCallback;-><init>(Lcom/android/keyguard/EmergencyButtonController;)V

    return-void
.end method


# virtual methods
.method public final onSemSatelliteServiceStateChanged(Landroid/telephony/satellite/SemSatelliteServiceState;)V
    .locals 4

    invoke-virtual {p1}, Landroid/telephony/satellite/SemSatelliteServiceState;->getRegistrationState()Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    move-result-object p1

    const-string v0, "EmergencyButton"

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButtonController$SatelliteTelephonyCallback;->this$0:Lcom/android/keyguard/EmergencyButtonController;

    iget v2, v1, Lcom/android/keyguard/EmergencyButtonController;->mSatelliteRegState:I

    invoke-virtual {p1}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->getRegState()I

    move-result p1

    iput p1, v1, Lcom/android/keyguard/EmergencyButtonController;->mSatelliteRegState:I

    const-string p1, "onSemSatelliteServiceStateChanged : mSatelliteRegState changed from ["

    const-string v1, "] to ["

    invoke-static {v2, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButtonController$SatelliteTelephonyCallback;->this$0:Lcom/android/keyguard/EmergencyButtonController;

    iget v1, v1, Lcom/android/keyguard/EmergencyButtonController;->mSatelliteRegState:I

    const-string v3, "]"

    invoke-static {p1, v1, v3, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController$SatelliteTelephonyCallback;->this$0:Lcom/android/keyguard/EmergencyButtonController;

    iget p1, p0, Lcom/android/keyguard/EmergencyButtonController;->mSatelliteRegState:I

    if-eq v2, p1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButtonController;->updateEmergencyCallButton()V

    goto :goto_0

    :cond_0
    const-string p0, "onSemSatelliteServiceStateChanged : result is null!"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
