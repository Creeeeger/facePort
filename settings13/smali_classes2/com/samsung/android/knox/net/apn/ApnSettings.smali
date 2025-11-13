.class public Lcom/samsung/android/knox/net/apn/ApnSettings;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/net/apn/ApnSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public apn:Ljava/lang/String;

.field public authType:I

.field public id:J

.field public mcc:Ljava/lang/String;

.field public mmsPort:Ljava/lang/String;

.field public mmsProxy:Ljava/lang/String;

.field public mmsc:Ljava/lang/String;

.field public mnc:Ljava/lang/String;

.field public mvno_type:Ljava/lang/String;

.field public mvno_value:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public port:I

.field public protocol:Ljava/lang/String;

.field public proxy:Ljava/lang/String;

.field public roamingProtocol:Ljava/lang/String;

.field public server:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 153
    new-instance v0, Lcom/samsung/android/knox/net/apn/ApnSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/net/apn/ApnSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/net/apn/ApnSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 44
    iput-wide v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->id:J

    const-string v0, ""

    .line 50
    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->name:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->apn:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mcc:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mnc:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->user:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->server:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->password:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->proxy:Ljava/lang/String;

    const/4 v1, -0x1

    .line 98
    iput v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->port:I

    .line 104
    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsProxy:Ljava/lang/String;

    .line 110
    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsPort:Ljava/lang/String;

    .line 116
    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsc:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->type:Ljava/lang/String;

    .line 128
    iput v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->authType:I

    const-string v1, "IP"

    .line 134
    iput-object v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    .line 135
    iput-object v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    .line 144
    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;

    .line 145
    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 44
    iput-wide v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->id:J

    const-string v0, ""

    .line 50
    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->name:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->apn:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mcc:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mnc:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->user:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->server:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->password:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->proxy:Ljava/lang/String;

    const/4 v1, -0x1

    .line 98
    iput v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->port:I

    .line 104
    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsProxy:Ljava/lang/String;

    .line 110
    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsPort:Ljava/lang/String;

    .line 116
    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsc:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->type:Ljava/lang/String;

    .line 128
    iput v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->authType:I

    const-string v1, "IP"

    .line 134
    iput-object v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    .line 135
    iput-object v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    .line 144
    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;

    .line 145
    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;

    .line 164
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/net/apn/ApnSettings;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/net/apn/ApnSettings-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/net/apn/ApnSettings;-><init>(Landroid/os/Parcel;)V

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

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->id:J

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->name:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->apn:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mcc:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mnc:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->user:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->server:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->password:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->proxy:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->port:I

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsProxy:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsPort:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsc:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->type:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->authType:I

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 169
    iget-wide v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 170
    iget-object p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->apn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mcc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mnc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-object p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->user:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->server:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->password:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->proxy:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->port:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget-object p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsProxy:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsPort:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->authType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget-object p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-object p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-object p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object p0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
