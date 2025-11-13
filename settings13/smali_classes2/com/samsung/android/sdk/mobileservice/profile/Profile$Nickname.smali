.class public Lcom/samsung/android/sdk/mobileservice/profile/Profile$Nickname;
.super Ljava/lang/Object;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/profile/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Nickname"
.end annotation


# instance fields
.field private mAction:I

.field private mLocked:Z

.field private mNickName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 909
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Nickname;->mLocked:Z

    .line 910
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Nickname;->mAction:I

    .line 911
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Nickname;->mNickName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public putParcelData(Landroid/os/Parcel;)V
    .locals 1

    .line 920
    iget-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Nickname;->mLocked:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 921
    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Nickname;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 922
    iget-object p0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Nickname;->mNickName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
