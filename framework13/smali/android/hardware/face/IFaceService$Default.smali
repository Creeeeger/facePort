.class public Landroid/hardware/face/IFaceService$Default;
.super Ljava/lang/Object;
.source "IFaceService.java"

# interfaces
.implements Landroid/hardware/face/IFaceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/IFaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V
    .locals 0
    .param p1, "callback"    # Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 221
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist authenticate(Landroid/os/IBinder;JILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;Z)J
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "operationId"    # J
    .param p4, "userId"    # I
    .param p5, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p6, "opPackageName"    # Ljava/lang/String;
    .param p7, "isKeyguardBypassEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "requestId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    return-void
.end method

.method public blacklist cancelAuthenticationFromService(ILandroid/os/IBinder;Ljava/lang/String;J)V
    .locals 0
    .param p1, "sensorId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "opPackageName"    # Ljava/lang/String;
    .param p4, "requestId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    return-void
.end method

.method public blacklist cancelEnrollment(Landroid/os/IBinder;J)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "requestId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    return-void
.end method

.method public blacklist cancelFaceDetect(Landroid/os/IBinder;Ljava/lang/String;J)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "requestId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public blacklist createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .locals 1
    .param p1, "sensorId"    # I
    .param p2, "callback"    # Landroid/hardware/biometrics/ITestSessionCallback;
    .param p3, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist detectFace(Landroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)J
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p4, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist dumpSensorServiceStateProto(IZ)[B
    .locals 1
    .param p1, "sensorId"    # I
    .param p2, "clearSchedulerBuffer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist enroll(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;Z)J
    .locals 2
    .param p1, "userId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "hardwareAuthToken"    # [B
    .param p4, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "disabledFeatures"    # [I
    .param p7, "previewSurface"    # Landroid/view/Surface;
    .param p8, "debugConsent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist enrollRemotely(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[I)J
    .locals 2
    .param p1, "userId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "hardwareAuthToken"    # [B
    .param p4, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "disabledFeatures"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist generateChallenge(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sensorId"    # I
    .param p3, "userId"    # I
    .param p4, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p5, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    return-void
.end method

.method public blacklist getAuthenticatorId(II)J
    .locals 2
    .param p1, "sensorId"    # I
    .param p2, "callingUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getEnrolledFaces(IILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFeature(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "feature"    # I
    .param p4, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p5, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    return-void
.end method

.method public blacklist getLockoutModeForUser(II)I
    .locals 1
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSensorProperties(ILjava/lang/String;)Landroid/hardware/face/FaceSensorPropertiesInternal;
    .locals 1
    .param p1, "sensorId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hasEnrolledFaces(IILjava/lang/String;)Z
    .locals 1
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist invalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .locals 0
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "callback"    # Landroid/hardware/biometrics/IInvalidationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    return-void
.end method

.method public blacklist isHardwareDetected(ILjava/lang/String;)Z
    .locals 1
    .param p1, "sensorId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist prepareForAuthentication(IZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZ)V
    .locals 0
    .param p1, "sensorId"    # I
    .param p2, "requireConfirmation"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "operationId"    # J
    .param p6, "userId"    # I
    .param p7, "sensorReceiver"    # Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .param p8, "opPackageName"    # Ljava/lang/String;
    .param p9, "requestId"    # J
    .param p11, "cookie"    # I
    .param p12, "allowBackgroundAuthentication"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public blacklist registerAuthenticators(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    .local p1, "hidlSensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    return-void
.end method

.method public blacklist remove(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "faceId"    # I
    .param p3, "userId"    # I
    .param p4, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p5, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    return-void
.end method

.method public blacklist removeAll(Landroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p4, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    return-void
.end method

.method public blacklist resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sensorId"    # I
    .param p3, "userId"    # I
    .param p4, "hardwareAuthToken"    # [B
    .param p5, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    return-void
.end method

.method public blacklist revokeChallenge(Landroid/os/IBinder;IILjava/lang/String;J)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sensorId"    # I
    .param p3, "userId"    # I
    .param p4, "opPackageName"    # Ljava/lang/String;
    .param p5, "challenge"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    return-void
.end method

.method public blacklist semAuthenticate(Landroid/os/IBinder;JILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;[B)J
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "operationId"    # J
    .param p4, "userId"    # I
    .param p5, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p6, "opPackageName"    # Ljava/lang/String;
    .param p7, "bundle"    # Landroid/os/Bundle;
    .param p8, "fidoRequestData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist semEnroll(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;ZLandroid/os/Bundle;)J
    .locals 2
    .param p1, "userId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "hardwareAuthToken"    # [B
    .param p4, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "disabledFeatures"    # [I
    .param p7, "surface"    # Landroid/view/Surface;
    .param p8, "debugConsent"    # Z
    .param p9, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist semGetRemainingLockoutTime(I)I
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semGetSecurityLevel(Z)I
    .locals 1
    .param p1, "isKeyguard"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semGetTrustAppVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist semIsEnrollSession()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semIsFrameworkHandleLockout()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semIsSessionClose()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semPauseAuth()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    return-void
.end method

.method public blacklist semPauseEnroll()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    return-void
.end method

.method public blacklist semPrepareForAuthentication(IZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;IZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "sensorId"    # I
    .param p2, "requireConfirmation"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "operationId"    # J
    .param p6, "userId"    # I
    .param p7, "sensorReceiver"    # Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .param p8, "opPackageName"    # Ljava/lang/String;
    .param p9, "cookie"    # I
    .param p10, "allowBackgroundAuthentication"    # Z
    .param p11, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    return-void
.end method

.method public blacklist semResetAuthenticationTimeout()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semResumeAuth()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    return-void
.end method

.method public blacklist semResumeEnroll()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    return-void
.end method

.method public blacklist semSessionClose()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    return-void
.end method

.method public blacklist semSessionOpen()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    return-void
.end method

.method public blacklist semUpdateTrustApp(Landroid/os/IBinder;Ljava/lang/String;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p5, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    return-void
.end method

.method public blacklist setFeature(Landroid/os/IBinder;IIZ[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "feature"    # I
    .param p4, "enabled"    # Z
    .param p5, "hardwareAuthToken"    # [B
    .param p6, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p7, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    return-void
.end method

.method public blacklist startPreparedClient(II)V
    .locals 0
    .param p1, "sensorId"    # I
    .param p2, "cookie"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method
