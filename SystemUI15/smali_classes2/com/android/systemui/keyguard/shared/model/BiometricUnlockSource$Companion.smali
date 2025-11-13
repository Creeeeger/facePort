.class public final Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource$Companion;-><init>()V

    return-void
.end method

.method public static fromBiometricSourceType(Landroid/hardware/biometrics/BiometricSourceType;)Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    :goto_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;->FACE_SENSOR:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;->FACE_SENSOR:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;->FINGERPRINT_SENSOR:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;

    :goto_1
    return-object p0
.end method
