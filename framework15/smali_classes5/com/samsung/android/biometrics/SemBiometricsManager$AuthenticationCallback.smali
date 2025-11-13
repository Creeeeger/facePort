.class public abstract Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;
.super Ljava/lang/Object;
.source "SemBiometricsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/SemBiometricsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AuthenticationCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAuthenticationAcquired(I)V
    .locals 0

    return-void
.end method

.method public whitelist onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public whitelist onAuthenticationFailed()V
    .locals 0

    return-void
.end method

.method public whitelist onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public whitelist onAuthenticationSucceeded(Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationResult;)V
    .locals 0

    return-void
.end method
