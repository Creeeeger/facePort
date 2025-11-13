.class public abstract Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.super Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AuthenticationCallback"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 459
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o onAuthenticationAcquired(I)V
    .locals 0
    .param p1, "acquireInfo"    # I

    .line 499
    return-void
.end method

.method public whitelist onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .line 468
    return-void
.end method

.method public whitelist onAuthenticationFailed()V
    .locals 0

    .line 490
    return-void
.end method

.method public whitelist onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "helpCode"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .line 478
    return-void
.end method

.method public whitelist onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 0
    .param p1, "result"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .line 484
    return-void
.end method

.method public blacklist onUdfpsPointerDown(I)V
    .locals 0
    .param p1, "sensorId"    # I

    .line 506
    return-void
.end method

.method public blacklist onUdfpsPointerUp(I)V
    .locals 0
    .param p1, "sensorId"    # I

    .line 513
    return-void
.end method
