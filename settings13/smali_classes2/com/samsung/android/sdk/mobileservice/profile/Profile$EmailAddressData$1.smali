.class final Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddressData$1;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddressData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddressData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddressData;
    .locals 0

    .line 2178
    new-instance p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddressData;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddressData;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2176
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddressData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddressData;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddressData;
    .locals 0

    .line 2182
    new-array p0, p1, [Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddressData;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2176
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddressData$1;->newArray(I)[Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddressData;

    move-result-object p0

    return-object p0
.end method
