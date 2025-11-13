.class public final Landroid/hardware/camera2/params/ColorSpaceTransform;
.super Ljava/lang/Object;
.source "ColorSpaceTransform.java"


# static fields
.field private static final greylist-max-o COLUMNS:I = 0x3

.field private static final greylist-max-o COUNT:I = 0x9

.field private static final greylist-max-o COUNT_INT:I = 0x12

.field private static final greylist-max-o OFFSET_DENOMINATOR:I = 0x1

.field private static final greylist-max-o OFFSET_NUMERATOR:I = 0x0

.field private static final greylist-max-o RATIONAL_SIZE:I = 0x2

.field private static final greylist-max-o ROWS:I = 0x3


# instance fields
.field private final greylist-max-o mElements:[I


# direct methods
.method public constructor whitelist <init>([I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "elements must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "element %d must not be null"

    invoke-static {p1, v2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "elements must be 18 length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>([Landroid/util/Rational;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "elements must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    const/16 v0, 0x12

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "element[%d] must not be null"

    invoke-static {p1, v2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x0

    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/util/Rational;->getNumerator()I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/util/Rational;->getDenominator()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "elements must be 9 length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o toShortString()Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_3

    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    :goto_1
    const-string v5, ", "

    const/4 v6, 0x2

    if-ge v4, v3, :cond_1

    iget-object v7, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v8, v2, 0x0

    aget v7, v7, v8

    iget-object v8, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v9, v2, 0x1

    aget v8, v8, v9

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-ge v4, v6, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_1
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v1, v6, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist copyElements([II)V
    .locals 4

    const-string v0, "offset must not be negative"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    const-string v0, "destination must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    sub-int/2addr v0, p2

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    add-int v2, v0, p2

    iget-object v3, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    aget v3, v3, v0

    aput v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destination too small to fit elements"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist copyElements([Landroid/util/Rational;I)V
    .locals 7

    const-string v0, "offset must not be negative"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    const-string v0, "destination must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    sub-int/2addr v0, p2

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v4, v2, 0x0

    aget v3, v3, v4

    iget-object v4, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    add-int v5, v0, p2

    new-instance v6, Landroid/util/Rational;

    invoke-direct {v6, v3, v4}, Landroid/util/Rational;-><init>(II)V

    aput-object v6, p1, v5

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destination too small to fit elements"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/params/ColorSpaceTransform;

    if-eqz v2, :cond_4

    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/ColorSpaceTransform;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x9

    if-ge v3, v5, :cond_3

    iget-object v5, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v6, v4, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v7, v4, 0x1

    aget v6, v6, v7

    iget-object v7, v2, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v8, v4, 0x0

    aget v7, v7, v8

    iget-object v8, v2, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v9, v4, 0x1

    aget v8, v8, v9

    new-instance v9, Landroid/util/Rational;

    invoke-direct {v9, v5, v6}, Landroid/util/Rational;-><init>(II)V

    new-instance v10, Landroid/util/Rational;

    invoke-direct {v10, v7, v8}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/util/Rational;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    return v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    return v0
.end method

.method public whitelist getElement(II)Landroid/util/Rational;
    .locals 3

    if-ltz p1, :cond_1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    mul-int/lit8 v1, p2, 0x3

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    mul-int/lit8 v2, p2, 0x3

    add-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v0, v1}, Landroid/util/Rational;-><init>(II)V

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "row out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "column out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Landroid/hardware/camera2/params/ColorSpaceTransform;->toShortString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ColorSpaceTransform%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
