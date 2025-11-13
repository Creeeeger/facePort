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

    new-instance v0, Lcom/samsung/android/sume/core/format/StapleMutableShape$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/format/StapleMutableShape$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->batch:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    iput v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->channels:I

    return-void
.end method

.method public constructor blacklist <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->batch:I

    iput p2, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    iput p3, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    iput p4, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->channels:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->batch:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->channels:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/sume/core/format/StapleMutableShape$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/format/StapleMutableShape;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/types/ShapeType;[I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aget v0, p2, v0

    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->batch:I

    sget-object v0, Lcom/samsung/android/sume/core/types/ShapeType;->NHWC:Lcom/samsung/android/sume/core/types/ShapeType;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    aget v0, p2, v2

    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    aget v0, p2, v1

    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    goto :goto_0

    :cond_0
    aget v0, p2, v2

    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    aget v0, p2, v1

    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    :goto_0
    const/4 v0, 0x3

    aget v0, p2, v0

    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->channels:I

    return-void
.end method


# virtual methods
.method public blacklist compareTo(Lcom/samsung/android/sume/core/format/Shape;)I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableShape;->getTotal()I

    move-result v0

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/Shape;->getTotal()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/sume/core/format/Shape;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/format/StapleMutableShape;->compareTo(Lcom/samsung/android/sume/core/format/Shape;)I

    move-result p1

    return p1
.end method

.method public blacklist copy()Lcom/samsung/android/sume/core/format/Shape;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/Shape;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "fail to clone"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic blacklist copy()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableShape;->copy()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v0

    return-object v0
.end method

.method public blacklist deepCopy()Lcom/samsung/android/sume/core/format/MutableShape;
    .locals 5

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

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleMutableShape;->deepCopy()Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Lcom/samsung/android/sume/core/format/MutableShape;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableShape;

    iget v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->batch:I

    iget v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    iget v3, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    iget v4, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->channels:I

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableShape;->getBatch()I

    move-result v2

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableShape;->getRows()I

    move-result v3

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableShape;->getCols()I

    move-result v4

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableShape;->getChannels()I

    move-result v5

    filled-new-array {v2, v3, v4, v5}, [I

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    return v3
.end method

.method public blacklist getBatch()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->batch:I

    return v0
.end method

.method public blacklist getChannels()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->channels:I

    return v0
.end method

.method public blacklist getCols()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    return v0
.end method

.method public blacklist getDimension()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    iget v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public blacklist getRows()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    return v0
.end method

.method public blacklist getTotal()I
    .locals 2

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

    iget v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    int-to-float v0, v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    iget v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    int-to-float v0, v0

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    return-object p0
.end method

.method public blacklist scale(Ljava/lang/Float;)Lcom/samsung/android/sume/core/format/MutableShape;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    int-to-float v0, v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    iget v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    int-to-float v0, v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    return-object p0
.end method

.method public blacklist setBatch(I)Lcom/samsung/android/sume/core/format/MutableShape;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->batch:I

    return-object p0
.end method

.method public blacklist setChannels(I)Lcom/samsung/android/sume/core/format/MutableShape;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->channels:I

    return-object p0
.end method

.method public blacklist setCols(I)Lcom/samsung/android/sume/core/format/MutableShape;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    return-object p0
.end method

.method public blacklist setRows(I)Lcom/samsung/android/sume/core/format/MutableShape;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    return-object p0
.end method

.method public blacklist toArray(I)[I
    .locals 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->batch:I

    iget v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    iget v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    iget v3, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->channels:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->batch:I

    iget v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    iget v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    iget v3, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->channels:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    return-object v0
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

    new-instance v0, Lcom/samsung/android/sume/core/format/StapleShape;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/format/StapleShape;-><init>(Lcom/samsung/android/sume/core/format/MutableShape;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->batch:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->channels:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "batch/rows/cols/channels=[%d %d %d %d]"

    invoke-static {v2, v1}, Lcom/samsung/android/sume/core/Def;->fmtstr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->batch:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->rows:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->cols:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableShape;->channels:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
