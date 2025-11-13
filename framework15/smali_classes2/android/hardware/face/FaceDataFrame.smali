.class public final Landroid/hardware/face/FaceDataFrame;
.super Ljava/lang/Object;
.source "FaceDataFrame.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/face/FaceDataFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAcquiredInfo:I

.field private final blacklist mDistance:F

.field private final blacklist mIsCancellable:Z

.field private final blacklist mPan:F

.field private final blacklist mTilt:F

.field private final blacklist mVendorCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/face/FaceDataFrame$1;

    invoke-direct {v0}, Landroid/hardware/face/FaceDataFrame$1;-><init>()V

    sput-object v0, Landroid/hardware/face/FaceDataFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/face/FaceDataFrame;->mAcquiredInfo:I

    iput p2, p0, Landroid/hardware/face/FaceDataFrame;->mVendorCode:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/face/FaceDataFrame;->mPan:F

    iput v0, p0, Landroid/hardware/face/FaceDataFrame;->mTilt:F

    iput v0, p0, Landroid/hardware/face/FaceDataFrame;->mDistance:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/face/FaceDataFrame;->mIsCancellable:Z

    return-void
.end method

.method public constructor blacklist <init>(IIFFFZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/face/FaceDataFrame;->mAcquiredInfo:I

    iput p2, p0, Landroid/hardware/face/FaceDataFrame;->mVendorCode:I

    iput p3, p0, Landroid/hardware/face/FaceDataFrame;->mPan:F

    iput p4, p0, Landroid/hardware/face/FaceDataFrame;->mTilt:F

    iput p5, p0, Landroid/hardware/face/FaceDataFrame;->mDistance:F

    iput-boolean p6, p0, Landroid/hardware/face/FaceDataFrame;->mIsCancellable:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceDataFrame;->mAcquiredInfo:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceDataFrame;->mVendorCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceDataFrame;->mPan:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceDataFrame;->mTilt:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceDataFrame;->mDistance:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/face/FaceDataFrame;->mIsCancellable:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/face/FaceDataFrame-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/face/FaceDataFrame;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAcquiredInfo()I
    .locals 1

    iget v0, p0, Landroid/hardware/face/FaceDataFrame;->mAcquiredInfo:I

    return v0
.end method

.method public blacklist getDistance()F
    .locals 1

    iget v0, p0, Landroid/hardware/face/FaceDataFrame;->mDistance:F

    return v0
.end method

.method public blacklist getPan()F
    .locals 1

    iget v0, p0, Landroid/hardware/face/FaceDataFrame;->mPan:F

    return v0
.end method

.method public blacklist getTilt()F
    .locals 1

    iget v0, p0, Landroid/hardware/face/FaceDataFrame;->mTilt:F

    return v0
.end method

.method public blacklist getVendorCode()I
    .locals 1

    iget v0, p0, Landroid/hardware/face/FaceDataFrame;->mVendorCode:I

    return v0
.end method

.method public blacklist isCancellable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/face/FaceDataFrame;->mIsCancellable:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/hardware/face/FaceDataFrame;->mAcquiredInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/face/FaceDataFrame;->mVendorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/face/FaceDataFrame;->mPan:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/face/FaceDataFrame;->mTilt:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/face/FaceDataFrame;->mDistance:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Landroid/hardware/face/FaceDataFrame;->mIsCancellable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
