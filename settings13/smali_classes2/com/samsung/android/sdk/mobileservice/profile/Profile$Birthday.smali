.class public Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;
.super Ljava/lang/Object;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/profile/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Birthday"
.end annotation


# instance fields
.field private mAction:I

.field private mCalendarType:Ljava/lang/String;

.field private mDay:Ljava/lang/String;

.field private mLocked:Z

.field private mMonth:Ljava/lang/String;

.field private mYear:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public putParcelData(Landroid/os/Parcel;)V
    .locals 2

    .line 758
    iget-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;->mLocked:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 759
    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 760
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;->mYear:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 761
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;->mMonth:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 762
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;->mDay:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 763
    invoke-static {}, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->access$000()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 764
    iget-object p0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;->mCalendarType:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 742
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;->mLocked:Z

    .line 743
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;->mAction:I

    .line 744
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;->mYear:Ljava/lang/String;

    .line 745
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;->mMonth:Ljava/lang/String;

    .line 746
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;->mDay:Ljava/lang/String;

    .line 747
    invoke-static {}, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->access$000()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 748
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;->mCalendarType:Ljava/lang/String;

    :cond_1
    return-void
.end method
