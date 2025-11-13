.class public Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_BAD_REQUEST:I = 0x190

.field public static final ERROR_BIND_FAIL:I = -0x2

.field public static final ERROR_CB_EMPTY:I = -0x9

.field public static final ERROR_CONFLICT:I = 0x199

.field public static final ERROR_DEVICE_NOT_SUPPORTED:I = -0x7

.field public static final ERROR_FORBIDDEN:I = 0x193

.field public static final ERROR_FW:I = -0x5

.field public static final ERROR_INTERNAL:I = -0x6

.field public static final ERROR_INTERNAL_SERVER:I = 0x1f4

.field public static final ERROR_NETWORK:I = -0x8

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NOT_FOUND:I = 0x194

.field public static final ERROR_PERMISSION:I = -0x3

.field public static final ERROR_REQUEST_NOT_FINISHED:I = -0x4

.field public static final ERROR_SERVICE_UNAVAILABLE:I = 0x1f7

.field public static final ERROR_UNAUTHORIZED:I = 0x191

.field public static final ERROR_UNKNOWN:I = -0x1

.field public static final NOT_REGISTERED:I = 0x2

.field public static final REGISTERED:I = 0x1

.field public static final TAG:Ljava/lang/String; = "KnoxPushServiceResult"


# instance fields
.field public deviceId:Ljava/lang/String;

.field public errorCode:I

.field public reason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/kpm/KnoxPushServiceResult$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/kpm/KnoxPushServiceResult$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getError()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;->errorCode:I

    return p0
.end method

.method public getReason()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;->reason:Ljava/lang/String;

    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;->errorCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;->reason:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;->deviceId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;->errorCode:I

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;->reason:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-eqz p1, :cond_0

    iget p2, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;->errorCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;->reason:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
