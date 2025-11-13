.class public Lcom/android/internal/org/bouncycastle/operator/GenericKey;
.super Ljava/lang/Object;
.source "GenericKey.java"


# instance fields
.field private blacklist algorithmIdentifier:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private blacklist representation:Ljava/lang/Object;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/operator/GenericKey;->algorithmIdentifier:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/operator/GenericKey;->representation:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/operator/GenericKey;->algorithmIdentifier:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/operator/GenericKey;->representation:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/GenericKey;->algorithmIdentifier:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/operator/GenericKey;->representation:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public blacklist getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/GenericKey;->algorithmIdentifier:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getRepresentation()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/GenericKey;->representation:Ljava/lang/Object;

    return-object v0
.end method
