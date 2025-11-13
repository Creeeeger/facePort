.class public Lcom/samsung/android/bio/face/SemBioFace;
.super Ljava/lang/Object;
.source "SemBioFace.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/bio/face/SemBioFace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mDeviceId:J

.field private blacklist mFaceId:I

.field private blacklist mGroupId:I

.field private blacklist mName:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 124
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFace$1;

    invoke-direct {v0}, Lcom/samsung/android/bio/face/SemBioFace$1;-><init>()V

    sput-object v0, Lcom/samsung/android/bio/face/SemBioFace;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/face/Face;)V
    .locals 2
    .param p1, "face"    # Landroid/hardware/face/Face;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/hardware/face/Face;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFace;->mName:Ljava/lang/CharSequence;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/bio/face/SemBioFace;->mGroupId:I

    .line 48
    invoke-virtual {p1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/bio/face/SemBioFace;->mFaceId:I

    .line 49
    invoke-virtual {p1}, Landroid/hardware/face/Face;->getDeviceId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/bio/face/SemBioFace;->mDeviceId:J

    .line 50
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFace;->mName:Ljava/lang/CharSequence;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/bio/face/SemBioFace;->mGroupId:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/bio/face/SemBioFace;->mFaceId:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/bio/face/SemBioFace;->mDeviceId:J

    .line 58
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/bio/face/SemBioFace-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/face/SemBioFace;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/CharSequence;IIJ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "groupId"    # I
    .param p3, "faceId"    # I
    .param p4, "deviceId"    # J

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFace;->mName:Ljava/lang/CharSequence;

    .line 37
    iput p2, p0, Lcom/samsung/android/bio/face/SemBioFace;->mGroupId:I

    .line 38
    iput p3, p0, Lcom/samsung/android/bio/face/SemBioFace;->mFaceId:I

    .line 39
    iput-wide p4, p0, Lcom/samsung/android/bio/face/SemBioFace;->mDeviceId:J

    .line 40
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDeviceId()J
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/samsung/android/bio/face/SemBioFace;->mDeviceId:J

    return-wide v0
.end method

.method public blacklist getFaceId()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/samsung/android/bio/face/SemBioFace;->mFaceId:I

    return v0
.end method

.method public blacklist getGroupId()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/samsung/android/bio/face/SemBioFace;->mGroupId:I

    return v0
.end method

.method public blacklist getName()Ljava/lang/CharSequence;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFace;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 115
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFace;->mName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget v0, p0, Lcom/samsung/android/bio/face/SemBioFace;->mGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget v0, p0, Lcom/samsung/android/bio/face/SemBioFace;->mFaceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-wide v0, p0, Lcom/samsung/android/bio/face/SemBioFace;->mDeviceId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 119
    return-void
.end method
