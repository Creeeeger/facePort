.class public final Lcom/samsung/android/sume/Shape;
.super Ljava/lang/Object;
.source "Shape.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/Shape;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist batch:I

.field private blacklist channels:I

.field private blacklist cols:I

.field private blacklist rows:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Lcom/samsung/android/sume/Shape$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/Shape$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/Shape;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(IIII)V
    .locals 0
    .param p1, "batch"    # I
    .param p2, "rows"    # I
    .param p3, "cols"    # I
    .param p4, "channels"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "batch",
            "rows",
            "cols",
            "channels"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/samsung/android/sume/Shape;->batch:I

    .line 22
    iput p2, p0, Lcom/samsung/android/sume/Shape;->rows:I

    .line 23
    iput p3, p0, Lcom/samsung/android/sume/Shape;->cols:I

    .line 24
    iput p4, p0, Lcom/samsung/android/sume/Shape;->channels:I

    .line 25
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sume/Shape;->batch:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sume/Shape;->rows:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sume/Shape;->cols:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sume/Shape;->channels:I

    .line 32
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/ShapeType;[I)V
    .locals 3
    .param p1, "shapeType"    # Lcom/samsung/android/sume/ShapeType;
    .param p2, "shape"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shapeType",
            "shape"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    aget v0, p2, v0

    iput v0, p0, Lcom/samsung/android/sume/Shape;->batch:I

    .line 36
    sget-object v0, Lcom/samsung/android/sume/ShapeType;->NHWC:Lcom/samsung/android/sume/ShapeType;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    .line 37
    aget v0, p2, v2

    iput v0, p0, Lcom/samsung/android/sume/Shape;->rows:I

    .line 38
    aget v0, p2, v1

    iput v0, p0, Lcom/samsung/android/sume/Shape;->cols:I

    goto :goto_0

    .line 40
    :cond_0
    aget v0, p2, v2

    iput v0, p0, Lcom/samsung/android/sume/Shape;->cols:I

    .line 41
    aget v0, p2, v1

    iput v0, p0, Lcom/samsung/android/sume/Shape;->rows:I

    .line 43
    :goto_0
    const/4 v0, 0x3

    aget v0, p2, v0

    iput v0, p0, Lcom/samsung/android/sume/Shape;->channels:I

    .line 44
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 49
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 54
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 55
    :cond_0
    instance-of v1, p1, Lcom/samsung/android/sume/Shape;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 57
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/sume/Shape;

    .line 58
    .local v1, "other":Lcom/samsung/android/sume/Shape;
    const/4 v3, 0x4

    new-array v4, v3, [I

    iget v5, p0, Lcom/samsung/android/sume/Shape;->batch:I

    aput v5, v4, v2

    iget v5, p0, Lcom/samsung/android/sume/Shape;->rows:I

    aput v5, v4, v0

    iget v5, p0, Lcom/samsung/android/sume/Shape;->cols:I

    const/4 v6, 0x2

    aput v5, v4, v6

    iget v5, p0, Lcom/samsung/android/sume/Shape;->channels:I

    const/4 v7, 0x3

    aput v5, v4, v7

    .line 59
    .local v4, "arr1":[I
    new-array v3, v3, [I

    iget v5, v1, Lcom/samsung/android/sume/Shape;->batch:I

    aput v5, v3, v2

    iget v2, v1, Lcom/samsung/android/sume/Shape;->rows:I

    aput v2, v3, v0

    iget v0, v1, Lcom/samsung/android/sume/Shape;->cols:I

    aput v0, v3, v6

    iget v0, v1, Lcom/samsung/android/sume/Shape;->channels:I

    aput v0, v3, v7

    move-object v0, v3

    .line 60
    .local v0, "arr2":[I
    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    return v2
.end method

.method public final blacklist getBatch()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/samsung/android/sume/Shape;->batch:I

    return v0
.end method

.method public final blacklist getChannels()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/samsung/android/sume/Shape;->channels:I

    return v0
.end method

.method public final blacklist getCols()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/samsung/android/sume/Shape;->cols:I

    return v0
.end method

.method public final blacklist getDimension()I
    .locals 2

    .line 122
    iget v0, p0, Lcom/samsung/android/sume/Shape;->cols:I

    iget v1, p0, Lcom/samsung/android/sume/Shape;->rows:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public final blacklist getRows()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/samsung/android/sume/Shape;->rows:I

    return v0
.end method

.method public final blacklist setBatch(I)Lcom/samsung/android/sume/Shape;
    .locals 0
    .param p1, "batch"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "batch"
        }
    .end annotation

    .line 93
    iput p1, p0, Lcom/samsung/android/sume/Shape;->batch:I

    .line 94
    return-object p0
.end method

.method public final blacklist setChannels(I)Lcom/samsung/android/sume/Shape;
    .locals 0
    .param p1, "channels"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channels"
        }
    .end annotation

    .line 117
    iput p1, p0, Lcom/samsung/android/sume/Shape;->channels:I

    .line 118
    return-object p0
.end method

.method public final blacklist setCols(I)Lcom/samsung/android/sume/Shape;
    .locals 0
    .param p1, "cols"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cols"
        }
    .end annotation

    .line 109
    iput p1, p0, Lcom/samsung/android/sume/Shape;->cols:I

    .line 110
    return-object p0
.end method

.method public final blacklist setRows(I)Lcom/samsung/android/sume/Shape;
    .locals 0
    .param p1, "rows"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rows"
        }
    .end annotation

    .line 101
    iput p1, p0, Lcom/samsung/android/sume/Shape;->rows:I

    .line 102
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 71
    iget v0, p0, Lcom/samsung/android/sume/Shape;->batch:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget v0, p0, Lcom/samsung/android/sume/Shape;->rows:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget v0, p0, Lcom/samsung/android/sume/Shape;->cols:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget v0, p0, Lcom/samsung/android/sume/Shape;->channels:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    return-void
.end method
