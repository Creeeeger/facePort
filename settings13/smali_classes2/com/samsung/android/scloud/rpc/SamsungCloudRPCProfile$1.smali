.class Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile$1;
.super Ljava/lang/Object;
.source "SamsungCloudRPCProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 72
    new-instance p0, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;

    invoke-direct {p0, p1}, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "in"
        }
    .end annotation

    .line 69
    invoke-virtual {p0, p1}, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 77
    new-array p0, p1, [Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "size"
        }
    .end annotation

    .line 69
    invoke-virtual {p0, p1}, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile$1;->newArray(I)[Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;

    move-result-object p0

    return-object p0
.end method
