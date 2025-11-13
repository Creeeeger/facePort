.class Lcom/samsung/android/sume/core/format/StapleMutableShape;
.super Ljava/lang/Object;
.source "StapleMutableShape.java"

# interfaces
.implements Lcom/samsung/android/sume/core/format/MutableShape;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/core/format/StapleMutableShape;",
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

    .line 97
    new-instance v0, Lcom/samsung/android/sume/core/format/StapleMutableShape$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/format/StapleMutableShape$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->batch:I

    .line 26
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    .line 27
    iput v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    .line 28
    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->channels:I

    .line 29
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

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->batch:I

    .line 33
    iput p2, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    .line 34
    iput p3, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    .line 35
    iput p4, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->channels:I

    .line 36
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
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

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->batch:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->channels:I

    .line 55
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/sume/core/format/StapleMutableShape$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/samsung/android/sume/core/format/StapleMutableShape$1;

    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/format/StapleMutableShape;-><init>(Landroid/os/Parcel;)V

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

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    aget v0, p2, v0

    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->batch:I

    .line 40
    sget-object v0, Lcom/samsung/android/sume/ShapeType;->NHWC:Lcom/samsung/android/sume/ShapeType;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    .line 41
    aget v0, p2, v2

    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    .line 42
    aget v0, p2, v1

    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    goto :goto_0

    .line 44
    :cond_0
    aget v0, p2, v2

    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    .line 45
    aget v0, p2, v1

    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    .line 47
    :goto_0
    const/4 v0, 0x3

    aget v0, p2, v0

    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->channels:I

    .line 48
    return-void
.end method


# virtual methods
.method public blacklist compareTo(Lcom/samsung/android/sume/core/format/Shape;)I
    .locals 2
    .param p1, "o"    # Lcom/samsung/android/sume/core/format/Shape;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableShape;->getTotal()I

    move-result v0

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/Shape;->getTotal()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "o"
        }
    .end annotation

    .line 17
    check-cast p1, Lcom/samsung/android/sume/core/format/Shape;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/format/StapleMutableShape;->compareTo(Lcom/samsung/android/sume/core/format/Shape;)I

    move-result p1

    return p1
.end method

.method public blacklist copy()Lcom/samsung/android/sume/core/format/Shape;
    .locals 3

    .line 73
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/Shape;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 76
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "fail to clone"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic blacklist copy()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableShape;->copy()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v0

    return-object v0
.end method

.method public blacklist deepCopy()Lcom/samsung/android/sume/core/format/MutableShape;
    .locals 5

    .line 82
    new-instance v0, Lcom/samsung/android/sume/core/format/StapleMutableShape;

    iget v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->batch:I

    iget v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    iget v3, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    iget v4, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->channels:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sume/core/format/StapleMutableShape;-><init>(IIII)V

    return-object v0
.end method

.method public bridge synthetic blacklist deepCopy()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableShape;->deepCopy()Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 59
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

    .line 87
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 88
    :cond_0
    instance-of v1, p1, Lcom/samsung/android/sume/core/format/MutableShape;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 90
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/sume/core/format/MutableShape;

    .line 91
    .local v1, "other":Lcom/samsung/android/sume/core/format/MutableShape;
    const/4 v3, 0x4

    new-array v4, v3, [I

    iget v5, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->batch:I

    aput v5, v4, v2

    iget v5, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    aput v5, v4, v0

    iget v5, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    const/4 v6, 0x2

    aput v5, v4, v6

    iget v5, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->channels:I

    const/4 v7, 0x3

    aput v5, v4, v7

    .line 92
    .local v4, "arr1":[I
    new-array v3, v3, [I

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MutableShape;->getBatch()I

    move-result v5

    aput v5, v3, v2

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MutableShape;->getRows()I

    move-result v2

    aput v2, v3, v0

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MutableShape;->getCols()I

    move-result v0

    aput v0, v3, v6

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MutableShape;->getChannels()I

    move-result v0

    aput v0, v3, v7

    move-object v0, v3

    .line 93
    .local v0, "arr2":[I
    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    return v2
.end method

.method public blacklist getBatch()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->batch:I

    return v0
.end method

.method public blacklist getChannels()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->channels:I

    return v0
.end method

.method public blacklist getCols()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    return v0
.end method

.method public blacklist getDimension()I
    .locals 2

    .line 157
    iget v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    iget v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public blacklist getRows()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    return v0
.end method

.method public blacklist getTotal()I
    .locals 2

    .line 162
    iget v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->batch:I

    iget v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->channels:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public blacklist scale(Landroid/util/Pair;)Lcom/samsung/android/sume/core/format/MutableShape;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/samsung/android/sume/core/format/MutableShape;"
        }
    .end annotation

    .line 188
    .local p1, "scale":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    int-to-float v0, v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    .line 189
    iget v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    int-to-float v0, v0

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    .line 190
    return-object p0
.end method

.method public blacklist scale(Ljava/lang/Float;)Lcom/samsung/android/sume/core/format/MutableShape;
    .locals 2
    .param p1, "scale"    # Ljava/lang/Float;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    .line 181
    iget v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    int-to-float v0, v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    .line 182
    iget v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    int-to-float v0, v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    .line 183
    return-object p0
.end method

.method public blacklist setBatch(I)Lcom/samsung/android/sume/core/format/MutableShape;
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

    .line 116
    iput p1, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->batch:I

    .line 117
    return-object p0
.end method

.method public blacklist setChannels(I)Lcom/samsung/android/sume/core/format/MutableShape;
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

    .line 146
    iput p1, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->channels:I

    .line 147
    return-object p0
.end method

.method public blacklist setCols(I)Lcom/samsung/android/sume/core/format/MutableShape;
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

    .line 136
    iput p1, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    .line 137
    return-object p0
.end method

.method public blacklist setRows(I)Lcom/samsung/android/sume/core/format/MutableShape;
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

    .line 126
    iput p1, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    .line 127
    return-object p0
.end method

.method public blacklist toArray(I)[I
    .locals 6
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 172
    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 173
    new-array v3, v3, [I

    iget v5, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->batch:I

    aput v5, v3, v2

    iget v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    aput v2, v3, v1

    iget v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    aput v1, v3, v4

    iget v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->channels:I

    aput v1, v3, v0

    return-object v3

    .line 175
    :cond_0
    new-array v3, v3, [I

    iget v5, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->batch:I

    aput v5, v3, v2

    iget v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    aput v2, v3, v1

    iget v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    aput v1, v3, v4

    iget v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->channels:I

    aput v1, v3, v0

    return-object v3
.end method

.method public blacklist toMutableShape()Lcom/samsung/android/sume/core/format/MutableShape;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lcom/samsung/android/sume/core/format/MutableShape;",
            ">()TV;"
        }
    .end annotation

    .line 167
    return-object p0
.end method

.method public blacklist toShape()Lcom/samsung/android/sume/core/format/Shape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lcom/samsung/android/sume/core/format/Shape;",
            ">()TV;"
        }
    .end annotation

    .line 152
    new-instance v0, Lcom/samsung/android/sume/core/format/StapleShape;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/format/StapleShape;-><init>(Lcom/samsung/android/sume/core/format/MutableShape;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->batch:I

    .line 197
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->channels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "batch/rows/cols/channels=[%d %d %d %d]"

    invoke-static {v2, v1}, Lcom/samsung/android/sume/core/Def;->fmtstr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    return-object v0
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

    .line 64
    iget v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->batch:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->channels:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    return-void
.end method
