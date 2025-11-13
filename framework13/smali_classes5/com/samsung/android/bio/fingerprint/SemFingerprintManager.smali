.class public Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;
.super Ljava/lang/Object;
.source "SemFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;,
        Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;,
        Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationResult;,
        Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;,
        Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;,
        Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$PrivilegedFlag;,
        Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$ExtraKey;,
        Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$FingerprintAcquired;,
        Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$FingerprintError;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_KEY_AUTH_FLAG:Ljava/lang/String; = "EXTRA_KEY_AUTH_FLAG"

.field public static final blacklist EXTRA_KEY_DISPLAY_ID:Ljava/lang/String; = "EXTRA_KEY_DISPLAY_ID"

.field public static final blacklist EXTRA_KEY_ICON_COLOR:Ljava/lang/String; = "EXTRA_KEY_ICON_COLOR"

.field public static final blacklist EXTRA_KEY_ICON_CONTAINER_COLOR:Ljava/lang/String; = "EXTRA_KEY_ICON_CONTAINER_COLOR"

.field public static final whitelist EXTRA_KEY_PRIVILEGED_FLAG:Ljava/lang/String; = "sem_privileged_attr"

.field public static final blacklist EXTRA_KEY_TASK_ID:Ljava/lang/String; = "EXTRA_KEY_TASK_ID"

.field public static final whitelist FEATURE_GESTURE:I = 0x1

.field public static final whitelist FINGERPRINT_ACQUIRED_GOOD:I = 0x0

.field public static final whitelist FINGERPRINT_ACQUIRED_IMAGER_DIRTY:I = 0x3

.field public static final whitelist FINGERPRINT_ACQUIRED_INSUFFICIENT:I = 0x2

.field public static final whitelist FINGERPRINT_ACQUIRED_PARTIAL:I = 0x1

.field public static final whitelist FINGERPRINT_ACQUIRED_TOO_FAST:I = 0x5

.field public static final whitelist FINGERPRINT_ACQUIRED_TOO_SLOW:I = 0x4

.field public static final whitelist FINGERPRINT_ERROR_CANCELED:I = 0x5

.field public static final whitelist FINGERPRINT_ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final whitelist FINGERPRINT_ERROR_LOCKOUT:I = 0x7

.field public static final whitelist FINGERPRINT_ERROR_LOCKOUT_PERMANENT:I = 0x9

.field public static final whitelist FINGERPRINT_ERROR_TEMPLATE_CORRUPTED:I = 0x3e9

.field public static final whitelist FINGERPRINT_ERROR_TIMEOUT:I = 0x3

.field public static final whitelist FINGERPRINT_ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final whitelist FINGERPRINT_ERROR_USER_CANCELED:I = 0xa

.field private static final blacklist MSG_ACQUIRED:I = 0x64

.field private static final blacklist MSG_AUTHENTICATION_FAILED:I = 0x66

.field private static final blacklist MSG_AUTHENTICATION_SUCCEEDED:I = 0x65

.field private static final blacklist MSG_ERROR:I = 0x67

.field public static final whitelist PRIVILEGED_FLAG_ALLOW_BACKGROUND:I = 0x4

.field public static final whitelist PRIVILEGED_FLAG_AVOID_LOCKOUT:I = 0x1

.field public static final whitelist PRIVILEGED_FLAG_HIDE_AUTHENTICATION_GUIDE_LAYER:I = 0x10

.field public static final blacklist PRIVILEGED_FLAG_NO_VIBRATION_EFFECT:I = 0x8

.field public static final blacklist PRIVILEGED_FLAG_RECEIVE_VENDOR_EVENT:I = 0x2

.field public static final blacklist PRIVILEGED_FLAG_USE_KEYGUARD_ICON:I = 0x20

.field private static final blacklist TAG:Ljava/lang/String; = "SemFingerprintManager"


# instance fields
.field private blacklist mAuthenticationCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCryptoObject:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;

.field private final blacklist mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mService:Landroid/hardware/fingerprint/IFingerprintService;

.field private final blacklist mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field private final blacklist mToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mconvertAcquiredCode(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->convertAcquiredCode(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msendAcquiredResult(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->sendAcquiredResult(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendAuthenticatedFailed(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->sendAuthenticatedFailed()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendAuthenticatedSucceeded(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Landroid/hardware/fingerprint/Fingerprint;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->sendAuthenticatedSucceeded(Landroid/hardware/fingerprint/Fingerprint;ILandroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendErrorResult(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->sendErrorResult(ILjava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mToken:Landroid/os/IBinder;

    .line 663
    iput-object p1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mContext:Landroid/content/Context;

    .line 664
    new-instance v0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;-><init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Landroid/content/Context;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler-IA;)V

    iput-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mHandler:Landroid/os/Handler;

    .line 665
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 666
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semGetService()Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 667
    new-instance v0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;-><init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)V

    iput-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 730
    return-void
.end method

.method private blacklist cancelAuthentication(J)V
    .locals 6
    .param p1, "requestId"    # J

    .line 928
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 930
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mContext:Landroid/content/Context;

    .line 932
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mContext:Landroid/content/Context;

    .line 933
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 930
    move-wide v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    goto :goto_0

    .line 935
    :catch_0
    move-exception v0

    .line 936
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception while canceling authentication : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemFingerprintManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist checkPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "per"    # Ljava/lang/String;

    .line 921
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 925
    return-void

    .line 922
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " permission."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist convertAcquiredCode(I)I
    .locals 1
    .param p1, "code"    # I

    .line 949
    move v0, p1

    .line 950
    .local v0, "retCode":I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 964
    :pswitch_0
    const/4 v0, 0x5

    goto :goto_0

    .line 961
    :pswitch_1
    const/4 v0, 0x4

    .line 962
    goto :goto_0

    .line 958
    :pswitch_2
    const/4 v0, 0x3

    .line 959
    goto :goto_0

    .line 955
    :pswitch_3
    const/4 v0, 0x2

    .line 956
    goto :goto_0

    .line 952
    :pswitch_4
    const/4 v0, 0x1

    .line 953
    nop

    .line 967
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static whitelist createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 656
    new-instance v0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static blacklist getProductFeatureValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 901
    const-string v0, "com.samsung.android.permission.BIOMETRICS_PRIVILEGED"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 905
    const-string v0, "google_touch_display_ultrasonic"

    return-object v0

    .line 902
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must have com.samsung.android.permission.BIOMETRICS_PRIVILEGED permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist handleDefaultError(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    .line 942
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 946
    return-void
.end method

.method private blacklist sendAcquiredResult(ILjava/lang/String;)V
    .locals 1
    .param p1, "acquireInfo"    # I
    .param p2, "helpMsg"    # Ljava/lang/String;

    .line 987
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mAuthenticationCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    .line 988
    if-eqz p2, :cond_0

    .line 989
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 992
    :cond_0
    return-void
.end method

.method private blacklist sendAuthenticatedFailed()V
    .locals 1

    .line 981
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mAuthenticationCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    .line 982
    invoke-virtual {v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;->onAuthenticationFailed()V

    .line 984
    :cond_0
    return-void
.end method

.method private blacklist sendAuthenticatedSucceeded(Landroid/hardware/fingerprint/Fingerprint;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "userId"    # I
    .param p3, "data"    # Landroid/os/Bundle;

    .line 995
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mAuthenticationCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    if-eqz v0, :cond_1

    .line 996
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mCryptoObject:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 997
    const-string v1, "fidoResult"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->-$$Nest$msetFidoResultData(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;[B)V

    .line 999
    :cond_0
    new-instance v0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationResult;

    iget-object v1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mCryptoObject:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationResult;-><init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;Landroid/hardware/fingerprint/Fingerprint;)V

    .line 1000
    .local v0, "result":Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationResult;
    iget-object v1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mAuthenticationCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    invoke-virtual {v1, v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;->onAuthenticationSucceeded(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationResult;)V

    .line 1003
    .end local v0    # "result":Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationResult;
    :cond_1
    return-void
.end method

.method private blacklist sendErrorResult(ILjava/lang/String;)V
    .locals 1
    .param p1, "errMsgId"    # I
    .param p2, "errMsg"    # Ljava/lang/String;

    .line 971
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mAuthenticationCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    if-eqz v0, :cond_1

    .line 972
    if-nez p2, :cond_0

    .line 973
    const-string p2, ""

    .line 975
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 977
    :cond_1
    return-void
.end method

.method public static blacklist setExtraInfo(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "b"    # Landroid/os/Bundle;

    .line 879
    if-nez p1, :cond_0

    .line 880
    return-void

    .line 884
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    .local v0, "displayId":I
    goto :goto_0

    .line 885
    .end local v0    # "displayId":I
    :catch_0
    move-exception v0

    .line 886
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 887
    .local v1, "displayId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setExtraInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemFingerprintManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 889
    .end local v1    # "displayId":I
    .local v0, "displayId":I
    :goto_0
    const-string v1, "EXTRA_KEY_DISPLAY_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 890
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 891
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    const-string v2, "EXTRA_KEY_TASK_ID"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 893
    :cond_1
    return-void
.end method

.method private blacklist useHandler(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 913
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 914
    new-instance v1, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;-><init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Landroid/os/Looper;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler-IA;)V

    iput-object v1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 915
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 916
    new-instance v1, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;

    iget-object v2, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;-><init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Landroid/os/Looper;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler-IA;)V

    iput-object v1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mHandler:Landroid/os/Handler;

    .line 918
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist authenticate(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;Landroid/os/CancellationSignal;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V
    .locals 19
    .param p1, "crypto"    # Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "callback"    # Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "userId"    # I
    .param p6, "attr"    # Landroid/os/Bundle;

    .line 759
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    if-eqz v3, :cond_4

    .line 762
    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    const-string v4, "SemFingerprintManager"

    if-eqz v0, :cond_0

    .line 763
    const-string v0, "authentication : already canceled"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    invoke-direct {v1, v3}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->handleDefaultError(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;)V

    .line 765
    return-void

    .line 767
    :cond_0
    iget-object v0, v1, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_1

    .line 768
    const-string v0, "authentication : Service is NULL"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    invoke-direct {v1, v3}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->handleDefaultError(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;)V

    move-object/from16 v9, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    goto :goto_3

    .line 772
    :cond_1
    move-object/from16 v5, p4

    :try_start_0
    invoke-direct {v1, v5}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->useHandler(Landroid/os/Handler;)V

    .line 773
    iput-object v3, v1, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mAuthenticationCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    .line 774
    iput-object v2, v1, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mCryptoObject:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;

    .line 775
    if-eqz v2, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->-$$Nest$mgetOpId(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;)J

    move-result-wide v6

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x0

    :goto_0
    move-wide v10, v6

    .line 776
    .local v10, "operationId":J
    if-nez p6, :cond_3

    .line 777
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v6, v0

    .end local p6    # "attr":Landroid/os/Bundle;
    .local v0, "attr":Landroid/os/Bundle;
    goto :goto_1

    .line 776
    .end local v0    # "attr":Landroid/os/Bundle;
    .restart local p6    # "attr":Landroid/os/Bundle;
    :cond_3
    move-object/from16 v6, p6

    .line 779
    .end local p6    # "attr":Landroid/os/Bundle;
    .local v6, "attr":Landroid/os/Bundle;
    :goto_1
    :try_start_1
    iget-object v0, v1, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->setExtraInfo(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 781
    iget-object v8, v1, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v9, v1, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mToken:Landroid/os/IBinder;

    const/4 v12, -0x1

    iget-object v14, v1, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    const/4 v15, 0x0

    iget-object v0, v1, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mContext:Landroid/content/Context;

    .line 784
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v16

    iget-object v0, v1, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mContext:Landroid/content/Context;

    .line 785
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v17

    .line 781
    move/from16 v13, p5

    move-object/from16 v18, v6

    invoke-interface/range {v8 .. v18}, Landroid/hardware/fingerprint/IFingerprintService;->semAuthenticate(Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)J

    move-result-wide v7

    .line 787
    .local v7, "authId":J
    new-instance v0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v9, p2

    :try_start_2
    invoke-virtual {v9, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 791
    .end local v7    # "authId":J
    .end local v10    # "operationId":J
    goto :goto_3

    .line 788
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v9, p2

    goto :goto_2

    .end local v6    # "attr":Landroid/os/Bundle;
    .restart local p6    # "attr":Landroid/os/Bundle;
    :catch_2
    move-exception v0

    move-object/from16 v9, p2

    move-object/from16 v6, p6

    .line 789
    .end local p6    # "attr":Landroid/os/Bundle;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v6    # "attr":Landroid/os/Bundle;
    :goto_2
    const-string v7, "Remote exception while authenticating: "

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 790
    invoke-direct {v1, v3}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->handleDefaultError(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;)V

    .line 793
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    return-void

    .line 760
    .end local v6    # "attr":Landroid/os/Bundle;
    .restart local p6    # "attr":Landroid/os/Bundle;
    :cond_4
    move-object/from16 v9, p2

    move-object/from16 v5, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Must supply an authentication callback"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getCharacteristics()Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;
    .locals 3

    .line 804
    new-instance v0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;

    iget-object v1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics-IA;)V

    return-object v0
.end method

.method public whitelist getEnrolledFingerprintNames()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 829
    const-string v0, "com.samsung.android.permission.BIOMETRICS_PRIVILEGED"

    invoke-direct {p0, v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->checkPermission(Ljava/lang/String;)V

    .line 830
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v0

    .line 831
    .local v0, "fpList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    if-nez v0, :cond_0

    .line 832
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 834
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 835
    .local v1, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    .line 836
    .local v3, "f":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    .end local v3    # "f":Landroid/hardware/fingerprint/Fingerprint;
    goto :goto_0

    .line 838
    :cond_1
    return-object v1
.end method

.method public whitelist hasDisabledFingerprints()Z
    .locals 1

    .line 817
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hasEnrolledFingerprints()Z
    .locals 1

    .line 849
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    return v0
.end method

.method public blacklist hasEnrolledFingerprints(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 860
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasFeature(I)Z
    .locals 1
    .param p1, "feature"    # I

    .line 872
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->semHasFeature(I)Z

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$authenticate$0$com-samsung-android-bio-fingerprint-SemFingerprintManager(J)V
    .locals 0
    .param p1, "authId"    # J

    .line 787
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->cancelAuthentication(J)V

    return-void
.end method

.method synthetic blacklist lambda$handleDefaultError$1$com-samsung-android-bio-fingerprint-SemFingerprintManager(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    .line 942
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mContext:Landroid/content/Context;

    .line 943
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 942
    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method
