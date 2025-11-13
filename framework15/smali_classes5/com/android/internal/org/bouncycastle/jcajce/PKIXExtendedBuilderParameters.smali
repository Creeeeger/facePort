.class public Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
.super Ljava/lang/Object;
.source "PKIXExtendedBuilderParameters.java"

# interfaces
.implements Ljava/security/cert/CertPathParameters;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    }
.end annotation


# instance fields
.field private final blacklist baseParameters:Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

.field private final blacklist excludedCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist maxPathLength:I


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->-$$Nest$fgetbaseParameters(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->baseParameters:Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->-$$Nest$fgetexcludedCerts(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->excludedCerts:Ljava/util/Set;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->-$$Nest$fgetmaxPathLength(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->maxPathLength:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public blacklist getBaseParameters()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->baseParameters:Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    return-object v0
.end method

.method public blacklist getExcludedCerts()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->excludedCerts:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getMaxPathLength()I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->maxPathLength:I

    return v0
.end method
