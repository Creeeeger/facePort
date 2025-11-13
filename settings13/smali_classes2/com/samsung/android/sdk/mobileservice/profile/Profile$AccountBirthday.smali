.class public Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;
.super Ljava/lang/Object;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/profile/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountBirthday"
.end annotation


# instance fields
.field private mAction:I

.field private mDay:Ljava/lang/String;

.field private mLocked:Z

.field private mMonth:Ljava/lang/String;

.field private mYear:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 782
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public putParcelData(Landroid/os/Parcel;)V
    .locals 1

    .line 888
    iget-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->mLocked:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 889
    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 890
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->mYear:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 891
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->mMonth:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 892
    iget-object p0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->mDay:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 875
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->mLocked:Z

    .line 876
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->mAction:I

    .line 877
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->mYear:Ljava/lang/String;

    .line 878
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->mMonth:Ljava/lang/String;

    .line 879
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->mDay:Ljava/lang/String;

    return-void
.end method
