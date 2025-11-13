.class public final Landroid/telephony/ims/ImsSsInfo;
.super Ljava/lang/Object;
.source "ImsSsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsSsInfo$Builder;,
        Landroid/telephony/ims/ImsSsInfo$ClirInterrogationStatus;,
        Landroid/telephony/ims/ImsSsInfo$ClirOutgoingState;,
        Landroid/telephony/ims/ImsSsInfo$ServiceProvisionStatus;,
        Landroid/telephony/ims/ImsSsInfo$ServiceStatus;
    }
.end annotation


# static fields
.field public static final whitelist CLIR_OUTGOING_DEFAULT:I = 0x0

.field public static final whitelist CLIR_OUTGOING_INVOCATION:I = 0x1

.field public static final whitelist CLIR_OUTGOING_SUPPRESSION:I = 0x2

.field public static final whitelist CLIR_STATUS_NOT_PROVISIONED:I = 0x0

.field public static final whitelist CLIR_STATUS_PROVISIONED_PERMANENT:I = 0x1

.field public static final whitelist CLIR_STATUS_TEMPORARILY_ALLOWED:I = 0x4

.field public static final whitelist CLIR_STATUS_TEMPORARILY_RESTRICTED:I = 0x3

.field public static final whitelist CLIR_STATUS_UNKNOWN:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/ImsSsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DISABLED:I = 0x0

.field public static final whitelist ENABLED:I = 0x1

.field public static final whitelist NOT_REGISTERED:I = -0x1

.field public static final whitelist SERVICE_NOT_PROVISIONED:I = 0x0

.field public static final whitelist SERVICE_PROVISIONED:I = 0x1

.field public static final whitelist SERVICE_PROVISIONING_UNKNOWN:I = -0x1


# instance fields
.field private blacklist mClirInterrogationStatus:I

.field private blacklist mClirOutgoingState:I

.field public greylist-max-r mIcbNum:Ljava/lang/String;

.field public blacklist mProvisionStatus:I

.field private blacklist mServiceClass:I

.field public greylist-max-r mStatus:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmClirInterrogationStatus(Landroid/telephony/ims/ImsSsInfo;I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ims/ImsSsInfo;->mClirInterrogationStatus:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmClirOutgoingState(Landroid/telephony/ims/ImsSsInfo;I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ims/ImsSsInfo;->mClirOutgoingState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServiceClass(Landroid/telephony/ims/ImsSsInfo;I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ims/ImsSsInfo;->mServiceClass:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 304
    new-instance v0, Landroid/telephony/ims/ImsSsInfo$1;

    invoke-direct {v0}, Landroid/telephony/ims/ImsSsInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/ImsSsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .locals 1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/ImsSsInfo;->mProvisionStatus:I

    .line 167
    const/4 v0, 0x2

    iput v0, p0, Landroid/telephony/ims/ImsSsInfo;->mClirInterrogationStatus:I

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/ImsSsInfo;->mClirOutgoingState:I

    .line 177
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "icbNum"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/ImsSsInfo;->mProvisionStatus:I

    .line 167
    const/4 v0, 0x2

    iput v0, p0, Landroid/telephony/ims/ImsSsInfo;->mClirInterrogationStatus:I

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/ImsSsInfo;->mClirOutgoingState:I

    .line 250
    iput p1, p0, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 251
    iput-object p2, p0, Landroid/telephony/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    .line 252
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/ImsSsInfo;->mProvisionStatus:I

    .line 167
    const/4 v0, 0x2

    iput v0, p0, Landroid/telephony/ims/ImsSsInfo;->mClirInterrogationStatus:I

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/ImsSsInfo;->mClirOutgoingState:I

    .line 255
    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsSsInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 256
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/ImsSsInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsSsInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist provisionStatusToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "pStatus"    # I

    .line 283
    packed-switch p0, :pswitch_data_0

    .line 289
    const-string v0, "Service provisioning unknown"

    return-object v0

    .line 287
    :pswitch_0
    const-string v0, "Service provisioned"

    return-object v0

    .line 285
    :pswitch_1
    const-string v0, "Service not provisioned"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsSsInfo;->mServiceClass:I

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsSsInfo;->mProvisionStatus:I

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsSsInfo;->mClirInterrogationStatus:I

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsSsInfo;->mClirOutgoingState:I

    .line 302
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getClirInterrogationStatus()I
    .locals 1

    .line 358
    iget v0, p0, Landroid/telephony/ims/ImsSsInfo;->mClirInterrogationStatus:I

    return v0
.end method

.method public whitelist getClirOutgoingState()I
    .locals 1

    .line 349
    iget v0, p0, Landroid/telephony/ims/ImsSsInfo;->mClirOutgoingState:I

    return v0
.end method

.method public blacklist getCompatArray(I)[I
    .locals 4
    .param p1, "type"    # I

    .line 372
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 375
    .local v0, "result":[I
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne p1, v3, :cond_0

    .line 378
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsInfo;->getClirOutgoingState()I

    move-result v3

    aput v3, v0, v2

    .line 379
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsInfo;->getClirInterrogationStatus()I

    move-result v2

    aput v2, v0, v1

    .line 380
    return-object v0

    .line 383
    :cond_0
    const/16 v3, 0xa

    if-ne p1, v3, :cond_1

    .line 384
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsInfo;->getProvisionStatus()I

    move-result v3

    aput v3, v0, v2

    .line 389
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result v3

    aput v3, v0, v2

    .line 390
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsInfo;->getProvisionStatus()I

    move-result v2

    aput v2, v0, v1

    .line 391
    return-object v0
.end method

.method public whitelist getIcbNum()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 327
    iget-object v0, p0, Landroid/telephony/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIncomingCommunicationBarringNumber()Ljava/lang/String;
    .locals 1

    .line 334
    iget-object v0, p0, Landroid/telephony/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProvisionStatus()I
    .locals 1

    .line 341
    iget v0, p0, Landroid/telephony/ims/ImsSsInfo;->mProvisionStatus:I

    return v0
.end method

.method public whitelist getServiceClass()I
    .locals 1

    .line 363
    iget v0, p0, Landroid/telephony/ims/ImsSsInfo;->mServiceClass:I

    return v0
.end method

.method public whitelist getStatus()I
    .locals 1

    .line 321
    iget v0, p0, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    if-nez v1, :cond_0

    const-string v1, "disabled"

    goto :goto_0

    :cond_0
    const-string v1, "enabled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ProvisionStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsSsInfo;->mProvisionStatus:I

    .line 279
    invoke-static {v1}, Landroid/telephony/ims/ImsSsInfo;->provisionStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 265
    iget v0, p0, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget v0, p0, Landroid/telephony/ims/ImsSsInfo;->mServiceClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    iget-object v0, p0, Landroid/telephony/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    iget v0, p0, Landroid/telephony/ims/ImsSsInfo;->mProvisionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget v0, p0, Landroid/telephony/ims/ImsSsInfo;->mClirInterrogationStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    iget v0, p0, Landroid/telephony/ims/ImsSsInfo;->mClirOutgoingState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    return-void
.end method
