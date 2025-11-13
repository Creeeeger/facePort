.class public Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;
.super Ljava/lang/Object;
.source "WifiAdminProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public allowDynamicTrust:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

.field public anonymousIdentity:Ljava/lang/String;

.field public caCertificate:Ljava/lang/String;

.field public clientCertification:Ljava/lang/String;

.field public cnMatchList:Ljava/lang/String;

.field public fingerprintMatchList:Ljava/lang/String;

.field private mEngineId:I

.field private mStorageName:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public phase1:Ljava/lang/String;

.field public phase2:Ljava/lang/String;

.field public privateKey:Ljava/lang/String;

.field public proxyAuthConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/AuthConfig;",
            ">;"
        }
    .end annotation
.end field

.field public proxyBypassList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public proxyHostname:Ljava/lang/String;

.field public proxyPacUrl:Ljava/lang/String;

.field public proxyPassword:Ljava/lang/String;

.field public proxyPort:I

.field public proxyState:I

.field public proxyUsername:Ljava/lang/String;

.field public psk:Ljava/lang/String;

.field public security:Ljava/lang/String;

.field public ssid:Ljava/lang/String;

.field public staticGateway:Ljava/lang/String;

.field public staticIp:Ljava/lang/String;

.field public staticIpEnabled:Z

.field public staticPrimaryDns:Ljava/lang/String;

.field public staticSecondaryDns:Ljava/lang/String;

.field public staticSubnetMask:Ljava/lang/String;

.field public userIdentity:Ljava/lang/String;

.field public wepKey1:Ljava/lang/String;

.field public wepKey2:Ljava/lang/String;

.field public wepKey3:Ljava/lang/String;

.field public wepKey4:Ljava/lang/String;

.field public wepKeyId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 373
    new-instance v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->ssid:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->psk:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->password:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->security:Ljava/lang/String;

    const/4 v1, -0x1

    .line 71
    iput v1, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    .line 76
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->phase2:Ljava/lang/String;

    .line 111
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    .line 116
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    .line 131
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->cnMatchList:Ljava/lang/String;

    .line 141
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticIp:Ljava/lang/String;

    .line 146
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticGateway:Ljava/lang/String;

    .line 151
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticPrimaryDns:Ljava/lang/String;

    .line 156
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticSecondaryDns:Ljava/lang/String;

    .line 161
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticSubnetMask:Ljava/lang/String;

    .line 166
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyHostname:Ljava/lang/String;

    .line 176
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyBypassList:Ljava/util/List;

    .line 182
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyUsername:Ljava/lang/String;

    .line 188
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPassword:Ljava/lang/String;

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    .line 198
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->phase1:Ljava/lang/String;

    const/4 v1, 0x0

    .line 218
    iput v1, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyState:I

    .line 223
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPacUrl:Ljava/lang/String;

    .line 240
    iput v1, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->mEngineId:I

    .line 269
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->mStorageName:Ljava/lang/String;

    .line 392
    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->DEFAULT:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    iput-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->allowDynamicTrust:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    .line 398
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->fingerprintMatchList:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->ssid:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->psk:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->password:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->security:Ljava/lang/String;

    const/4 v1, -0x1

    .line 71
    iput v1, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    .line 76
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->phase2:Ljava/lang/String;

    .line 111
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    .line 116
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    .line 131
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->cnMatchList:Ljava/lang/String;

    .line 141
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticIp:Ljava/lang/String;

    .line 146
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticGateway:Ljava/lang/String;

    .line 151
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticPrimaryDns:Ljava/lang/String;

    .line 156
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticSecondaryDns:Ljava/lang/String;

    .line 161
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticSubnetMask:Ljava/lang/String;

    .line 166
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyHostname:Ljava/lang/String;

    .line 176
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyBypassList:Ljava/util/List;

    .line 182
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyUsername:Ljava/lang/String;

    .line 188
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPassword:Ljava/lang/String;

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    .line 198
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->phase1:Ljava/lang/String;

    const/4 v1, 0x0

    .line 218
    iput v1, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyState:I

    .line 223
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPacUrl:Ljava/lang/String;

    .line 240
    iput v1, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->mEngineId:I

    .line 269
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->mStorageName:Ljava/lang/String;

    .line 392
    sget-object v2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->DEFAULT:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    iput-object v2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->allowDynamicTrust:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    .line 398
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->fingerprintMatchList:Ljava/lang/String;

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->ssid:Ljava/lang/String;

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->psk:Ljava/lang/String;

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->password:Ljava/lang/String;

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->security:Ljava/lang/String;

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->phase2:Ljava/lang/String;

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->cnMatchList:Ljava/lang/String;

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticIpEnabled:Z

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticIp:Ljava/lang/String;

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticGateway:Ljava/lang/String;

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticPrimaryDns:Ljava/lang/String;

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticSecondaryDns:Ljava/lang/String;

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticSubnetMask:Ljava/lang/String;

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->mEngineId:I

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyHostname:Ljava/lang/String;

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPort:I

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyBypassList:Ljava/util/List;

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyUsername:Ljava/lang/String;

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPassword:Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    const-class v1, Lcom/samsung/android/knox/net/AuthConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->phase1:Ljava/lang/String;

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyState:I

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPacUrl:Ljava/lang/String;

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->mStorageName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/net/wifi/WifiAdminProfile-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 296
    iget-object p2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->ssid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-object p2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->psk:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget-object p2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->password:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    iget-object p2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->security:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    iget p2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget-object p2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget-object p2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    iget-object p2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    iget-object p2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    iget-object p2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    iget-object p2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    iget-object p2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->phase2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    iget-object p2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    iget-object p2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    iget-object p2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 311
    iget-object p2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->cnMatchList:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    iget-boolean p2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticIpEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    iget-object p2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticIp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    iget-object p2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticGateway:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    iget-object p2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticPrimaryDns:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    iget-object p2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticSecondaryDns:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    iget-object p2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticSubnetMask:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    iget p2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->mEngineId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget-object p2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyHostname:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    iget p2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPort:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget-object p2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyBypassList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 322
    iget-object p2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyUsername:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 323
    iget-object p2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPassword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    iget-object p2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 325
    iget-object p2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->phase1:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 326
    iget p2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    iget-object p2, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPacUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 328
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->mStorageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
