.class public Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountName;
.super Ljava/lang/Object;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/profile/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountName"
.end annotation


# instance fields
.field private mAction:I

.field private mFamilyName:Ljava/lang/String;

.field private mGivenName:Ljava/lang/String;

.field private mLocked:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountName;->mLocked:Z

    .line 480
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountName;->mAction:I

    .line 481
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountName;->mGivenName:Ljava/lang/String;

    .line 482
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountName;->mFamilyName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public putParcelData(Landroid/os/Parcel;)V
    .locals 2

    .line 491
    iget-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountName;->mLocked:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 492
    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountName;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountName;->mGivenName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 494
    iget-object p0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountName;->mFamilyName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
