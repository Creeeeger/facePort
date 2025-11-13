.class public Lcom/samsung/android/sdk/mobileservice/profile/Profile$EventData;
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
    name = "EventData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/mobileservice/profile/Profile$EventData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCalendarType:Ljava/lang/String;

.field private mLabel:Ljava/lang/String;

.field private mLocked:Z

.field private mType:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2657
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$EventData$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$EventData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$EventData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 2696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2697
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$EventData;->readFromParcel(Landroid/os/Parcel;)V

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

    .line 2706
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$EventData;->mLocked:Z

    .line 2707
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$EventData;->mValue:Ljava/lang/String;

    .line 2708
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$EventData;->mType:Ljava/lang/String;

    .line 2709
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$EventData;->mLabel:Ljava/lang/String;

    .line 2710
    invoke-static {}, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->access$000()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 2711
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$EventData;->mCalendarType:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 2682
    iget-boolean p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$EventData;->mLocked:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2683
    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$EventData;->mValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2684
    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$EventData;->mType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2685
    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$EventData;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2686
    invoke-static {}, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->access$000()I

    move-result p2

    const/4 v0, 0x4

    if-lt p2, v0, :cond_0

    .line 2687
    iget-object p0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$EventData;->mCalendarType:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
