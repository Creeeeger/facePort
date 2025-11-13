.class public Lcom/android/internal/org/bouncycastle/cms/RecipientOperator;
.super Ljava/lang/Object;
.source "RecipientOperator.java"


# instance fields
.field private final blacklist operator:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/operator/InputDecryptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/operator/MacCalculator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public blacklist getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/operator/InputDecryptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/org/bouncycastle/operator/InputDecryptor;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/operator/InputDecryptor;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/util/io/TeeInputStream;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/org/bouncycastle/operator/MacCalculator;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/operator/MacCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/io/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public blacklist getMac()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/org/bouncycastle/operator/MacCalculator;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/operator/MacCalculator;->getMac()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist isMacBased()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/operator/MacCalculator;

    return v0
.end method
