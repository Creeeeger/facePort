.class public Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;
.super Ljava/lang/Object;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/profile/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Photo"
.end annotation


# instance fields
.field private mAction:I

.field private mLocked:Z

.field private mPhoto:[B

.field private mPhotoFileUri:Ljava/lang/String;

.field private mPhotoSize:I

.field private mPhotoType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1004
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;->mLocked:Z

    .line 1005
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;->mAction:I

    .line 1007
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;->mPhotoSize:I

    if-lez v0, :cond_1

    .line 1009
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;->mPhoto:[B

    .line 1010
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1012
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;->mPhotoType:Ljava/lang/String;

    .line 1014
    invoke-static {}, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->access$000()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    .line 1015
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;->mPhotoFileUri:Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method public putParcelData(Landroid/os/Parcel;)V
    .locals 2

    .line 1025
    iget-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;->mLocked:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1026
    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1027
    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;->mPhotoSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1028
    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;->mPhotoSize:I

    if-lez v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;->mPhoto:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;->mPhotoType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1033
    invoke-static {}, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->access$000()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 1034
    iget-object p0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;->mPhotoFileUri:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
