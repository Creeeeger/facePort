.class public Lcom/samsung/android/biometrics/SemBiometricsManager;
.super Ljava/lang/Object;
.source "SemBiometricsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;,
        Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationResult;,
        Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;,
        Lcom/samsung/android/biometrics/SemBiometricsManager$SecurityLevel;
    }
.end annotation


# static fields
.field public static final whitelist ACQUIRED_GOOD:I = 0x0

.field public static final whitelist ACQUIRED_HOLD_PHONE_CLOSER:I = 0x6

.field public static final whitelist ACQUIRED_HOLD_PHONE_FARTHER_AWAY:I = 0x7

.field public static final whitelist ACQUIRED_LIGHT_REFLECTION:I = 0x1

.field public static final whitelist ACQUIRED_LOW_LUMINANCE:I = 0x9

.field public static final whitelist ACQUIRED_MOVE_DOWN:I = 0x3

.field public static final whitelist ACQUIRED_MOVE_LEFT:I = 0x4

.field public static final whitelist ACQUIRED_MOVE_RIGHT:I = 0x5

.field public static final whitelist ACQUIRED_MOVE_UP:I = 0x2

.field public static final whitelist ACQUIRED_OPEN_EYES_FULLY:I = 0x8

.field public static final whitelist ACQUIRED_REVERSE_ORIENTATION:I = 0xa

.field public static final whitelist ERROR_CANCELED:I = 0x5

.field public static final whitelist ERROR_FACE_CAMERA_FAILURE:I = 0x6

.field public static final whitelist ERROR_FACE_CAMERA_UNAVAILABLE:I = 0x7

.field public static final whitelist ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final whitelist ERROR_IRIS_CAMERA_FAILURE:I = 0x8

.field public static final whitelist ERROR_IRIS_CAMERA_UNAVAILABLE:I = 0x9

.field public static final blacklist ERROR_LOCKOUT:I = 0xc

.field public static final blacklist ERROR_LOCKOUT_PERMANENT:I = 0xd

.field public static final whitelist ERROR_NO_SPACE:I = 0x4

.field public static final whitelist ERROR_PROXIMITY_ALERT:I = 0xb

.field public static final whitelist ERROR_TEMPLATE_CORRUPTED:I = 0xa

.field public static final whitelist ERROR_TIMEOUT:I = 0x3

.field public static final whitelist ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final blacklist ERROR_USER_CANCELED:I = 0xe

.field public static final blacklist EXTRA_KEY_PRIVILEGED_FLAG:Ljava/lang/String; = "sem_privileged_attr"

.field private static final blacklist MSG_ACQUIRED:I = 0x64

.field private static final blacklist MSG_AUTHENTICATION_FAILED:I = 0x66

.field private static final blacklist MSG_AUTHENTICATION_SUCCEEDED:I = 0x65

.field private static final blacklist MSG_ERROR:I = 0x67

.field public static final blacklist PRIVILEGED_FLAG_ALLOW_BACKGROUND:I = 0x4

.field public static final blacklist PRIVILEGED_FLAG_AVOID_LOCKOUT:I = 0x1

.field public static final blacklist SECURITY_LEVEL_CONVENIENCE:I = 0x3

.field public static final blacklist SECURITY_LEVEL_NONE:I = 0x0

.field public static final blacklist SECURITY_LEVEL_STRONG:I = 0x1

.field public static final blacklist SECURITY_LEVEL_WEAK:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "SemBiometricsManager"

.field public static final whitelist TYPE_HIGH_SECURITY:I = 0xf

.field public static final whitelist TYPE_NORMAL_SECURITY:I = 0x5

.field public static final whitelist TYPE_STRONG_SECURITY:I = 0x11


# direct methods
.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    return-void
.end method

.method public static whitelist createInstance(Landroid/content/Context;)Lcom/samsung/android/biometrics/SemBiometricsManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 612
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Lcom/samsung/android/biometrics/SemBiometricsManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 601
    invoke-static {p0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/biometrics/SemBiometricsManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist authenticate(ILcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;Landroid/os/CancellationSignal;Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "crypto"    # Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;
    .param p3, "cancel"    # Landroid/os/CancellationSignal;
    .param p4, "callback"    # Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "attr"    # Landroid/os/Bundle;

    .line 559
    return-void
.end method

.method public blacklist getAuthenticatorId()J
    .locals 2

    .line 580
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist requestSessionClose()V
    .locals 0

    .line 571
    return-void
.end method

.method public blacklist requestSessionOpen()V
    .locals 0

    .line 565
    return-void
.end method

.method public blacklist resetTimeout([B)V
    .locals 0
    .param p1, "token"    # [B

    .line 591
    return-void
.end method
