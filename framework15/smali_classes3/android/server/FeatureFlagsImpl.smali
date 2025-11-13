.class public final Landroid/server/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/server/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist removeTextService()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist telemetryApisService()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
