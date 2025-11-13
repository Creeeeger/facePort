.class final Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumberData$1;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumberData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumberData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumberData;
    .locals 0

    .line 1953
    new-instance p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumberData;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumberData;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1951
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumberData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumberData;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumberData;
    .locals 0

    .line 1957
    new-array p0, p1, [Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumberData;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1951
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumberData$1;->newArray(I)[Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumberData;

    move-result-object p0

    return-object p0
.end method
