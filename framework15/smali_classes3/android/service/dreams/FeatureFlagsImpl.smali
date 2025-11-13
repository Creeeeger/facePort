.class public final Landroid/service/dreams/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/service/dreams/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist dismissDreamOnKeyguardDismiss()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist dreamHandlesBeingObscured()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist dreamHandlesConfirmKeys()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist dreamOverlayHost()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist dreamWakeRedirect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
