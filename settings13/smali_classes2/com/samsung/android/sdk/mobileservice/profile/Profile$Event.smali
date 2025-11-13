.class public Lcom/samsung/android/sdk/mobileservice/profile/Profile$Event;
.super Ljava/lang/Object;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/profile/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# instance fields
.field private mAction:I

.field private mEventData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/mobileservice/profile/Profile$EventData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2599
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Event;->mEventData:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2580
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Event;->mAction:I

    .line 2581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Event;->mEventData:Ljava/util/ArrayList;

    .line 2582
    sget-object p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$EventData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, p0}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method


# virtual methods
.method public putParcelData(Landroid/os/Parcel;)V
    .locals 1

    .line 2591
    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Event;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2592
    iget-object p0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Event;->mEventData:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
