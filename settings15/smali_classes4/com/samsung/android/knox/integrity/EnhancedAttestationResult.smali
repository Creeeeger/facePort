.class public Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_FIELD_BLOB:Ljava/lang/String; = "dataFieldBlob"

.field public static final DATA_FIELD_SERVER_RESPONSE_ID:Ljava/lang/String; = "serverResponseId"

.field public static final DATA_FIELD_SERVER_RESPONSE_RAW_DATA:Ljava/lang/String; = "serverResponseRawData"

.field public static final DATA_FIELD_UNIQUE_ID:Ljava/lang/String; = "dataFieldUniqueId"

.field public static final DATA_FIELD_URL:Ljava/lang/String; = "dataFieldUrl"

.field public static final ERROR_BAD_REQUEST:I = 0x190

.field public static final ERROR_BIND_FAIL:I = -0x7

.field public static final ERROR_CONFLICT:I = 0x199

.field public static final ERROR_DEVICE_NOT_SUPPORTED:I = -0x4

.field public static final ERROR_FORBIDDEN:I = 0x193

.field public static final ERROR_INTERNAL_SERVER:I = 0x1f4

.field public static final ERROR_INVALID_AUK:I = -0x6

.field public static final ERROR_INVALID_NONCE:I = -0x5

.field public static final ERROR_NETWORK:I = -0x8

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NOT_FOUND:I = 0x194

.field public static final ERROR_PERMISSION:I = -0x2

.field public static final ERROR_RETRY_AFTER:Ljava/lang/String; = "Retry-After:"

.field public static final ERROR_SERVICE_UNAVAILABLE:I = 0x1f7

.field public static final ERROR_TIMA_INTERNAL:I = -0x3

.field public static final ERROR_UNAUTHORIZED:I = 0x191

.field public static final ERROR_UNKNOWN:I = -0x1

.field public static final TAG:Ljava/lang/String; = "EAPolicyResult"


# instance fields
.field public data:Landroid/os/Bundle;

.field public errorCode:I

.field public reason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBlob()[B
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;->data:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "dataFieldBlob"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public getError()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;->errorCode:I

    return p0
.end method

.method public getReason()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;->reason:Ljava/lang/String;

    return-object p0
.end method

.method public getResponseRawData()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;->data:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string/jumbo v0, "serverResponseRawData"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRetryAfterTime()I
    .locals 3

    const-string v0, "Retry-After:"

    const/4 v1, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;->reason:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;->reason:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_0

    move v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getRetryAfterTime: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EAPolicyResult"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1
.end method

.method public getServerResponseId()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;->data:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string/jumbo v0, "serverResponseId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;->data:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "dataFieldUniqueId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;->data:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "dataFieldUrl"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;->errorCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;->reason:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;->data:Landroid/os/Bundle;

    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;->data:Landroid/os/Bundle;

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;->errorCode:I

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;->reason:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;->errorCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;->reason:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;->data:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
