.class public Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;
.super Ljava/lang/Object;
.source "PemObject.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/io/pem/PemObjectGenerator;


# static fields
.field private static final blacklist EMPTY_LIST:Ljava/util/List;


# instance fields
.field private blacklist content:[B

.field private blacklist headers:Ljava/util/List;

.field private blacklist type:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/List;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->type:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->headers:Ljava/util/List;

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->content:[B

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[B)V
    .locals 1

    sget-object v0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;Ljava/util/List;[B)V

    return-void
.end method


# virtual methods
.method public blacklist generate()Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/util/io/pem/PemGenerationException;
        }
    .end annotation

    return-object p0
.end method

.method public blacklist getContent()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->content:[B

    return-object v0
.end method

.method public blacklist getHeaders()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->headers:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->type:Ljava/lang/String;

    return-object v0
.end method
