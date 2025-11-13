.class final Lcom/android/keyguard/logging/BiometricUnlockLogger$logCalculateModeForPassiveAuthUnlockingNotAllowed$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/keyguard/logging/BiometricUnlockLogger$logCalculateModeForPassiveAuthUnlockingNotAllowed$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/logging/BiometricUnlockLogger$logCalculateModeForPassiveAuthUnlockingNotAllowed$2;

    invoke-direct {v0}, Lcom/android/keyguard/logging/BiometricUnlockLogger$logCalculateModeForPassiveAuthUnlockingNotAllowed$2;-><init>()V

    sput-object v0, Lcom/android/keyguard/logging/BiometricUnlockLogger$logCalculateModeForPassiveAuthUnlockingNotAllowed$2;->INSTANCE:Lcom/android/keyguard/logging/BiometricUnlockLogger$logCalculateModeForPassiveAuthUnlockingNotAllowed$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lcom/android/systemui/log/core/LogMessage;

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getInt1()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getInt2()I

    move-result p0

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getBool1()Z

    move-result v1

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getBool2()Z

    move-result v2

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getBool3()Z

    move-result v3

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getBool4()Z

    move-result p1

    const-string v4, "calculateModeForPassiveAuth unlockingAllowed=false strongBiometric="

    const-string v5, " strongAuthFlags="

    const-string v6, " nonStrongBiometricAllowed="

    invoke-static {v4, p0, v5, v0, v6}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " deviceInteractive="

    const-string v4, " isKeyguardShowing="

    invoke-static {p0, v1, v0, v2, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v0, " bypass="

    invoke-static {p0, v3, v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
