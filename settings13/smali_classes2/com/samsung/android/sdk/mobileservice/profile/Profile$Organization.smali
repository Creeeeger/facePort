.class public Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;
.super Ljava/lang/Object;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/profile/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Organization"
.end annotation


# instance fields
.field private mAction:I

.field private mCompany:Ljava/lang/String;

.field private mDepartment:Ljava/lang/String;

.field private mLocked:Z

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1155
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;->mLocked:Z

    .line 1156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;->mAction:I

    .line 1157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;->mCompany:Ljava/lang/String;

    .line 1158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;->mDepartment:Ljava/lang/String;

    .line 1159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;->mTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public putParcelData(Landroid/os/Parcel;)V
    .locals 1

    .line 1168
    iget-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;->mLocked:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1169
    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1170
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;->mCompany:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1171
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;->mDepartment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1172
    iget-object p0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
