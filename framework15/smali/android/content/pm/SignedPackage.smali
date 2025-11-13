.class public Landroid/content/pm/SignedPackage;
.super Ljava/lang/Object;
.source "SignedPackage.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field private final blacklist mData:Landroid/content/pm/SignedPackageParcel;


# direct methods
.method public constructor blacklist <init>(Landroid/content/pm/SignedPackageParcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/pm/SignedPackageParcel;

    invoke-direct {v0}, Landroid/content/pm/SignedPackageParcel;-><init>()V

    iput-object p1, v0, Landroid/content/pm/SignedPackageParcel;->packageName:Ljava/lang/String;

    iput-object p2, v0, Landroid/content/pm/SignedPackageParcel;->certificateDigest:[B

    iput-object v0, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/content/pm/SignedPackage;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/content/pm/SignedPackage;

    iget-object v3, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v3, v3, Landroid/content/pm/SignedPackageParcel;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v4, v4, Landroid/content/pm/SignedPackageParcel;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v3, v3, Landroid/content/pm/SignedPackageParcel;->certificateDigest:[B

    iget-object v4, v1, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v4, v4, Landroid/content/pm/SignedPackageParcel;->certificateDigest:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public blacklist getCertificateDigest()[B
    .locals 1

    iget-object v0, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v0, v0, Landroid/content/pm/SignedPackageParcel;->certificateDigest:[B

    return-object v0
.end method

.method public final blacklist getData()Landroid/content/pm/SignedPackageParcel;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v0, v0, Landroid/content/pm/SignedPackageParcel;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v0, v0, Landroid/content/pm/SignedPackageParcel;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v1, v1, Landroid/content/pm/SignedPackageParcel;->certificateDigest:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
