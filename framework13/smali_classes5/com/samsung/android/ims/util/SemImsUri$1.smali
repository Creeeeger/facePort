.class Lcom/samsung/android/ims/util/SemImsUri$1;
.super Ljava/lang/Object;
.source "SemImsUri.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/util/SemImsUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/ims/util/SemImsUri;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/ims/util/SemImsUri;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 190
    new-instance v0, Lcom/samsung/android/ims/util/SemImsUri;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/ims/util/SemImsUri;-><init>(Landroid/os/Parcel;Lcom/samsung/android/ims/util/SemImsUri-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 182
    invoke-virtual {p0, p1}, Lcom/samsung/android/ims/util/SemImsUri$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/ims/util/SemImsUri;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/samsung/android/ims/util/SemImsUri;
    .locals 1
    .param p1, "size"    # I

    .line 200
    new-array v0, p1, [Lcom/samsung/android/ims/util/SemImsUri;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 182
    invoke-virtual {p0, p1}, Lcom/samsung/android/ims/util/SemImsUri$1;->newArray(I)[Lcom/samsung/android/ims/util/SemImsUri;

    move-result-object p1

    return-object p1
.end method
