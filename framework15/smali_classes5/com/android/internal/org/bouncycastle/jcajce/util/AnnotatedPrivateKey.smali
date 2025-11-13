.class public Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;
.super Ljava/lang/Object;
.source "AnnotatedPrivateKey.java"

# interfaces
.implements Ljava/security/PrivateKey;


# static fields
.field public static final blacklist LABEL:Ljava/lang/String; = "label"


# instance fields
.field private final blacklist annotations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist key:Ljava/security/PrivateKey;


# direct methods
.method constructor blacklist <init>(Ljava/security/PrivateKey;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    const-string/jumbo v0, "label"

    invoke-static {v0, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->annotations:Ljava/util/Map;

    return-void
.end method

.method constructor blacklist <init>(Ljava/security/PrivateKey;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivateKey;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->annotations:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public blacklist addAnnotation(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->annotations:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;-><init>(Ljava/security/PrivateKey;Ljava/util/Map;)V

    return-object v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    invoke-interface {v0, v1}, Ljava/security/PrivateKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    invoke-interface {v0, p1}, Ljava/security/PrivateKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    invoke-interface {v0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAnnotation(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->annotations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAnnotations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->annotations:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    invoke-interface {v0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    invoke-interface {v0}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getKey()Ljava/security/PrivateKey;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    invoke-interface {v0}, Ljava/security/PrivateKey;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist removeAnnotation(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->annotations:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;-><init>(Ljava/security/PrivateKey;Ljava/util/Map;)V

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->annotations:Ljava/util/Map;

    const-string/jumbo v1, "label"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->annotations:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    invoke-interface {v0}, Ljava/security/PrivateKey;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
