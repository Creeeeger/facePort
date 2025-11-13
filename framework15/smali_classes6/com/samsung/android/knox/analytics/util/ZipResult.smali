.class public Lcom/samsung/android/knox/analytics/util/ZipResult;
.super Ljava/lang/Object;
.source "ZipResult.java"


# instance fields
.field private blacklist content:[B

.field private blacklist length:I

.field private blacklist originalLength:I


# direct methods
.method public constructor blacklist <init>([BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/util/ZipResult;->content:[B

    iput p2, p0, Lcom/samsung/android/knox/analytics/util/ZipResult;->length:I

    iput p3, p0, Lcom/samsung/android/knox/analytics/util/ZipResult;->originalLength:I

    return-void
.end method


# virtual methods
.method public blacklist getContent()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/util/ZipResult;->content:[B

    return-object v0
.end method

.method public blacklist getLength()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/analytics/util/ZipResult;->length:I

    return v0
.end method

.method public blacklist getOriginalLength()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/analytics/util/ZipResult;->originalLength:I

    return v0
.end method
