.class public final Landroid/hardware/face/FaceEnrollFrame;
.super Ljava/lang/Object;
.source "FaceEnrollFrame.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/face/FaceEnrollFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCell:Landroid/hardware/face/FaceEnrollCell;

.field private final blacklist mData:Landroid/hardware/face/FaceDataFrame;

.field private final blacklist mStage:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/face/FaceEnrollFrame$1;

    invoke-direct {v0}, Landroid/hardware/face/FaceEnrollFrame$1;-><init>()V

    sput-object v0, Landroid/hardware/face/FaceEnrollFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/face/FaceEnrollCell;ILandroid/hardware/face/FaceDataFrame;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/face/FaceEnrollFrame;->mCell:Landroid/hardware/face/FaceEnrollCell;

    iput p2, p0, Landroid/hardware/face/FaceEnrollFrame;->mStage:I

    iput-object p3, p0, Landroid/hardware/face/FaceEnrollFrame;->mData:Landroid/hardware/face/FaceDataFrame;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/hardware/face/FaceEnrollCell;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/hardware/face/FaceEnrollCell;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceEnrollCell;

    iput-object v0, p0, Landroid/hardware/face/FaceEnrollFrame;->mCell:Landroid/hardware/face/FaceEnrollCell;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceEnrollFrame;->mStage:I

    const-class v0, Landroid/hardware/face/FaceDataFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/hardware/face/FaceDataFrame;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceDataFrame;

    iput-object v0, p0, Landroid/hardware/face/FaceEnrollFrame;->mData:Landroid/hardware/face/FaceDataFrame;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/face/FaceEnrollFrame-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/face/FaceEnrollFrame;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCell()Landroid/hardware/face/FaceEnrollCell;
    .locals 1

    iget-object v0, p0, Landroid/hardware/face/FaceEnrollFrame;->mCell:Landroid/hardware/face/FaceEnrollCell;

    return-object v0
.end method

.method public blacklist getData()Landroid/hardware/face/FaceDataFrame;
    .locals 1

    iget-object v0, p0, Landroid/hardware/face/FaceEnrollFrame;->mData:Landroid/hardware/face/FaceDataFrame;

    return-object v0
.end method

.method public blacklist getStage()I
    .locals 1

    iget v0, p0, Landroid/hardware/face/FaceEnrollFrame;->mStage:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/face/FaceEnrollFrame;->mCell:Landroid/hardware/face/FaceEnrollCell;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/hardware/face/FaceEnrollFrame;->mStage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/face/FaceEnrollFrame;->mData:Landroid/hardware/face/FaceDataFrame;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
