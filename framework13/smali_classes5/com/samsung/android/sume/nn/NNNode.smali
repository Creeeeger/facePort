.class public Lcom/samsung/android/sume/nn/NNNode;
.super Ljava/lang/Object;
.source "NNNode.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/nn/NNNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist colorFormat:Lcom/samsung/android/sume/ColorFormat;

.field private blacklist dataType:Lcom/samsung/android/sume/DataType;

.field private blacklist mediaType:Lcom/samsung/android/sume/MediaType;

.field private blacklist name:Ljava/lang/String;

.field private blacklist shape:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/samsung/android/sume/nn/NNNode$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/nn/NNNode$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/nn/NNNode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/samsung/android/sume/DataType;->NONE:Lcom/samsung/android/sume/DataType;

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNNode;->dataType:Lcom/samsung/android/sume/DataType;

    .line 18
    sget-object v0, Lcom/samsung/android/sume/MediaType;->NONE:Lcom/samsung/android/sume/MediaType;

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNNode;->mediaType:Lcom/samsung/android/sume/MediaType;

    .line 19
    sget-object v0, Lcom/samsung/android/sume/ColorFormat;->NONE:Lcom/samsung/android/sume/ColorFormat;

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNNode;->colorFormat:Lcom/samsung/android/sume/ColorFormat;

    .line 33
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/samsung/android/sume/DataType;->NONE:Lcom/samsung/android/sume/DataType;

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNNode;->dataType:Lcom/samsung/android/sume/DataType;

    .line 18
    sget-object v0, Lcom/samsung/android/sume/MediaType;->NONE:Lcom/samsung/android/sume/MediaType;

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNNode;->mediaType:Lcom/samsung/android/sume/MediaType;

    .line 19
    sget-object v0, Lcom/samsung/android/sume/ColorFormat;->NONE:Lcom/samsung/android/sume/ColorFormat;

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNNode;->colorFormat:Lcom/samsung/android/sume/ColorFormat;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNNode;->name:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNNode;->shape:[I

    .line 38
    const-class v0, Lcom/samsung/android/sume/DataType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/sume/ValuedEnum;->fromValue(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/DataType;

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNNode;->dataType:Lcom/samsung/android/sume/DataType;

    .line 39
    const-class v0, Lcom/samsung/android/sume/MediaType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/sume/ValuedEnum;->fromValue(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/MediaType;

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNNode;->mediaType:Lcom/samsung/android/sume/MediaType;

    .line 40
    const-class v0, Lcom/samsung/android/sume/ColorFormat;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/sume/ValuedEnum;->fromValue(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/ColorFormat;

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNNode;->colorFormat:Lcom/samsung/android/sume/ColorFormat;

    .line 41
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getColorFormat()Lcom/samsung/android/sume/ColorFormat;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNNode;->colorFormat:Lcom/samsung/android/sume/ColorFormat;

    return-object v0
.end method

.method public blacklist getDataType()Lcom/samsung/android/sume/DataType;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNNode;->dataType:Lcom/samsung/android/sume/DataType;

    return-object v0
.end method

.method public blacklist getMediaType()Lcom/samsung/android/sume/MediaType;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNNode;->mediaType:Lcom/samsung/android/sume/MediaType;

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNNode;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getShape(I)I
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNNode;->shape:[I

    aget v0, v0, p1

    return v0
.end method

.method public blacklist getShape()[I
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNNode;->shape:[I

    return-object v0
.end method

.method public blacklist setColorFormat(Lcom/samsung/android/sume/ColorFormat;)V
    .locals 0
    .param p1, "colorFormat"    # Lcom/samsung/android/sume/ColorFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorFormat"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/samsung/android/sume/nn/NNNode;->colorFormat:Lcom/samsung/android/sume/ColorFormat;

    .line 99
    return-void
.end method

.method public blacklist setDataType(Lcom/samsung/android/sume/DataType;)V
    .locals 0
    .param p1, "dataType"    # Lcom/samsung/android/sume/DataType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataType"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/samsung/android/sume/nn/NNNode;->dataType:Lcom/samsung/android/sume/DataType;

    .line 83
    return-void
.end method

.method public blacklist setMediaType(Lcom/samsung/android/sume/MediaType;)V
    .locals 0
    .param p1, "mediaType"    # Lcom/samsung/android/sume/MediaType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaType"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/samsung/android/sume/nn/NNNode;->mediaType:Lcom/samsung/android/sume/MediaType;

    .line 91
    return-void
.end method

.method public blacklist setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/samsung/android/sume/nn/NNNode;->name:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public blacklist setShape([I)V
    .locals 0
    .param p1, "shape"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shape"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/samsung/android/sume/nn/NNNode;->shape:[I

    .line 75
    return-void
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

    .line 50
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNNode;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNNode;->shape:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNNode;->dataType:Lcom/samsung/android/sume/DataType;

    invoke-virtual {v0}, Lcom/samsung/android/sume/DataType;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNNode;->mediaType:Lcom/samsung/android/sume/MediaType;

    invoke-virtual {v0}, Lcom/samsung/android/sume/MediaType;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNNode;->colorFormat:Lcom/samsung/android/sume/ColorFormat;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/sume/ColorFormat;->NONE:Lcom/samsung/android/sume/ColorFormat;

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/sume/ColorFormat;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    return-void
.end method
