.class public final Landroid/service/chooser/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/service/chooser/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist chooserAlbumText()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist chooserPayloadToggling()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableChooserResult()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableSharesheetMetadataExtra()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist fixResolverMemoryLeak()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
