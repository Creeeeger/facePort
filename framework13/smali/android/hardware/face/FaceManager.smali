.class public Landroid/hardware/face/FaceManager;
.super Ljava/lang/Object;
.source "FaceManager.java"

# interfaces
.implements Landroid/hardware/biometrics/BiometricAuthenticator;
.implements Landroid/hardware/biometrics/BiometricFaceConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/face/FaceManager$MyHandler;,
        Landroid/hardware/face/FaceManager$OnFaceDetectionCancelListener;,
        Landroid/hardware/face/FaceManager$OnAuthenticationCancelListener;,
        Landroid/hardware/face/FaceManager$OnEnrollCancelListener;,
        Landroid/hardware/face/FaceManager$GenerateChallengeCallback;,
        Landroid/hardware/face/FaceManager$GetFeatureCallback;,
        Landroid/hardware/face/FaceManager$SetFeatureCallback;,
        Landroid/hardware/face/FaceManager$LockoutResetCallback;,
        Landroid/hardware/face/FaceManager$RemovalCallback;,
        Landroid/hardware/face/FaceManager$EnrollmentCallback;,
        Landroid/hardware/face/FaceManager$FaceDetectionCallback;,
        Landroid/hardware/face/FaceManager$AuthenticationCallback;,
        Landroid/hardware/face/FaceManager$AuthenticationResult;
    }
.end annotation


# static fields
.field private static final blacklist MSG_ACQUIRED:I = 0x65

.field private static final blacklist MSG_AUTHENTICATION_FAILED:I = 0x67

.field private static final blacklist MSG_AUTHENTICATION_FRAME:I = 0x70

.field private static final blacklist MSG_AUTHENTICATION_SUCCEEDED:I = 0x66

.field private static final blacklist MSG_CHALLENGE_GENERATED:I = 0x6c

.field private static final blacklist MSG_ENROLLMENT_FRAME:I = 0x71

.field private static final blacklist MSG_ENROLL_RESULT:I = 0x64

.field private static final blacklist MSG_ERROR:I = 0x68

.field private static final blacklist MSG_FACE_DETECTED:I = 0x6d

.field private static final blacklist MSG_GET_FEATURE_COMPLETED:I = 0x6a

.field private static final blacklist MSG_REMOVED:I = 0x69

.field private static final blacklist MSG_SET_FEATURE_COMPLETED:I = 0x6b

.field private static final blacklist TAG:Ljava/lang/String; = "FaceManager"

.field private static blacklist mDeviceType:Ljava/lang/String;


# instance fields
.field private blacklist mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

.field blacklist mBundle:Landroid/os/Bundle;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

.field private blacklist mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

.field private blacklist mFaceDetectionCallback:Landroid/hardware/face/FaceManager$FaceDetectionCallback;

.field blacklist mFidoRequestData:[B

.field private blacklist mGenerateChallengeCallback:Landroid/hardware/face/FaceManager$GenerateChallengeCallback;

.field private blacklist mGetFeatureCallback:Landroid/hardware/face/FaceManager$GetFeatureCallback;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

.field private blacklist mRemovalFace:Landroid/hardware/face/Face;

.field private final blacklist mService:Landroid/hardware/face/IFaceService;

.field private final blacklist mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

.field private blacklist mSetFeatureCallback:Landroid/hardware/face/FaceManager$SetFeatureCallback;

.field private final blacklist mToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEnrollmentCallback(Landroid/hardware/face/FaceManager;)Landroid/hardware/face/FaceManager$EnrollmentCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/face/FaceManager;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelAuthentication(Landroid/hardware/face/FaceManager;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager;->cancelAuthentication(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelEnrollment(Landroid/hardware/face/FaceManager;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager;->cancelEnrollment(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelFaceDetect(Landroid/hardware/face/FaceManager;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager;->cancelFaceDetect(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendAcquiredResult(Landroid/hardware/face/FaceManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager;->sendAcquiredResult(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendAuthenticatedFailed(Landroid/hardware/face/FaceManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/face/FaceManager;->sendAuthenticatedFailed()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendAuthenticatedSucceeded(Landroid/hardware/face/FaceManager;Landroid/hardware/face/Face;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/face/FaceManager;->sendAuthenticatedSucceeded(Landroid/hardware/face/Face;IZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendAuthenticationFrame(Landroid/hardware/face/FaceManager;Landroid/hardware/face/FaceAuthenticationFrame;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/face/FaceManager;->sendAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendChallengeGenerated(Landroid/hardware/face/FaceManager;IIJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/face/FaceManager;->sendChallengeGenerated(IIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendEnrollResult(Landroid/hardware/face/FaceManager;Landroid/hardware/face/Face;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager;->sendEnrollResult(Landroid/hardware/face/Face;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendEnrollmentFrame(Landroid/hardware/face/FaceManager;Landroid/hardware/face/FaceEnrollFrame;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/face/FaceManager;->sendEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendErrorResult(Landroid/hardware/face/FaceManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager;->sendErrorResult(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendFaceDetected(Landroid/hardware/face/FaceManager;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/face/FaceManager;->sendFaceDetected(IIZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendGetFeatureCompleted(Landroid/hardware/face/FaceManager;Z[I[Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/face/FaceManager;->sendGetFeatureCompleted(Z[I[Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendRemovedResult(Landroid/hardware/face/FaceManager;Landroid/hardware/face/Face;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager;->sendRemovedResult(Landroid/hardware/face/Face;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendSetFeatureCompleted(Landroid/hardware/face/FaceManager;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager;->sendSetFeatureCompleted(ZI)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 100
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/face/FaceManager;->mDeviceType:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/face/IFaceService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/hardware/face/IFaceService;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    .line 103
    new-instance v0, Landroid/hardware/face/FaceManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/face/FaceManager$1;-><init>(Landroid/hardware/face/FaceManager;)V

    iput-object v0, p0, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 1811
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/face/FaceManager;->mBundle:Landroid/os/Bundle;

    .line 1812
    iput-object v0, p0, Landroid/hardware/face/FaceManager;->mFidoRequestData:[B

    .line 202
    iput-object p1, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 203
    iput-object p2, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    .line 204
    if-nez p2, :cond_0

    .line 205
    const-string v1, "FaceManager"

    const-string v2, "FaceAuthenticationManagerService was null"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    new-instance v1, Landroid/hardware/face/FaceManager$MyHandler;

    invoke-direct {v1, p0, p1, v0}, Landroid/hardware/face/FaceManager$MyHandler;-><init>(Landroid/hardware/face/FaceManager;Landroid/content/Context;Landroid/hardware/face/FaceManager$MyHandler-IA;)V

    iput-object v1, p0, Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;

    .line 208
    return-void
.end method

.method private blacklist cancelAuthentication(J)V
    .locals 3
    .param p1, "requestId"    # J

    .line 808
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 810
    :try_start_0
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/hardware/face/IFaceService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    goto :goto_0

    .line 811
    :catch_0
    move-exception v0

    .line 812
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 815
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist cancelEnrollment(J)V
    .locals 2
    .param p1, "requestId"    # J

    .line 798
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 800
    :try_start_0
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/face/IFaceService;->cancelEnrollment(Landroid/os/IBinder;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    goto :goto_0

    .line 801
    :catch_0
    move-exception v0

    .line 802
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 805
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist cancelFaceDetect(J)V
    .locals 3
    .param p1, "requestId"    # J

    .line 818
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-nez v0, :cond_0

    .line 819
    return-void

    .line 823
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/hardware/face/IFaceService;->cancelFaceDetect(Landroid/os/IBinder;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    nop

    .line 827
    return-void

    .line 824
    :catch_0
    move-exception v0

    .line 825
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist getAcquiredName(I)Ljava/lang/String;
    .locals 1
    .param p0, "acquired"    # I

    .line 1748
    sparse-switch p0, :sswitch_data_0

    .line 1787
    const-string/jumbo v0, "not defined"

    return-object v0

    .line 1785
    :sswitch_0
    const-string v0, "FACE_ACQUIRED_ON_MASK"

    return-object v0

    .line 1784
    :sswitch_1
    const-string v0, "FACE_ACQUIRED_WITH_GLASSES"

    return-object v0

    .line 1783
    :sswitch_2
    const-string v0, "FACE_ACQUIRED_SET_BRIGHTNESS_UP"

    return-object v0

    .line 1782
    :sswitch_3
    const-string v0, "FACE_ACQUIRED_MISALIGNED_BOTTOM_RIGHT"

    return-object v0

    .line 1781
    :sswitch_4
    const-string v0, "FACE_ACQUIRED_MISALIGNED_BOTTOM"

    return-object v0

    .line 1780
    :sswitch_5
    const-string v0, "FACE_ACQUIRED_MISALIGNED_BOTTOM_LEFT"

    return-object v0

    .line 1779
    :sswitch_6
    const-string v0, "FACE_ACQUIRED_MISALIGNED_RIGHT"

    return-object v0

    .line 1778
    :sswitch_7
    const-string v0, "FACE_ACQUIRED_MISALIGNED_MIDDLE"

    return-object v0

    .line 1777
    :sswitch_8
    const-string v0, "FACE_ACQUIRED_MISALIGNED_LEFT"

    return-object v0

    .line 1776
    :sswitch_9
    const-string v0, "FACE_ACQUIRED_MISALIGNED_TOP_RIGHT"

    return-object v0

    .line 1775
    :sswitch_a
    const-string v0, "FACE_ACQUIRED_MISALIGNED_TOP"

    return-object v0

    .line 1774
    :sswitch_b
    const-string v0, "FACE_ACQUIRED_MISALIGNED_TOP_LEFT"

    return-object v0

    .line 1773
    :sswitch_c
    const-string v0, "FACE_ACQUIRED_FAKE_FACE"

    return-object v0

    .line 1772
    :sswitch_d
    const-string v0, "FACE_ACQUIRED_PROXIMITY_ALERT"

    return-object v0

    .line 1771
    :sswitch_e
    const-string v0, "FACE_ACQUIRED_VENDOR"

    return-object v0

    .line 1770
    :sswitch_f
    const-string v0, "FACE_ACQUIRED_SENSOR_DIRTY"

    return-object v0

    .line 1769
    :sswitch_10
    const-string v0, "FACE_ACQUIRED_START"

    return-object v0

    .line 1768
    :sswitch_11
    const-string v0, "FACE_ACQUIRED_FACE_OBSCURED"

    return-object v0

    .line 1767
    :sswitch_12
    const-string v0, "FACE_ACQUIRED_ROLL_TOO_EXTREME"

    return-object v0

    .line 1766
    :sswitch_13
    const-string v0, "FACE_ACQUIRED_TILT_TOO_EXTREME"

    return-object v0

    .line 1765
    :sswitch_14
    const-string v0, "FACE_ACQUIRED_PAN_TOO_EXTREME"

    return-object v0

    .line 1764
    :sswitch_15
    const-string v0, "FACE_ACQUIRED_TOO_SIMILAR"

    return-object v0

    .line 1763
    :sswitch_16
    const-string v0, "FACE_ACQUIRED_TOO_DIFFERENT"

    return-object v0

    .line 1762
    :sswitch_17
    const-string v0, "FACE_ACQUIRED_RECALIBRATE"

    return-object v0

    .line 1761
    :sswitch_18
    const-string v0, "FACE_ACQUIRED_TOO_MUCH_MOTION"

    return-object v0

    .line 1760
    :sswitch_19
    const-string v0, "FACE_ACQUIRED_NOT_DETECTED"

    return-object v0

    .line 1759
    :sswitch_1a
    const-string v0, "FACE_ACQUIRED_POOR_GAZE"

    return-object v0

    .line 1758
    :sswitch_1b
    const-string v0, "FACE_ACQUIRED_TOO_LEFT"

    return-object v0

    .line 1757
    :sswitch_1c
    const-string v0, "FACE_ACQUIRED_TOO_RIGHT"

    return-object v0

    .line 1756
    :sswitch_1d
    const-string v0, "FACE_ACQUIRED_TOO_LOW"

    return-object v0

    .line 1755
    :sswitch_1e
    const-string v0, "FACE_ACQUIRED_TOO_HIGH"

    return-object v0

    .line 1754
    :sswitch_1f
    const-string v0, "FACE_ACQUIRED_TOO_FAR"

    return-object v0

    .line 1753
    :sswitch_20
    const-string v0, "FACE_ACQUIRED_TOO_CLOSE"

    return-object v0

    .line 1752
    :sswitch_21
    const-string v0, "FACE_ACQUIRED_TOO_DARK"

    return-object v0

    .line 1751
    :sswitch_22
    const-string v0, "FACE_ACQUIRED_TOO_BRIGHT"

    return-object v0

    .line 1750
    :sswitch_23
    const-string v0, "FACE_ACQUIRED_INSUFFICIENT"

    return-object v0

    .line 1749
    :sswitch_24
    const-string v0, "FACE_ACQUIRED_GOOD"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_24
        0x1 -> :sswitch_23
        0x2 -> :sswitch_22
        0x3 -> :sswitch_21
        0x4 -> :sswitch_20
        0x5 -> :sswitch_1f
        0x6 -> :sswitch_1e
        0x7 -> :sswitch_1d
        0x8 -> :sswitch_1c
        0x9 -> :sswitch_1b
        0xa -> :sswitch_1a
        0xb -> :sswitch_19
        0xc -> :sswitch_18
        0xd -> :sswitch_17
        0xe -> :sswitch_16
        0xf -> :sswitch_15
        0x10 -> :sswitch_14
        0x11 -> :sswitch_13
        0x12 -> :sswitch_12
        0x13 -> :sswitch_11
        0x14 -> :sswitch_10
        0x15 -> :sswitch_f
        0x16 -> :sswitch_e
        0x3e9 -> :sswitch_d
        0x3ed -> :sswitch_c
        0x3ee -> :sswitch_b
        0x3ef -> :sswitch_a
        0x3f0 -> :sswitch_9
        0x3f1 -> :sswitch_8
        0x3f2 -> :sswitch_7
        0x3f3 -> :sswitch_6
        0x3f4 -> :sswitch_5
        0x3f5 -> :sswitch_4
        0x3f6 -> :sswitch_3
        0x3f7 -> :sswitch_2
        0x3f8 -> :sswitch_1
        0x3f9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist getAuthHelpMessage(Landroid/content/Context;II)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 1501
    invoke-static {p0, p1, p2}, Landroid/hardware/face/FaceManager;->getHelpMessage(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getEnrollHelpMessage(Landroid/content/Context;II)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 1566
    invoke-static {p0, p1, p2}, Landroid/hardware/face/FaceManager;->getHelpMessage(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getErrorName(I)Ljava/lang/String;
    .locals 1
    .param p0, "error"    # I

    .line 1716
    sparse-switch p0, :sswitch_data_0

    .line 1743
    const-string/jumbo v0, "not defined"

    return-object v0

    .line 1741
    :sswitch_0
    const-string v0, "FACE_ERROR_CAMERA_ACCESS_SETTING_OFF"

    return-object v0

    .line 1740
    :sswitch_1
    const-string v0, "FACE_ERROR_TOO_DARK_TO_ENROLL"

    return-object v0

    .line 1739
    :sswitch_2
    const-string v0, "FACE_ERROR_TOO_DARK"

    return-object v0

    .line 1738
    :sswitch_3
    const-string v0, "FACE_ERROR_ON_MASK"

    return-object v0

    .line 1737
    :sswitch_4
    const-string v0, "FACE_ERROR_PPP_TIMEOUT"

    return-object v0

    .line 1736
    :sswitch_5
    const-string v0, "FACE_ERROR_CAMERA_UNAVAILABLE"

    return-object v0

    .line 1735
    :sswitch_6
    const-string v0, "FACE_ERROR_CAMERA_FAILURE"

    return-object v0

    .line 1734
    :sswitch_7
    const-string v0, "FACE_ERROR_GET_PREVIEW"

    return-object v0

    .line 1733
    :sswitch_8
    const-string v0, "FACE_ERROR_TEMPLATE_CORRUPTED"

    return-object v0

    .line 1732
    :sswitch_9
    const-string v0, "BIOMETRIC_ERROR_RE_ENROLL"

    return-object v0

    .line 1731
    :sswitch_a
    const-string v0, "BIOMETRIC_ERROR_SECURITY_UPDATE_REQUIRED"

    return-object v0

    .line 1730
    :sswitch_b
    const-string v0, "BIOMETRIC_ERROR_NO_DEVICE_CREDENTIAL"

    return-object v0

    .line 1729
    :sswitch_c
    const-string v0, "FACE_ERROR_NEGATIVE_BUTTON"

    return-object v0

    .line 1728
    :sswitch_d
    const-string v0, "FACE_ERROR_HW_NOT_PRESENT"

    return-object v0

    .line 1727
    :sswitch_e
    const-string v0, "FACE_ERROR_NOT_ENROLLED"

    return-object v0

    .line 1726
    :sswitch_f
    const-string v0, "FACE_ERROR_USER_CANCELED"

    return-object v0

    .line 1725
    :sswitch_10
    const-string v0, "FACE_ERROR_LOCKOUT_PERMANENT"

    return-object v0

    .line 1724
    :sswitch_11
    const-string v0, "FACE_ERROR_VENDOR"

    return-object v0

    .line 1723
    :sswitch_12
    const-string v0, "FACE_ERROR_LOCKOUT"

    return-object v0

    .line 1722
    :sswitch_13
    const-string v0, "FACE_ERROR_UNABLE_TO_REMOVE"

    return-object v0

    .line 1721
    :sswitch_14
    const-string v0, "FACE_ERROR_CANCELED"

    return-object v0

    .line 1720
    :sswitch_15
    const-string v0, "FACE_ERROR_NO_SPACE"

    return-object v0

    .line 1719
    :sswitch_16
    const-string v0, "FACE_ERROR_TIMEOUT"

    return-object v0

    .line 1718
    :sswitch_17
    const-string v0, "FACE_ERROR_UNABLE_TO_PROCESS"

    return-object v0

    .line 1717
    :sswitch_18
    const-string v0, "FACE_ERROR_HW_UNAVAILABLE"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_18
        0x2 -> :sswitch_17
        0x3 -> :sswitch_16
        0x4 -> :sswitch_15
        0x5 -> :sswitch_14
        0x6 -> :sswitch_13
        0x7 -> :sswitch_12
        0x8 -> :sswitch_11
        0x9 -> :sswitch_10
        0xa -> :sswitch_f
        0xb -> :sswitch_e
        0xc -> :sswitch_d
        0xd -> :sswitch_c
        0xe -> :sswitch_b
        0xf -> :sswitch_a
        0x10 -> :sswitch_9
        0x3e9 -> :sswitch_8
        0x3ea -> :sswitch_7
        0x3eb -> :sswitch_6
        0x3ec -> :sswitch_5
        0x3ed -> :sswitch_4
        0x3ee -> :sswitch_3
        0x186a1 -> :sswitch_2
        0x186a2 -> :sswitch_1
        0x186a3 -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist getErrorString(Landroid/content/Context;II)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errMsg"    # I
    .param p2, "vendorCode"    # I

    .line 833
    const v0, 0x1040ce1

    const v1, 0x1040ce0

    const v2, 0x1040cd9

    const v3, 0x1040cd4

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 897
    :pswitch_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 894
    :pswitch_2
    const v0, 0x1040502

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 881
    :pswitch_3
    const v0, 0x1040501

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 879
    :pswitch_4
    const v0, 0x10404fe

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 899
    :pswitch_5
    const v4, 0x1040cda

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_0

    .line 929
    :sswitch_0
    const v0, 0x1040cdb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 927
    :sswitch_1
    const v0, 0x1040cdf

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 925
    :sswitch_2
    const v0, 0x1040cde

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 923
    :sswitch_3
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 921
    :sswitch_4
    const v0, 0x1040cdd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 915
    :sswitch_5
    invoke-static {p0}, Landroid/hardware/face/FaceManager;->isVTCallOngoing(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 916
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 918
    :cond_0
    const v0, 0x1040ce2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 909
    :sswitch_6
    invoke-static {p0}, Landroid/hardware/face/FaceManager;->isVTCallOngoing(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 910
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 912
    :cond_1
    const v0, 0x1040cdc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 903
    :sswitch_7
    invoke-static {}, Landroid/hardware/face/FaceManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 904
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 906
    :cond_2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 901
    :sswitch_8
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 877
    :pswitch_6
    const v0, 0x10404fd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 875
    :pswitch_7
    const-string v0, ""

    return-object v0

    .line 892
    :pswitch_8
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 886
    :pswitch_9
    invoke-static {}, Landroid/hardware/face/FaceManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 887
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 889
    :cond_3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 938
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid error message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const v0, 0x1040506

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_8
        0x3ea -> :sswitch_7
        0x3eb -> :sswitch_6
        0x3ec -> :sswitch_5
        0x3ed -> :sswitch_4
        0x3ee -> :sswitch_3
        0x186a1 -> :sswitch_2
        0x186a2 -> :sswitch_1
        0x186a3 -> :sswitch_0
    .end sparse-switch
.end method

.method private static blacklist getHelpCode(II)I
    .locals 1
    .param p0, "acquireInfo"    # I
    .param p1, "vendorCode"    # I

    .line 1484
    const/16 v0, 0x16

    if-ne p0, v0, :cond_0

    .line 1485
    move v0, p1

    goto :goto_0

    .line 1486
    :cond_0
    move v0, p0

    .line 1484
    :goto_0
    return v0
.end method

.method public static blacklist getHelpMessage(Landroid/content/Context;II)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 1638
    const v0, 0x1040cd8

    const v1, 0x1040cd2

    const-string v2, ""

    const v3, 0x1040cd4

    const v4, 0x1040cd3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1689
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    :pswitch_1
    goto/16 :goto_0

    .line 1706
    :pswitch_2
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1704
    :pswitch_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1698
    :pswitch_4
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1702
    :pswitch_5
    return-object v2

    .line 1700
    :pswitch_6
    const v0, 0x1040cd5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1687
    :pswitch_7
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1685
    :pswitch_8
    return-object v2

    .line 1683
    :pswitch_9
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1681
    :pswitch_a
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1679
    :pswitch_b
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1677
    :pswitch_c
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1675
    :pswitch_d
    const v0, 0x10404f5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1673
    :pswitch_e
    const v0, 0x10404ee

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1671
    :pswitch_f
    const v0, 0x10404e7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1669
    :pswitch_10
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1667
    :pswitch_11
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1665
    :pswitch_12
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1663
    :pswitch_13
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1654
    :pswitch_14
    invoke-static {}, Landroid/hardware/face/FaceManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1655
    const v0, 0x1040cd7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1657
    :cond_0
    const v0, 0x1040cd6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1648
    :pswitch_15
    invoke-static {}, Landroid/hardware/face/FaceManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1649
    const v0, 0x1040cd1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1651
    :cond_1
    const v0, 0x1040cd0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1646
    :pswitch_16
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1644
    :pswitch_17
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1642
    :pswitch_18
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1640
    :pswitch_19
    return-object v2

    .line 1710
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown enrollment acquired message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e9
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static blacklist getMappedAcquiredInfo(II)I
    .locals 2
    .param p0, "acquireInfo"    # I
    .param p1, "vendorCode"    # I

    .line 948
    const/4 v0, 0x2

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    .line 970
    :pswitch_0
    return v1

    .line 968
    :pswitch_1
    add-int/lit16 v0, p1, 0x3e8

    return v0

    .line 966
    :pswitch_2
    return v0

    .line 961
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 954
    :pswitch_4
    return v0

    .line 950
    :pswitch_5
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist isTablet()Z
    .locals 2

    .line 1792
    sget-object v0, Landroid/hardware/face/FaceManager;->mDeviceType:Ljava/lang/String;

    const-string/jumbo v1, "tablet"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1793
    sget-object v0, Landroid/hardware/face/FaceManager;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 1795
    :cond_0
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/face/FaceManager;->mDeviceType:Ljava/lang/String;

    .line 1796
    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist isVTCallOngoing(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1800
    const/4 v0, 0x0

    .line 1801
    .local v0, "isVTCall":Z
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1802
    .local v1, "phone":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 1803
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->semIsVideoCall()Z

    move-result v0

    .line 1804
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVTCallOngoing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FaceManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    return v0

    .line 1807
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public static blacklist semIsSupportBioFaceRecognizeWithMask()Z
    .locals 7

    .line 1979
    const/4 v0, 0x1

    .line 1980
    .local v0, "isSupportFace":Z
    sget v1, Landroid/os/Build$VERSION;->SEM_FIRST_SDK_INT:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x21

    if-lt v1, v4, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1981
    .local v1, "isSupportVersion":Z
    :goto_0
    const-string v4, ""

    const-string/jumbo v5, "recognize_with_mask_menu=true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1982
    .local v4, "isSupportMaskMenu":Z
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    .line 1983
    const-string v6, "SEC_FLOATING_FEATURE_COMMON_CONFIG_DEVICE_MANUFACTURING_TYPE"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1984
    const-string v6, "jdm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v3

    .line 1985
    .local v5, "isNotJdm":Z
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    move v2, v3

    :cond_1
    return v2
.end method

.method private blacklist sendAcquiredResult(II)V
    .locals 4
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 1431
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    .line 1432
    new-instance v0, Landroid/hardware/face/FaceAuthenticationFrame;

    new-instance v1, Landroid/hardware/face/FaceDataFrame;

    invoke-direct {v1, p1, p2}, Landroid/hardware/face/FaceDataFrame;-><init>(II)V

    invoke-direct {v0, v1}, Landroid/hardware/face/FaceAuthenticationFrame;-><init>(Landroid/hardware/face/FaceDataFrame;)V

    .line 1434
    .local v0, "frame":Landroid/hardware/face/FaceAuthenticationFrame;
    invoke-direct {p0, v0}, Landroid/hardware/face/FaceManager;->sendAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V

    .end local v0    # "frame":Landroid/hardware/face/FaceAuthenticationFrame;
    goto :goto_0

    .line 1435
    :cond_0
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    if-eqz v0, :cond_1

    .line 1436
    new-instance v0, Landroid/hardware/face/FaceEnrollFrame;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Landroid/hardware/face/FaceDataFrame;

    invoke-direct {v3, p1, p2}, Landroid/hardware/face/FaceDataFrame;-><init>(II)V

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/face/FaceEnrollFrame;-><init>(Landroid/hardware/face/FaceEnrollCell;ILandroid/hardware/face/FaceDataFrame;)V

    .line 1440
    .local v0, "frame":Landroid/hardware/face/FaceEnrollFrame;
    invoke-direct {p0, v0}, Landroid/hardware/face/FaceManager;->sendEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V

    goto :goto_1

    .line 1435
    .end local v0    # "frame":Landroid/hardware/face/FaceEnrollFrame;
    :cond_1
    :goto_0
    nop

    .line 1442
    :goto_1
    return-void
.end method

.method private blacklist sendAuthenticatedFailed()V
    .locals 1

    .line 1425
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    .line 1426
    invoke-virtual {v0}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationFailed()V

    .line 1428
    :cond_0
    return-void
.end method

.method private blacklist sendAuthenticatedSucceeded(Landroid/hardware/face/Face;IZ)V
    .locals 2
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "userId"    # I
    .param p3, "isStrongBiometric"    # Z

    .line 1417
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    .line 1418
    new-instance v0, Landroid/hardware/face/FaceManager$AuthenticationResult;

    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/hardware/face/FaceManager$AuthenticationResult;-><init>(Landroid/hardware/biometrics/CryptoObject;Landroid/hardware/face/Face;IZ)V

    .line 1420
    .local v0, "result":Landroid/hardware/face/FaceManager$AuthenticationResult;
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    invoke-virtual {v1, v0}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/face/FaceManager$AuthenticationResult;)V

    .line 1422
    .end local v0    # "result":Landroid/hardware/face/FaceManager$AuthenticationResult;
    :cond_0
    return-void
.end method

.method private blacklist sendAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V
    .locals 5
    .param p1, "frame"    # Landroid/hardware/face/FaceAuthenticationFrame;

    .line 1445
    if-nez p1, :cond_0

    .line 1446
    const-string v0, "FaceManager"

    const-string v1, "Received null authentication frame"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1447
    :cond_0
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    if-eqz v0, :cond_1

    .line 1449
    invoke-virtual {p1}, Landroid/hardware/face/FaceAuthenticationFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getAcquiredInfo()I

    move-result v0

    .line 1450
    .local v0, "acquireInfo":I
    invoke-virtual {p1}, Landroid/hardware/face/FaceAuthenticationFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/face/FaceDataFrame;->getVendorCode()I

    move-result v1

    .line 1451
    .local v1, "vendorCode":I
    invoke-static {v0, v1}, Landroid/hardware/face/FaceManager;->getHelpCode(II)I

    move-result v2

    .line 1452
    .local v2, "helpCode":I
    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Landroid/hardware/face/FaceManager;->getAuthHelpMessage(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    .line 1453
    .local v3, "helpMessage":Ljava/lang/String;
    iget-object v4, p0, Landroid/hardware/face/FaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    invoke-virtual {v4, v0}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    .line 1456
    if-eqz v3, :cond_1

    .line 1457
    iget-object v4, p0, Landroid/hardware/face/FaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    invoke-virtual {v4, v2, v3}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 1460
    .end local v0    # "acquireInfo":I
    .end local v1    # "vendorCode":I
    .end local v2    # "helpCode":I
    .end local v3    # "helpMessage":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist sendChallengeGenerated(IIJ)V
    .locals 1
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "challenge"    # J

    .line 1372
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mGenerateChallengeCallback:Landroid/hardware/face/FaceManager$GenerateChallengeCallback;

    if-nez v0, :cond_0

    .line 1373
    return-void

    .line 1375
    :cond_0
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/face/FaceManager$GenerateChallengeCallback;->onGenerateChallengeResult(IIJ)V

    .line 1376
    return-void
.end method

.method private blacklist sendEnrollResult(Landroid/hardware/face/Face;I)V
    .locals 1
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "remaining"    # I

    .line 1411
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    if-eqz v0, :cond_0

    .line 1412
    invoke-virtual {v0, p2}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentProgress(I)V

    .line 1414
    :cond_0
    return-void
.end method

.method private blacklist sendEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V
    .locals 13
    .param p1, "frame"    # Landroid/hardware/face/FaceEnrollFrame;

    .line 1463
    if-nez p1, :cond_0

    .line 1464
    const-string v0, "FaceManager"

    const-string v1, "Received null enrollment frame"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1465
    :cond_0
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    if-eqz v0, :cond_1

    .line 1466
    invoke-virtual {p1}, Landroid/hardware/face/FaceEnrollFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v0

    .line 1467
    .local v0, "data":Landroid/hardware/face/FaceDataFrame;
    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getAcquiredInfo()I

    move-result v1

    .line 1468
    .local v1, "acquireInfo":I
    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getVendorCode()I

    move-result v2

    .line 1469
    .local v2, "vendorCode":I
    invoke-static {v1, v2}, Landroid/hardware/face/FaceManager;->getHelpCode(II)I

    move-result v11

    .line 1470
    .local v11, "helpCode":I
    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Landroid/hardware/face/FaceManager;->getEnrollHelpMessage(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v12

    .line 1471
    .local v12, "helpMessage":Ljava/lang/String;
    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    .line 1474
    invoke-virtual {p1}, Landroid/hardware/face/FaceEnrollFrame;->getCell()Landroid/hardware/face/FaceEnrollCell;

    move-result-object v6

    .line 1475
    invoke-virtual {p1}, Landroid/hardware/face/FaceEnrollFrame;->getStage()I

    move-result v7

    .line 1476
    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getPan()F

    move-result v8

    .line 1477
    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getTilt()F

    move-result v9

    .line 1478
    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getDistance()F

    move-result v10

    .line 1471
    move v4, v11

    move-object v5, v12

    invoke-virtual/range {v3 .. v10}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentFrame(ILjava/lang/CharSequence;Landroid/hardware/face/FaceEnrollCell;IFFF)V

    .line 1480
    .end local v0    # "data":Landroid/hardware/face/FaceDataFrame;
    .end local v1    # "acquireInfo":I
    .end local v2    # "vendorCode":I
    .end local v11    # "helpCode":I
    .end local v12    # "helpMessage":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist sendErrorResult(II)V
    .locals 4
    .param p1, "errMsgId"    # I
    .param p2, "vendorCode"    # I

    .line 1395
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 1397
    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p1

    .line 1398
    .local v0, "clientErrMsgId":I
    :goto_0
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    if-eqz v1, :cond_1

    .line 1399
    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 1400
    invoke-static {v2, p1, p2}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 1399
    invoke-virtual {v1, v0, v2}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 1401
    :cond_1
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    if-eqz v1, :cond_2

    .line 1402
    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 1403
    invoke-static {v2, p1, p2}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 1402
    invoke-virtual {v1, v0, v2}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 1404
    :cond_2
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    if-eqz v1, :cond_3

    .line 1405
    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mRemovalFace:Landroid/hardware/face/Face;

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 1406
    invoke-static {v3, p1, p2}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    .line 1405
    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/face/FaceManager$RemovalCallback;->onRemovalError(Landroid/hardware/face/Face;ILjava/lang/CharSequence;)V

    .line 1408
    :cond_3
    :goto_1
    return-void
.end method

.method private blacklist sendFaceDetected(IIZ)V
    .locals 2
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "isStrongBiometric"    # Z

    .line 1379
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mFaceDetectionCallback:Landroid/hardware/face/FaceManager$FaceDetectionCallback;

    if-nez v0, :cond_0

    .line 1380
    const-string v0, "FaceManager"

    const-string/jumbo v1, "sendFaceDetected, callback null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    return-void

    .line 1383
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/face/FaceManager$FaceDetectionCallback;->onFaceDetected(IIZ)V

    .line 1384
    return-void
.end method

.method private blacklist sendGetFeatureCompleted(Z[I[Z)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "features"    # [I
    .param p3, "featureState"    # [Z

    .line 1365
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mGetFeatureCallback:Landroid/hardware/face/FaceManager$GetFeatureCallback;

    if-nez v0, :cond_0

    .line 1366
    return-void

    .line 1368
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/face/FaceManager$GetFeatureCallback;->onCompleted(Z[I[Z)V

    .line 1369
    return-void
.end method

.method private blacklist sendRemovedResult(Landroid/hardware/face/Face;I)V
    .locals 1
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "remaining"    # I

    .line 1387
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    if-nez v0, :cond_0

    .line 1388
    return-void

    .line 1390
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/hardware/face/FaceManager$RemovalCallback;->onRemovalSucceeded(Landroid/hardware/face/Face;I)V

    .line 1391
    return-void
.end method

.method private blacklist sendSetFeatureCompleted(ZI)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "feature"    # I

    .line 1358
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mSetFeatureCallback:Landroid/hardware/face/FaceManager$SetFeatureCallback;

    if-nez v0, :cond_0

    .line 1359
    return-void

    .line 1361
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/hardware/face/FaceManager$SetFeatureCallback;->onCompleted(ZI)V

    .line 1362
    return-void
.end method

.method private blacklist useHandler(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 214
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 215
    new-instance v1, Landroid/hardware/face/FaceManager$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Landroid/hardware/face/FaceManager$MyHandler;-><init>(Landroid/hardware/face/FaceManager;Landroid/os/Looper;Landroid/hardware/face/FaceManager$MyHandler-IA;)V

    iput-object v1, p0, Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 216
    :cond_0
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 217
    new-instance v1, Landroid/hardware/face/FaceManager$MyHandler;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Landroid/hardware/face/FaceManager$MyHandler;-><init>(Landroid/hardware/face/FaceManager;Landroid/os/Looper;Landroid/hardware/face/FaceManager$MyHandler-IA;)V

    iput-object v1, p0, Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;

    .line 219
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist addLockoutResetCallback(Landroid/hardware/face/FaceManager$LockoutResetCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/face/FaceManager$LockoutResetCallback;

    .line 763
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 765
    :try_start_0
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 766
    .local v0, "powerManager":Landroid/os/PowerManager;
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    new-instance v2, Landroid/hardware/face/FaceManager$2;

    invoke-direct {v2, p0, v0, p1}, Landroid/hardware/face/FaceManager$2;-><init>(Landroid/hardware/face/FaceManager;Landroid/os/PowerManager;Landroid/hardware/face/FaceManager$LockoutResetCallback;)V

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 788
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 766
    invoke-interface {v1, v2, v3}, Landroid/hardware/face/IFaceService;->addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    goto :goto_0

    .line 789
    :catch_0
    move-exception v0

    .line 790
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 793
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "FaceManager"

    const-string v1, "addLockoutResetCallback(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :goto_0
    return-void
.end method

.method public blacklist authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$AuthenticationCallback;Landroid/os/Handler;IZ)V
    .locals 22
    .param p1, "crypto"    # Landroid/hardware/biometrics/CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "callback"    # Landroid/hardware/face/FaceManager$AuthenticationCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "userId"    # I
    .param p6, "isKeyguardBypassEnabled"    # Z

    .line 245
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    if-eqz v4, :cond_6

    .line 249
    const-string v5, "FaceManager"

    if-eqz v3, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const-string v0, "authentication already canceled"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void

    .line 254
    :cond_0
    iget-object v0, v1, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_5

    .line 256
    move-object/from16 v6, p4

    :try_start_0
    invoke-direct {v1, v6}, Landroid/hardware/face/FaceManager;->useHandler(Landroid/os/Handler;)V

    .line 257
    iput-object v4, v1, Landroid/hardware/face/FaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    .line 258
    iput-object v2, v1, Landroid/hardware/face/FaceManager;->mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    .line 259
    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/biometrics/CryptoObject;->getOpId()J

    move-result-wide v7

    goto :goto_0

    :cond_1
    const-wide/16 v7, 0x0

    :goto_0
    move-wide v11, v7

    .line 260
    .local v11, "operationId":J
    const-string v0, "FaceManager#authenticate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 267
    iget-object v0, v1, Landroid/hardware/face/FaceManager;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_3

    iget-object v0, v1, Landroid/hardware/face/FaceManager;->mFidoRequestData:[B

    if-eqz v0, :cond_2

    goto :goto_1

    .line 271
    :cond_2
    iget-object v9, v1, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v10, v1, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v14, v1, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v0, v1, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 272
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v15

    .line 271
    move/from16 v13, p5

    move/from16 v16, p6

    invoke-interface/range {v9 .. v16}, Landroid/hardware/face/IFaceService;->authenticate(Landroid/os/IBinder;JILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;Z)J

    move-result-wide v7

    .local v7, "authId":J
    goto :goto_2

    .line 268
    .end local v7    # "authId":J
    :cond_3
    :goto_1
    iget-object v13, v1, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v14, v1, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v0, v1, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v7, v1, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 269
    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v19

    iget-object v7, v1, Landroid/hardware/face/FaceManager;->mBundle:Landroid/os/Bundle;

    iget-object v8, v1, Landroid/hardware/face/FaceManager;->mFidoRequestData:[B

    .line 268
    move-wide v15, v11

    move/from16 v17, p5

    move-object/from16 v18, v0

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    invoke-interface/range {v13 .. v21}, Landroid/hardware/face/IFaceService;->semAuthenticate(Landroid/os/IBinder;JILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;[B)J

    move-result-wide v7

    .line 276
    .restart local v7    # "authId":J
    :goto_2
    if-eqz v3, :cond_4

    .line 277
    new-instance v0, Landroid/hardware/face/FaceManager$OnAuthenticationCancelListener;

    invoke-direct {v0, v1, v7, v8}, Landroid/hardware/face/FaceManager$OnAuthenticationCancelListener;-><init>(Landroid/hardware/face/FaceManager;J)V

    invoke-virtual {v3, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 287
    .end local v7    # "authId":J
    .end local v11    # "operationId":J
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v7, "Remote exception while authenticating: "

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    iget-object v5, v1, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    .line 284
    const/4 v8, 0x1

    invoke-static {v5, v8, v7}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v5

    .line 283
    invoke-virtual {v4, v8, v5}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 288
    goto :goto_5

    .line 287
    :goto_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 288
    throw v0

    .line 254
    :cond_5
    move-object/from16 v6, p4

    .line 290
    :goto_5
    return-void

    .line 246
    :cond_6
    move-object/from16 v6, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Must supply an authentication callback"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist detectFace(Landroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$FaceDetectionCallback;I)V
    .locals 5
    .param p1, "cancel"    # Landroid/os/CancellationSignal;
    .param p2, "callback"    # Landroid/hardware/face/FaceManager$FaceDetectionCallback;
    .param p3, "userId"    # I

    .line 300
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-nez v0, :cond_0

    .line 301
    return-void

    .line 304
    :cond_0
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    const-string v1, "FaceManager"

    if-eqz v0, :cond_1

    .line 305
    const-string v0, "Detection already cancelled"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void

    .line 309
    :cond_1
    iput-object p2, p0, Landroid/hardware/face/FaceManager;->mFaceDetectionCallback:Landroid/hardware/face/FaceManager$FaceDetectionCallback;

    .line 312
    :try_start_0
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v4, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 313
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 312
    invoke-interface {v0, v2, p3, v3, v4}, Landroid/hardware/face/IFaceService;->detectFace(Landroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)J

    move-result-wide v2

    .line 314
    .local v2, "authId":J
    new-instance v0, Landroid/hardware/face/FaceManager$OnFaceDetectionCancelListener;

    invoke-direct {v0, p0, v2, v3}, Landroid/hardware/face/FaceManager$OnFaceDetectionCancelListener;-><init>(Landroid/hardware/face/FaceManager;J)V

    invoke-virtual {p1, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .end local v2    # "authId":J
    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception when requesting finger detect"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist enroll(I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[I)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "hardwareAuthToken"    # [B
    .param p3, "cancel"    # Landroid/os/CancellationSignal;
    .param p4, "callback"    # Landroid/hardware/face/FaceManager$EnrollmentCallback;
    .param p5, "disabledFeatures"    # [I

    .line 330
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/face/FaceManager;->enroll(I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[ILandroid/view/Surface;Z)V

    .line 332
    return-void
.end method

.method public blacklist enroll(I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[ILandroid/view/Surface;Z)V
    .locals 16
    .param p1, "userId"    # I
    .param p2, "hardwareAuthToken"    # [B
    .param p3, "cancel"    # Landroid/os/CancellationSignal;
    .param p4, "callback"    # Landroid/hardware/face/FaceManager$EnrollmentCallback;
    .param p5, "disabledFeatures"    # [I
    .param p6, "previewSurface"    # Landroid/view/Surface;
    .param p7, "debugConsent"    # Z

    .line 357
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    if-eqz v3, :cond_4

    .line 361
    const-string v4, "FaceManager"

    if-eqz v2, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    const-string v0, "enrollment already canceled"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-void

    .line 366
    :cond_0
    iget-object v0, v1, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_3

    .line 368
    :try_start_0
    iput-object v3, v1, Landroid/hardware/face/FaceManager;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    .line 369
    const-string v0, "FaceManager#enroll"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 377
    iget-object v0, v1, Landroid/hardware/face/FaceManager;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 378
    iget-object v5, v1, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v7, v1, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v9, v1, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v0, v1, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 379
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v14, v1, Landroid/hardware/face/FaceManager;->mBundle:Landroid/os/Bundle;

    .line 378
    move/from16 v6, p1

    move-object/from16 v8, p2

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p7

    invoke-interface/range {v5 .. v14}, Landroid/hardware/face/IFaceService;->semEnroll(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;ZLandroid/os/Bundle;)J

    move-result-wide v5

    .local v5, "enrollId":J
    goto :goto_0

    .line 382
    .end local v5    # "enrollId":J
    :cond_1
    iget-object v7, v1, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v9, v1, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v11, v1, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v0, v1, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 383
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v12

    .line 382
    move/from16 v8, p1

    move-object/from16 v10, p2

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move/from16 v15, p7

    invoke-interface/range {v7 .. v15}, Landroid/hardware/face/IFaceService;->enroll(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;Z)J

    move-result-wide v5

    .line 388
    .restart local v5    # "enrollId":J
    :goto_0
    if-eqz v2, :cond_2

    .line 389
    new-instance v0, Landroid/hardware/face/FaceManager$OnEnrollCancelListener;

    const/4 v7, 0x0

    invoke-direct {v0, v1, v5, v6, v7}, Landroid/hardware/face/FaceManager$OnEnrollCancelListener;-><init>(Landroid/hardware/face/FaceManager;JLandroid/hardware/face/FaceManager$OnEnrollCancelListener-IA;)V

    invoke-virtual {v2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 399
    .end local v5    # "enrollId":J
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v5, "Remote exception in enroll: "

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    iget-object v4, v1, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    .line 396
    const/4 v6, 0x1

    invoke-static {v4, v6, v5}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    .line 395
    invoke-virtual {v3, v6, v4}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 400
    goto :goto_3

    .line 399
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 400
    throw v0

    .line 402
    :cond_3
    :goto_3
    return-void

    .line 358
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Must supply an enrollment callback"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist enrollRemotely(I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[I)V
    .locals 9
    .param p1, "userId"    # I
    .param p2, "hardwareAuthToken"    # [B
    .param p3, "cancel"    # Landroid/os/CancellationSignal;
    .param p4, "callback"    # Landroid/hardware/face/FaceManager$EnrollmentCallback;
    .param p5, "disabledFeatures"    # [I

    .line 424
    if-eqz p4, :cond_3

    .line 428
    const-string v0, "FaceManager"

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 429
    const-string v1, "enrollRemotely is already canceled."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return-void

    .line 433
    :cond_0
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v1, :cond_2

    .line 435
    :try_start_0
    iput-object p4, p0, Landroid/hardware/face/FaceManager;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    .line 436
    const-string v1, "FaceManager#enrollRemotely"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 437
    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v4, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v6, p0, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 438
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 437
    move v3, p1

    move-object v5, p2

    move-object v8, p5

    invoke-interface/range {v2 .. v8}, Landroid/hardware/face/IFaceService;->enrollRemotely(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[I)J

    move-result-wide v1

    .line 439
    .local v1, "enrolId":J
    if-eqz p3, :cond_1

    .line 440
    new-instance v3, Landroid/hardware/face/FaceManager$OnEnrollCancelListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v2, v4}, Landroid/hardware/face/FaceManager$OnEnrollCancelListener;-><init>(Landroid/hardware/face/FaceManager;JLandroid/hardware/face/FaceManager$OnEnrollCancelListener-IA;)V

    invoke-virtual {p3, v3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 450
    .end local v1    # "enrolId":J
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 442
    :catch_0
    move-exception v1

    .line 443
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "Remote exception in enrollRemotely: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    .line 447
    const/4 v3, 0x1

    invoke-static {v0, v3, v2}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 446
    invoke-virtual {p4, v3, v0}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 451
    goto :goto_2

    .line 450
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 451
    throw v0

    .line 453
    :cond_2
    :goto_2
    return-void

    .line 425
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an enrollment callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist generateChallenge(IILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V
    .locals 6
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "callback"    # Landroid/hardware/face/FaceManager$GenerateChallengeCallback;

    .line 469
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 471
    :try_start_0
    iput-object p3, p0, Landroid/hardware/face/FaceManager;->mGenerateChallengeCallback:Landroid/hardware/face/FaceManager$GenerateChallengeCallback;

    .line 472
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 473
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 472
    move v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/face/IFaceService;->generateChallenge(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    goto :goto_0

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 478
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "callback"    # Landroid/hardware/face/FaceManager$GenerateChallengeCallback;

    .line 488
    nop

    .line 489
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    .line 490
    .local v0, "faceSensorProperties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    const-string v1, "FaceManager"

    const-string v2, "No sensors"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return-void

    .line 495
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v1, v1, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 496
    .local v1, "sensorId":I
    invoke-virtual {p0, v1, p1, p2}, Landroid/hardware/face/FaceManager;->generateChallenge(IILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    .line 497
    return-void
.end method

.method public blacklist getEnrolledFaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation

    .line 642
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEnrolledFaces(I)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation

    .line 616
    nop

    .line 617
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    .line 618
    .local v0, "faceSensorProperties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    const-string v1, "FaceManager"

    const-string v2, "No sensors"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 623
    :cond_0
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v1, :cond_1

    .line 625
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v2, v2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 626
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 625
    invoke-interface {v1, v2, p1, v3}, Landroid/hardware/face/IFaceService;->getEnrolledFaces(IILjava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 627
    :catch_0
    move-exception v1

    .line 628
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 631
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getFeature(IILandroid/hardware/face/FaceManager$GetFeatureCallback;)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "feature"    # I
    .param p3, "callback"    # Landroid/hardware/face/FaceManager$GetFeatureCallback;

    .line 558
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 560
    :try_start_0
    iput-object p3, p0, Landroid/hardware/face/FaceManager;->mGetFeatureCallback:Landroid/hardware/face/FaceManager$GetFeatureCallback;

    .line 561
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 562
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 561
    move v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/face/IFaceService;->getFeature(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    goto :goto_0

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 567
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist getLockoutModeForUser(II)I
    .locals 1
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I

    .line 748
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 750
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/hardware/face/IFaceService;->getLockoutModeForUser(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 751
    :catch_0
    move-exception v0

    .line 752
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 755
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSensorProperties()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorProperties;",
            ">;"
        }
    .end annotation

    .line 715
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 716
    .local v0, "properties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorProperties;>;"
    nop

    .line 717
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v1

    .line 718
    .local v1, "internalProperties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 719
    .local v3, "internalProp":Landroid/hardware/face/FaceSensorPropertiesInternal;
    invoke-static {v3}, Landroid/hardware/face/FaceSensorProperties;->from(Landroid/hardware/face/FaceSensorPropertiesInternal;)Landroid/hardware/face/FaceSensorProperties;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    .end local v3    # "internalProp":Landroid/hardware/face/FaceSensorPropertiesInternal;
    goto :goto_0

    .line 721
    :cond_0
    return-object v0
.end method

.method public blacklist getSensorPropertiesInternal()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .line 732
    :try_start_0
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-nez v0, :cond_0

    .line 733
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 735
    :cond_0
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/face/IFaceService;->getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 739
    .end local v0    # "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public blacklist hasEnrolledTemplates()Z
    .locals 1

    .line 653
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v0

    return v0
.end method

.method public blacklist hasEnrolledTemplates(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 663
    nop

    .line 664
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    .line 665
    .local v0, "faceSensorProperties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 666
    const-string v1, "FaceManager"

    const-string v3, "No sensors"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return v2

    .line 670
    :cond_0
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v1, :cond_1

    .line 672
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v2, v2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 673
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 672
    invoke-interface {v1, v2, p1, v3}, Landroid/hardware/face/IFaceService;->hasEnrolledFaces(IILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 674
    :catch_0
    move-exception v1

    .line 675
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 678
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    return v2
.end method

.method public blacklist isHardwareDetected()Z
    .locals 4

    .line 689
    nop

    .line 690
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    .line 691
    .local v0, "faceSensorProperties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "FaceManager"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 692
    const-string v1, "No sensors"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return v3

    .line 696
    :cond_0
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v1, :cond_1

    .line 698
    :try_start_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v2, v2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 699
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 698
    invoke-interface {v1, v2, v3}, Landroid/hardware/face/IFaceService;->isHardwareDetected(ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 700
    :catch_0
    move-exception v1

    .line 701
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 704
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "isFaceHardwareDetected(): Service not connected!"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    return v3
.end method

.method public blacklist remove(Landroid/hardware/face/Face;ILandroid/hardware/face/FaceManager$RemovalCallback;)V
    .locals 6
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "userId"    # I
    .param p3, "callback"    # Landroid/hardware/face/FaceManager$RemovalCallback;

    .line 580
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 582
    :try_start_0
    iput-object p3, p0, Landroid/hardware/face/FaceManager;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    .line 583
    iput-object p1, p0, Landroid/hardware/face/FaceManager;->mRemovalFace:Landroid/hardware/face/Face;

    .line 584
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v2

    iget-object v4, p0, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 585
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 584
    move v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/face/IFaceService;->remove(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    goto :goto_0

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 590
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist removeAll(ILandroid/hardware/face/FaceManager$RemovalCallback;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "callback"    # Landroid/hardware/face/FaceManager$RemovalCallback;

    .line 598
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 600
    :try_start_0
    iput-object p2, p0, Landroid/hardware/face/FaceManager;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    .line 601
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Landroid/hardware/face/IFaceService;->removeAll(Landroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    goto :goto_0

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 606
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist resetLockout(II[B)V
    .locals 6
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "hardwareAuthToken"    # [B

    .line 526
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 528
    :try_start_0
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 529
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 528
    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/face/IFaceService;->resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    goto :goto_0

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 534
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist revokeChallenge(IIJ)V
    .locals 7
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "challenge"    # J

    .line 506
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 508
    :try_start_0
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 509
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 508
    move v2, p1

    move v3, p2

    move-wide v5, p3

    invoke-interface/range {v0 .. v6}, Landroid/hardware/face/IFaceService;->revokeChallenge(Landroid/os/IBinder;IILjava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    goto :goto_0

    .line 510
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 514
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist semAuthenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$AuthenticationCallback;Landroid/os/Handler;IZLandroid/os/Bundle;[B)V
    .locals 1
    .param p1, "crypto"    # Landroid/hardware/biometrics/CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "callback"    # Landroid/hardware/face/FaceManager$AuthenticationCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "userId"    # I
    .param p6, "isKeyguardBypassEnabled"    # Z
    .param p7, "bundle"    # Landroid/os/Bundle;
    .param p8, "fidoRequestData"    # [B

    .line 1821
    iput-object p7, p0, Landroid/hardware/face/FaceManager;->mBundle:Landroid/os/Bundle;

    .line 1822
    iput-object p8, p0, Landroid/hardware/face/FaceManager;->mFidoRequestData:[B

    .line 1823
    invoke-virtual/range {p0 .. p6}, Landroid/hardware/face/FaceManager;->authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$AuthenticationCallback;Landroid/os/Handler;IZ)V

    .line 1824
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/face/FaceManager;->mBundle:Landroid/os/Bundle;

    .line 1825
    iput-object v0, p0, Landroid/hardware/face/FaceManager;->mFidoRequestData:[B

    .line 1826
    return-void
.end method

.method public blacklist semEnroll(I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[ILandroid/view/Surface;ZLandroid/os/Bundle;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "hardwareAuthToken"    # [B
    .param p3, "cancel"    # Landroid/os/CancellationSignal;
    .param p4, "callback"    # Landroid/hardware/face/FaceManager$EnrollmentCallback;
    .param p5, "disabledFeatures"    # [I
    .param p6, "previewSurface"    # Landroid/view/Surface;
    .param p7, "debugConsent"    # Z
    .param p8, "bundle"    # Landroid/os/Bundle;

    .line 1833
    iput-object p8, p0, Landroid/hardware/face/FaceManager;->mBundle:Landroid/os/Bundle;

    .line 1834
    invoke-virtual/range {p0 .. p7}, Landroid/hardware/face/FaceManager;->enroll(I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[ILandroid/view/Surface;Z)V

    .line 1835
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/face/FaceManager;->mBundle:Landroid/os/Bundle;

    .line 1836
    return-void
.end method

.method public blacklist semGetRemainingLockoutTime(I)I
    .locals 2
    .param p1, "userId"    # I

    .line 1967
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 1969
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/face/IFaceService;->semGetRemainingLockoutTime(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1970
    :catch_0
    move-exception v0

    .line 1971
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1974
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist semGetSecurityLevel(Z)I
    .locals 2
    .param p1, "isKeyguard"    # Z

    .line 1943
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 1945
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/face/IFaceService;->semGetSecurityLevel(Z)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1946
    :catch_0
    move-exception v0

    .line 1947
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1950
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist semIsEnrollSession()Z
    .locals 2

    .line 1841
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 1843
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/face/IFaceService;->semIsEnrollSession()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1844
    :catch_0
    move-exception v0

    .line 1845
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1848
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semIsFrameworkHandleLockout()Z
    .locals 2

    .line 1955
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 1957
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/face/IFaceService;->semIsFrameworkHandleLockout()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1958
    :catch_0
    move-exception v0

    .line 1959
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1962
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semIsSessionClose()Z
    .locals 2

    .line 1931
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 1933
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/face/IFaceService;->semIsSessionClose()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1934
    :catch_0
    move-exception v0

    .line 1935
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1938
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semPauseAuth()V
    .locals 2

    .line 1875
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 1877
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/face/IFaceService;->semPauseAuth()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1880
    goto :goto_0

    .line 1878
    :catch_0
    move-exception v0

    .line 1879
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1882
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist semPauseEnroll()V
    .locals 2

    .line 1853
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 1855
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/face/IFaceService;->semPauseEnroll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1858
    goto :goto_0

    .line 1856
    :catch_0
    move-exception v0

    .line 1857
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1860
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist semResetAuthenticationTimeout()Z
    .locals 2

    .line 1897
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 1899
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/face/IFaceService;->semResetAuthenticationTimeout()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1900
    :catch_0
    move-exception v0

    .line 1901
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1904
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semResumeAuth()V
    .locals 2

    .line 1886
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 1888
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/face/IFaceService;->semResumeAuth()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1891
    goto :goto_0

    .line 1889
    :catch_0
    move-exception v0

    .line 1890
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1893
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist semResumeEnroll()V
    .locals 2

    .line 1864
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 1866
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/face/IFaceService;->semResumeEnroll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1869
    goto :goto_0

    .line 1867
    :catch_0
    move-exception v0

    .line 1868
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1871
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist semSessionClose()V
    .locals 2

    .line 1920
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 1922
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/face/IFaceService;->semSessionClose()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1925
    goto :goto_0

    .line 1923
    :catch_0
    move-exception v0

    .line 1924
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1927
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist semSessionOpen()V
    .locals 2

    .line 1909
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 1911
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/face/IFaceService;->semSessionOpen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1914
    goto :goto_0

    .line 1912
    :catch_0
    move-exception v0

    .line 1913
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1916
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setFeature(IIZ[BLandroid/hardware/face/FaceManager$SetFeatureCallback;)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "feature"    # I
    .param p3, "enabled"    # Z
    .param p4, "hardwareAuthToken"    # [B
    .param p5, "callback"    # Landroid/hardware/face/FaceManager$SetFeatureCallback;

    .line 542
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 544
    :try_start_0
    iput-object p5, p0, Landroid/hardware/face/FaceManager;->mSetFeatureCallback:Landroid/hardware/face/FaceManager$SetFeatureCallback;

    .line 545
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v6, p0, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 546
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 545
    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v7}, Landroid/hardware/face/IFaceService;->setFeature(Landroid/os/IBinder;IIZ[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    goto :goto_0

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 551
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
