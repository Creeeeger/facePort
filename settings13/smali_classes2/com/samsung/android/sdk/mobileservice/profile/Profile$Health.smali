.class public Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;
.super Ljava/lang/Object;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/profile/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Health"
.end annotation


# instance fields
.field private mAction:I

.field private mActivityLevel:Ljava/lang/String;

.field private mHeight:Ljava/lang/String;

.field private mLocked:Z

.field private mWeight:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2831
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;->mLocked:Z

    .line 2832
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;->mAction:I

    .line 2833
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;->mHeight:Ljava/lang/String;

    .line 2834
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;->mWeight:Ljava/lang/String;

    .line 2835
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;->mActivityLevel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public putParcelData(Landroid/os/Parcel;)V
    .locals 1

    .line 2844
    iget-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;->mLocked:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2845
    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2846
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;->mHeight:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2847
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;->mWeight:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2848
    iget-object p0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;->mActivityLevel:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
