.class public abstract Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;
.super Ljava/lang/Object;
.source "SemFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AuthenticationCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .line 524
    return-void
.end method

.method public whitelist onAuthenticationFailed()V
    .locals 0

    .line 553
    return-void
.end method

.method public whitelist onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "helpCode"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .line 536
    return-void
.end method

.method public whitelist onAuthenticationSucceeded(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationResult;)V
    .locals 0
    .param p1, "result"    # Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationResult;

    .line 545
    return-void
.end method
