.class public Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;
.super Ljava/lang/Object;
.source "JcaDigestCalculatorProviderBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$DigestOutputStream;
    }
.end annotation


# instance fields
.field private blacklist helper:Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgethelper(Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;)Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->helper:Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->helper:Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$1;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$1;-><init>(Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;)V

    return-object v0
.end method

.method public blacklist setProvider(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;
    .locals 2

    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->helper:Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public blacklist setProvider(Ljava/security/Provider;)Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;
    .locals 2

    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->helper:Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method
