.class public Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
.super Ljava/lang/Object;
.source "PKIXExtendedParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist baseParameters:Ljava/security/cert/PKIXParameters;

.field private final blacklist date:Ljava/util/Date;

.field private blacklist extraCRLStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist extraCertStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist namedCRLStoreMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist namedCertificateStoreMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist revocationEnabled:Z

.field private blacklist targetConstraints:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

.field private blacklist trustAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist useDeltas:Z

.field private final blacklist validityDate:Ljava/util/Date;

.field private blacklist validityModel:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetbaseParameters(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/security/cert/PKIXParameters;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->baseParameters:Ljava/security/cert/PKIXParameters;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetdate(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->date:Ljava/util/Date;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetextraCRLStores(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetextraCertStores(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetnamedCRLStoreMap(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetnamedCertificateStoreMap(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetrevocationEnabled(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->revocationEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettargetConstraints(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->targetConstraints:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettrustAnchors(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetuseDeltas(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetvalidityDate(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityDate:Ljava/util/Date;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetvalidityModel(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    return p0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->-$$Nest$fgetbaseParameters(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/security/cert/PKIXParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->-$$Nest$fgetvalidityDate(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityDate:Ljava/util/Date;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->-$$Nest$fgetdate(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->date:Ljava/util/Date;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->-$$Nest$fgettargetConstraints(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->targetConstraints:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->-$$Nest$fgetextraCertStores(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->-$$Nest$fgetnamedCertificateStoreMap(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->-$$Nest$fgetextraCRLStores(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->-$$Nest$fgetnamedCRLStoreMap(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->-$$Nest$fgetuseDeltas(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->-$$Nest$fgetvalidityModel(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->isRevocationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->revocationEnabled:Z

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/security/cert/PKIXParameters;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXParameters;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->targetConstraints:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityDate:Ljava/util/Date;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityDate:Ljava/util/Date;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityDate:Ljava/util/Date;

    :goto_0
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->date:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->revocationEnabled:Z

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public blacklist addCRLStore(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist addCertificateStore(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStore;)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist addNamedCRLStore(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public blacklist addNamedCertificateStore(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStore;)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public blacklist build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .locals 2

    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters-IA;)V

    return-object v0
.end method

.method public blacklist setRevocationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->revocationEnabled:Z

    return-void
.end method

.method public blacklist setTargetConstraints(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->targetConstraints:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    return-object p0
.end method

.method public blacklist setTrustAnchor(Ljava/security/cert/TrustAnchor;)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    return-object p0
.end method

.method public blacklist setTrustAnchors(Ljava/util/Set;)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    return-object p0
.end method

.method public blacklist setUseDeltasEnabled(Z)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    return-object p0
.end method

.method public blacklist setValidityModel(I)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 0

    iput p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    return-object p0
.end method
