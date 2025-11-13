.class public final Landroid/view/inputmethod/SparseRectFArray;
.super Ljava/lang/Object;
.source "SparseRectFArray.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/SparseRectFArray;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mCoordinates:[F

.field private final greylist-max-o mFlagsArray:[I

.field private final greylist-max-o mKeys:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/SparseRectFArray$1;

    invoke-direct {v0}, Landroid/view/inputmethod/SparseRectFArray$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/SparseRectFArray;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-$$Nest$fgetmCount(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-$$Nest$fgetmCount(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-$$Nest$fgetmCount(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-$$Nest$fgetmCount(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-$$Nest$fgetmKeys(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)[I

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-$$Nest$fgetmCount(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-$$Nest$fgetmCoordinates(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)[F

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-$$Nest$fgetmCount(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-$$Nest$fgetmFlagsArray(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)[I

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-$$Nest$fgetmCount(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    move-result v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;Landroid/view/inputmethod/SparseRectFArray-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/SparseRectFArray;-><init>(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Landroid/view/inputmethod/SparseRectFArray;

    if-nez v2, :cond_2

    return v0

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/view/inputmethod/SparseRectFArray;

    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    iget-object v4, v2, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    iget-object v4, v2, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    iget-object v4, v2, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    nop

    :goto_0
    return v0
.end method

.method public greylist-max-o get(I)Landroid/graphics/RectF;
    .locals 8

    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-gez p1, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_2

    return-object v1

    :cond_2
    mul-int/lit8 v1, v0, 0x4

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    aget v3, v3, v1

    iget-object v4, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    add-int/lit8 v6, v1, 0x2

    aget v5, v5, v6

    iget-object v6, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    add-int/lit8 v7, v1, 0x3

    aget v6, v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method

.method public greylist-max-o getFlags(II)I
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    if-nez v0, :cond_0

    return p2

    :cond_0
    if-gez p1, :cond_1

    return p2

    :cond_1
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_2

    return p2

    :cond_2
    iget-object v1, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    aget v1, v1, v0

    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    array-length v0, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    int-to-float v3, v0

    iget-object v4, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    aget v4, v4, v2

    add-float/2addr v3, v4

    float-to-int v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    aget v1, v2, v1

    add-int/2addr v0, v1

    return v0

    :cond_2
    :goto_1
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SparseRectFArray{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    if-eqz v1, :cond_1

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    mul-int/lit8 v2, v1, 0x4

    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    add-int/lit8 v4, v2, 0x0

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "],["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    add-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    add-int/lit8 v4, v2, 0x3

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "]:flagsArray="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    :goto_1
    const-string v0, "SparseRectFArray{}"

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
