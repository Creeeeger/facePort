.class Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;
.super Lcom/android/internal/org/bouncycastle/math/ec/AbstractECLookupTable;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createCacheSafeLookupTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;II)Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

.field final synthetic blacklist val$FE_BYTES:I

.field final synthetic blacklist val$len:I

.field final synthetic blacklist val$table:[B


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;II[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    iput p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$len:I

    iput p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$table:[B

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/AbstractECLookupTable;-><init>()V

    return-void
.end method

.method private blacklist createPoint([B[B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 5

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getSize()I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$len:I

    return v0
.end method

.method public blacklist lookup(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 9

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    new-array v0, v0, [B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$len:I

    if-ge v3, v4, :cond_1

    xor-int v4, v3, p1

    add-int/lit8 v4, v4, -0x1

    shr-int/lit8 v4, v4, 0x1f

    const/4 v5, 0x0

    :goto_1
    iget v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    if-ge v5, v6, :cond_0

    aget-byte v6, v0, v5

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$table:[B

    add-int v8, v2, v5

    aget-byte v7, v7, v8

    and-int/2addr v7, v4

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    aget-byte v6, v1, v5

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$table:[B

    iget v8, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    add-int/2addr v8, v2

    add-int/2addr v8, v5

    aget-byte v7, v7, v8

    and-int/2addr v7, v4

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    iget v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->createPoint([B[B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3
.end method

.method public blacklist lookupVar(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 6

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    new-array v0, v0, [B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    new-array v1, v1, [B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    mul-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$table:[B

    add-int v5, v2, v3

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$table:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->createPoint([B[B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3
.end method
