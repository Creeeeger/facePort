.class public final Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;
.super Ljava/lang/Object;
.source "PreferentialNetworkServiceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/PreferentialNetworkServiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field blacklist mAllowFallbackToDefaultConnection:Z

.field blacklist mExcludedUids:[I

.field blacklist mIncludedUids:[I

.field blacklist mIsEnabled:Z

.field blacklist mNetworkId:I

.field blacklist mShouldBlockNonMatchingNetworks:Z


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mIsEnabled:Z

    iput v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mNetworkId:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mAllowFallbackToDefaultConnection:Z

    iput-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mShouldBlockNonMatchingNetworks:Z

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mIncludedUids:[I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mExcludedUids:[I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/admin/PreferentialNetworkServiceConfig;
    .locals 10

    iget-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mIncludedUids:[I

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mExcludedUids:[I

    array-length v0, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Both includedUids and excludedUids cannot be nonempty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mShouldBlockNonMatchingNetworks:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mAllowFallbackToDefaultConnection:Z

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A config cannot both allow fallback and block non-matching networks"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    new-instance v0, Landroid/app/admin/PreferentialNetworkServiceConfig;

    iget-boolean v3, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mIsEnabled:Z

    iget-boolean v4, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mAllowFallbackToDefaultConnection:Z

    iget-boolean v5, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mShouldBlockNonMatchingNetworks:Z

    iget-object v6, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mIncludedUids:[I

    iget-object v7, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mExcludedUids:[I

    iget v8, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mNetworkId:I

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/app/admin/PreferentialNetworkServiceConfig;-><init>(ZZZ[I[IILandroid/app/admin/PreferentialNetworkServiceConfig-IA;)V

    return-object v0
.end method

.method public whitelist setEnabled(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mIsEnabled:Z

    return-object p0
.end method

.method public whitelist setExcludedUids([I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mExcludedUids:[I

    return-object p0
.end method

.method public whitelist setFallbackToDefaultConnectionAllowed(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mAllowFallbackToDefaultConnection:Z

    return-object p0
.end method

.method public whitelist setIncludedUids([I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mIncludedUids:[I

    return-object p0
.end method

.method public whitelist setNetworkId(I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mNetworkId:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid preference identifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setShouldBlockNonMatchingNetworks(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mShouldBlockNonMatchingNetworks:Z

    return-object p0
.end method
