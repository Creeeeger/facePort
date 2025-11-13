.class public final Landroid/content/integrity/AppInstallMetadata;
.super Ljava/lang/Object;
.source "AppInstallMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/integrity/AppInstallMetadata$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mAllowedInstallersAndCertificates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAppCertificateLineage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAppCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mInstallerCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mInstallerName:Ljava/lang/String;

.field private final blacklist mIsPreInstalled:Z

.field private final blacklist mIsStampPresent:Z

.field private final blacklist mIsStampTrusted:Z

.field private final blacklist mIsStampVerified:Z

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mStampCertificateHash:Ljava/lang/String;

.field private final blacklist mVersionCode:J


# direct methods
.method private constructor blacklist <init>(Landroid/content/integrity/AppInstallMetadata$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->-$$Nest$fgetmPackageName(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->-$$Nest$fgetmAppCertificates(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mAppCertificates:Ljava/util/List;

    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->-$$Nest$fgetmAppCertificateLineage(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mAppCertificateLineage:Ljava/util/List;

    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->-$$Nest$fgetmInstallerName(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mInstallerName:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->-$$Nest$fgetmInstallerCertificates(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mInstallerCertificates:Ljava/util/List;

    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->-$$Nest$fgetmVersionCode(Landroid/content/integrity/AppInstallMetadata$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/integrity/AppInstallMetadata;->mVersionCode:J

    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->-$$Nest$fgetmIsPreInstalled(Landroid/content/integrity/AppInstallMetadata$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/integrity/AppInstallMetadata;->mIsPreInstalled:Z

    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->-$$Nest$fgetmIsStampPresent(Landroid/content/integrity/AppInstallMetadata$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/integrity/AppInstallMetadata;->mIsStampPresent:Z

    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->-$$Nest$fgetmIsStampVerified(Landroid/content/integrity/AppInstallMetadata$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/integrity/AppInstallMetadata;->mIsStampVerified:Z

    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->-$$Nest$fgetmIsStampTrusted(Landroid/content/integrity/AppInstallMetadata$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/integrity/AppInstallMetadata;->mIsStampTrusted:Z

    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->-$$Nest$fgetmStampCertificateHash(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mStampCertificateHash:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->-$$Nest$fgetmAllowedInstallersAndCertificates(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mAllowedInstallersAndCertificates:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/integrity/AppInstallMetadata$Builder;Landroid/content/integrity/AppInstallMetadata-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/integrity/AppInstallMetadata;-><init>(Landroid/content/integrity/AppInstallMetadata$Builder;)V

    return-void
.end method


# virtual methods
.method public blacklist getAllowedInstallersAndCertificates()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mAllowedInstallersAndCertificates:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getAppCertificateLineage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mAppCertificateLineage:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getAppCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mAppCertificates:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getInstallerCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mInstallerCertificates:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getInstallerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mInstallerName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getStampCertificateHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mStampCertificateHash:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVersionCode()J
    .locals 2

    iget-wide v0, p0, Landroid/content/integrity/AppInstallMetadata;->mVersionCode:J

    return-wide v0
.end method

.method public blacklist isPreInstalled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/integrity/AppInstallMetadata;->mIsPreInstalled:Z

    return v0
.end method

.method public blacklist isStampPresent()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/integrity/AppInstallMetadata;->mIsStampPresent:Z

    return v0
.end method

.method public blacklist isStampTrusted()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/integrity/AppInstallMetadata;->mIsStampTrusted:Z

    return v0
.end method

.method public blacklist isStampVerified()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/integrity/AppInstallMetadata;->mIsStampVerified:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/integrity/AppInstallMetadata;->mAppCertificates:Ljava/util/List;

    iget-object v2, p0, Landroid/content/integrity/AppInstallMetadata;->mAppCertificateLineage:Ljava/util/List;

    iget-object v3, p0, Landroid/content/integrity/AppInstallMetadata;->mInstallerName:Ljava/lang/String;

    const-string/jumbo v4, "null"

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/content/integrity/AppInstallMetadata;->mInstallerName:Ljava/lang/String;

    :goto_0
    iget-object v5, p0, Landroid/content/integrity/AppInstallMetadata;->mInstallerCertificates:Ljava/util/List;

    if-nez v5, :cond_1

    move-object v5, v4

    goto :goto_1

    :cond_1
    iget-object v5, p0, Landroid/content/integrity/AppInstallMetadata;->mInstallerCertificates:Ljava/util/List;

    :goto_1
    iget-wide v6, p0, Landroid/content/integrity/AppInstallMetadata;->mVersionCode:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-boolean v7, p0, Landroid/content/integrity/AppInstallMetadata;->mIsPreInstalled:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v8, p0, Landroid/content/integrity/AppInstallMetadata;->mIsStampPresent:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v9, p0, Landroid/content/integrity/AppInstallMetadata;->mIsStampVerified:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v10, p0, Landroid/content/integrity/AppInstallMetadata;->mIsStampTrusted:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-object v11, p0, Landroid/content/integrity/AppInstallMetadata;->mStampCertificateHash:Ljava/lang/String;

    if-nez v11, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, p0, Landroid/content/integrity/AppInstallMetadata;->mStampCertificateHash:Ljava/lang/String;

    :goto_2
    move-object v11, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "AppInstallMetadata { PackageName = %s, AppCerts = %s, AppCertsLineage = %s, InstallerName = %s, InstallerCerts = %s, VersionCode = %d, PreInstalled = %b, StampPresent = %b, StampVerified = %b, StampTrusted = %b, StampCert = %s }"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
