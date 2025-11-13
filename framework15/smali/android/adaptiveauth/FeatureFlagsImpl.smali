.class public final Landroid/adaptiveauth/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/adaptiveauth/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist enableAdaptiveAuth()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist reportBiometricAuthAttempts()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
