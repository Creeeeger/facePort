.class public Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;
.super Ljava/lang/Object;
.source "EnhancedAttestationResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist DATA_FIELD_BLOB:Ljava/lang/String; = "dataFieldBlob"

.field static final blacklist DATA_FIELD_SERVER_RESPONSE_ID:Ljava/lang/String; = "serverResponseId"

.field static final blacklist DATA_FIELD_SERVER_RESPONSE_RAW_DATA:Ljava/lang/String; = "serverResponseRawData"

.field static final blacklist DATA_FIELD_UNIQUE_ID:Ljava/lang/String; = "dataFieldUniqueId"

.field static final blacklist DATA_FIELD_URL:Ljava/lang/String; = "dataFieldUrl"

.field static final blacklist ERROR_BAD_REQUEST:I = 0x190

.field static final blacklist ERROR_BIND_FAIL:I = -0x7

.field static final blacklist ERROR_CONFLICT:I = 0x199

.field static final blacklist ERROR_DEVICE_NOT_SUPPORTED:I = -0x4

.field static final blacklist ERROR_FORBIDDEN:I = 0x193

.field static final blacklist ERROR_INTERNAL_SERVER:I = 0x1f4

.field static final blacklist ERROR_INVALID_AUK:I = -0x6

.field static final blacklist ERROR_INVALID_NONCE:I = -0x5

.field static final blacklist ERROR_NETWORK:I = -0x8

.field static final blacklist ERROR_NONE:I = 0x0

.field static final blacklist ERROR_NOT_FOUND:I = 0x194

.field static final blacklist ERROR_PERMISSION:I = -0x2

.field static final blacklist ERROR_RETRY_AFTER:Ljava/lang/String; = "Retry-After:"

.field static final blacklist ERROR_SERVICE_UNAVAILABLE:I = 0x1f7

.field static final blacklist ERROR_TIMA_INTERNAL:I = -0x3

.field static final blacklist ERROR_UNAUTHORIZED:I = 0x191

.field static final blacklist ERROR_UNKNOWN:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SEMEAPolicyResult"


# instance fields
.field private blacklist data:Landroid/os/Bundle;

.field private blacklist errorCode:I

.field private blacklist reason:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->readFromParcel(Landroid/os/Parcel;)V

    .line 65
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 103
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->errorCode:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->reason:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->data:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method blacklist getBlob()[B
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->data:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x0

    return-object v0

    .line 165
    :cond_0
    const-string v1, "dataFieldBlob"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method blacklist getError()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->errorCode:I

    return v0
.end method

.method blacklist getReason()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->reason:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getResponseRawData()Ljava/lang/String;
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->data:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x0

    return-object v0

    .line 158
    :cond_0
    const-string/jumbo v1, "serverResponseRawData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getRetryAfterTime()I
    .locals 4

    .line 176
    const-string v0, "Retry-After:"

    const/4 v1, -0x1

    .line 178
    .local v1, "time":I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->reason:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->reason:Ljava/lang/String;

    const-string v3, ""

    .line 180
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .local v0, "tempTime":I
    if-lez v0, :cond_0

    .line 182
    move v1, v0

    .line 187
    .end local v0    # "tempTime":I
    :cond_0
    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRetryAfterTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SEMEAPolicyResult"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method blacklist getServerResponseId()Ljava/lang/String;
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->data:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 170
    const/4 v0, 0x0

    return-object v0

    .line 172
    :cond_0
    const-string/jumbo v1, "serverResponseId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getUniqueId()Ljava/lang/String;
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->data:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x0

    return-object v0

    .line 144
    :cond_0
    const-string v1, "dataFieldUniqueId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getUrl()Ljava/lang/String;
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->data:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    return-object v0

    .line 151
    :cond_0
    const-string v1, "dataFieldUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    .line 122
    iput-object p1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->data:Landroid/os/Bundle;

    .line 123
    return-void
.end method

.method public blacklist setErrorCode(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .line 115
    iput p1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->errorCode:I

    .line 116
    return-void
.end method

.method public blacklist setReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 129
    iput-object p1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->reason:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg"    # I

    .line 94
    if-eqz p1, :cond_0

    .line 95
    iget v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->errorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->data:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 99
    :cond_0
    return-void
.end method
