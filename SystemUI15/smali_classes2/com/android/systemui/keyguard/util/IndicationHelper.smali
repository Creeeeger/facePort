.class public final Lcom/android/systemui/keyguard/util/IndicationHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/util/IndicationHelper;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method


# virtual methods
.method public final shouldSuppressErrorMsg(Landroid/hardware/biometrics/BiometricSourceType;I)Z
    .locals 6

    sget-object v0, Lcom/android/systemui/keyguard/util/IndicationHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0x9

    const/4 v1, 0x7

    iget-object p0, p0, Lcom/android/systemui/keyguard/util/IndicationHelper;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v2, 0x1

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-eq p1, v2, :cond_3

    const/4 v5, 0x2

    if-eq p1, v5, :cond_1

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p0

    xor-int/2addr p0, v2

    if-eqz p0, :cond_2

    if-eq p2, v1, :cond_2

    if-ne p2, v0, :cond_5

    :cond_2
    if-eq p2, v3, :cond_5

    if-ne p2, v5, :cond_0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p0

    xor-int/2addr p0, v2

    if-eqz p0, :cond_4

    if-eq p2, v1, :cond_4

    if-ne p2, v0, :cond_5

    :cond_4
    if-eq p2, v3, :cond_5

    const/16 p0, 0xa

    if-eq p2, p0, :cond_5

    const/16 p0, 0x13

    if-ne p2, p0, :cond_0

    :cond_5
    :goto_0
    return v2
.end method
