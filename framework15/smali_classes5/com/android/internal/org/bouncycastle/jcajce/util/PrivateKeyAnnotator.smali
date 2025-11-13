.class public Lcom/android/internal/org/bouncycastle/jcajce/util/PrivateKeyAnnotator;
.super Ljava/lang/Object;
.source "PrivateKeyAnnotator.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist annotate(Ljava/security/PrivateKey;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;
    .locals 1

    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;-><init>(Ljava/security/PrivateKey;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist annotate(Ljava/security/PrivateKey;Ljava/util/Map;)Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivateKey;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;-><init>(Ljava/security/PrivateKey;Ljava/util/Map;)V

    return-object v1
.end method
