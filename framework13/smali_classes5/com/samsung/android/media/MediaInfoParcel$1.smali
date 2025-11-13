.class Lcom/samsung/android/media/MediaInfoParcel$1;
.super Ljava/lang/Object;
.source "MediaInfoParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/MediaInfoParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/media/MediaInfoParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/media/MediaInfoParcel;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 22
    new-instance v0, Lcom/samsung/android/media/MediaInfoParcel;

    invoke-direct {v0}, Lcom/samsung/android/media/MediaInfoParcel;-><init>()V

    .line 23
    .local v0, "_aidl_out":Lcom/samsung/android/media/MediaInfoParcel;
    invoke-virtual {v0, p1}, Lcom/samsung/android/media/MediaInfoParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 24
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/samsung/android/media/MediaInfoParcel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/media/MediaInfoParcel;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/samsung/android/media/MediaInfoParcel;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 28
    new-array v0, p1, [Lcom/samsung/android/media/MediaInfoParcel;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/samsung/android/media/MediaInfoParcel$1;->newArray(I)[Lcom/samsung/android/media/MediaInfoParcel;

    move-result-object p1

    return-object p1
.end method
