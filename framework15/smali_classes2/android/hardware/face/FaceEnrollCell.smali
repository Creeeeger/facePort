.class public final Landroid/hardware/face/FaceEnrollCell;
.super Ljava/lang/Object;
.source "FaceEnrollCell.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/face/FaceEnrollCell;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mX:I

.field private final blacklist mY:I

.field private final blacklist mZ:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/face/FaceEnrollCell$1;

    invoke-direct {v0}, Landroid/hardware/face/FaceEnrollCell$1;-><init>()V

    sput-object v0, Landroid/hardware/face/FaceEnrollCell;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/face/FaceEnrollCell;->mX:I

    iput p2, p0, Landroid/hardware/face/FaceEnrollCell;->mY:I

    iput p3, p0, Landroid/hardware/face/FaceEnrollCell;->mZ:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceEnrollCell;->mX:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceEnrollCell;->mY:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceEnrollCell;->mZ:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/face/FaceEnrollCell-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/face/FaceEnrollCell;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getX()I
    .locals 1

    iget v0, p0, Landroid/hardware/face/FaceEnrollCell;->mX:I

    return v0
.end method

.method public blacklist getY()I
    .locals 1

    iget v0, p0, Landroid/hardware/face/FaceEnrollCell;->mY:I

    return v0
.end method

.method public blacklist getZ()I
    .locals 1

    iget v0, p0, Landroid/hardware/face/FaceEnrollCell;->mZ:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/hardware/face/FaceEnrollCell;->mX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/face/FaceEnrollCell;->mY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/face/FaceEnrollCell;->mZ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
