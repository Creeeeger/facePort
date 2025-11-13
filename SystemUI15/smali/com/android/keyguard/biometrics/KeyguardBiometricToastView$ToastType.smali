.class public final enum Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

.field public static final enum Authenticating:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

.field public static final enum FaceAuthenticationError:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

.field public static final enum FaceAuthenticationFail:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

.field public static final enum FingerprintAuthenticationError:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

.field public static final enum FingerprintAuthenticationFail:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

.field public static final enum FingerprintAuthenticationHelp:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

.field public static final enum FingerprintAuthenticationSuccess:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    const-string v1, "Authenticating"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->Authenticating:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    new-instance v1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    const-string v2, "AuthenticationSuccess"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    const-string v3, "AuthenticationFail"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    const-string v4, "FingerprintAuthenticationSuccess"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->FingerprintAuthenticationSuccess:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    new-instance v4, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    const-string v5, "FingerprintAuthenticationFail"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->FingerprintAuthenticationFail:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    new-instance v5, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    const-string v6, "FingerprintAuthenticationError"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->FingerprintAuthenticationError:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    new-instance v6, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    const-string v7, "FingerprintAuthenticationHelp"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->FingerprintAuthenticationHelp:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    new-instance v7, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    const-string v8, "FaceAuthenticationFail"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->FaceAuthenticationFail:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    new-instance v8, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    const-string v9, "FaceAuthenticationError"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->FaceAuthenticationError:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    new-instance v9, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    const-string v10, "FaceAuthenticationHelp"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;-><init>(Ljava/lang/String;I)V

    filled-new-array/range {v0 .. v9}, [Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->$VALUES:[Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;
    .locals 1

    const-class v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;
    .locals 1

    sget-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->$VALUES:[Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    invoke-virtual {v0}, [Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    return-object v0
.end method
