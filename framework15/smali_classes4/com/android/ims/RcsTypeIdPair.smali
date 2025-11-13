.class public Lcom/android/ims/RcsTypeIdPair;
.super Ljava/lang/Object;
.source "RcsTypeIdPair.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/RcsTypeIdPair;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mId:I

.field private blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/ims/RcsTypeIdPair$1;

    invoke-direct {v0}, Lcom/android/ims/RcsTypeIdPair$1;-><init>()V

    sput-object v0, Lcom/android/ims/RcsTypeIdPair;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/ims/RcsTypeIdPair;->mType:I

    iput p2, p0, Lcom/android/ims/RcsTypeIdPair;->mId:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/RcsTypeIdPair;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/RcsTypeIdPair;->mId:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getId()I
    .locals 1

    iget v0, p0, Lcom/android/ims/RcsTypeIdPair;->mId:I

    return v0
.end method

.method public blacklist getType()I
    .locals 1

    iget v0, p0, Lcom/android/ims/RcsTypeIdPair;->mType:I

    return v0
.end method

.method public blacklist setId(I)V
    .locals 0

    iput p1, p0, Lcom/android/ims/RcsTypeIdPair;->mId:I

    return-void
.end method

.method public blacklist setType(I)V
    .locals 0

    iput p1, p0, Lcom/android/ims/RcsTypeIdPair;->mType:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/android/ims/RcsTypeIdPair;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/ims/RcsTypeIdPair;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
