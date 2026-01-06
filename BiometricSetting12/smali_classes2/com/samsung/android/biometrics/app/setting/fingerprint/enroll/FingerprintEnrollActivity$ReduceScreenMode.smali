.class final enum Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;
.super Ljava/lang/Enum;
.source "FingerprintEnrollActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ReduceScreenMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;

.field public static final enum KBD:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;

.field public static final enum NONE:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;->NONE:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;

    const-string v3, "KBD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;->KBD:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;->$VALUES:[Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;
    .locals 1

    const-class v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;->$VALUES:[Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;

    invoke-virtual {v0}, [Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;

    return-object v0
.end method
