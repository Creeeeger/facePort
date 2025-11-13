.class public Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumberData;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/profile/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneNumberData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumberData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLabel:Ljava/lang/String;

.field private mLocked:Z

.field private mType:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1951
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumberData$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumberData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumberData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1988
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 1966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1967
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumberData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 1971
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumberData;->mLocked:Z

    .line 1972
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumberData;->mValue:Ljava/lang/String;

    .line 1973
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumberData;->mType:Ljava/lang/String;

    .line 1974
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumberData;->mLabel:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1998
    iget-boolean p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumberData;->mLocked:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1999
    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumberData;->mValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2000
    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumberData;->mType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2001
    iget-object p0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumberData;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
