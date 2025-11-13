.class public final Lcom/android/server/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/server/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist disableSystemCompaction()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableOdpFeatureGuard()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist newBugreportKeyboardShortcut()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist pinWebview()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist pkgTargetedBatteryChangedNotSticky()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist skipHomeArtPins()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
