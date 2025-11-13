.class public final Landroid/telephony/CellularIdentifierDisclosure;
.super Ljava/lang/Object;
.source "CellularIdentifierDisclosure.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellularIdentifierDisclosure$CellularIdentifier;,
        Landroid/telephony/CellularIdentifierDisclosure$NasProtocolMessage;
    }
.end annotation


# static fields
.field public static final blacklist CELLULAR_IDENTIFIER_IMEI:I = 0x2

.field public static final blacklist CELLULAR_IDENTIFIER_IMSI:I = 0x1

.field public static final blacklist CELLULAR_IDENTIFIER_SUCI:I = 0x3

.field public static final blacklist CELLULAR_IDENTIFIER_UNKNOWN:I = 0x0

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellularIdentifierDisclosure;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist NAS_PROTOCOL_MESSAGE_ATTACH_REQUEST:I = 0x1

.field public static final blacklist NAS_PROTOCOL_MESSAGE_AUTHENTICATION_AND_CIPHERING_RESPONSE:I = 0x6

.field public static final blacklist NAS_PROTOCOL_MESSAGE_CM_REESTABLISHMENT_REQUEST:I = 0x9

.field public static final blacklist NAS_PROTOCOL_MESSAGE_CM_SERVICE_REQUEST:I = 0xa

.field public static final blacklist NAS_PROTOCOL_MESSAGE_DEREGISTRATION_REQUEST:I = 0x8

.field public static final blacklist NAS_PROTOCOL_MESSAGE_DETACH_REQUEST:I = 0x3

.field public static final blacklist NAS_PROTOCOL_MESSAGE_IDENTITY_RESPONSE:I = 0x2

.field public static final blacklist NAS_PROTOCOL_MESSAGE_IMSI_DETACH_INDICATION:I = 0xb

.field public static final blacklist NAS_PROTOCOL_MESSAGE_LOCATION_UPDATE_REQUEST:I = 0x5

.field public static final blacklist NAS_PROTOCOL_MESSAGE_REGISTRATION_REQUEST:I = 0x7

.field public static final blacklist NAS_PROTOCOL_MESSAGE_TRACKING_AREA_UPDATE_REQUEST:I = 0x4

.field public static final blacklist NAS_PROTOCOL_MESSAGE_UNKNOWN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "CellularIdentifierDisclosure"


# instance fields
.field private blacklist mCellularIdentifier:I

.field private blacklist mIsEmergency:Z

.field private blacklist mNasProtocolMessage:I

.field private blacklist mPlmn:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/CellularIdentifierDisclosure$1;

    invoke-direct {v0}, Landroid/telephony/CellularIdentifierDisclosure$1;-><init>()V

    sput-object v0, Landroid/telephony/CellularIdentifierDisclosure;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/CellularIdentifierDisclosure;->mNasProtocolMessage:I

    iput p2, p0, Landroid/telephony/CellularIdentifierDisclosure;->mCellularIdentifier:I

    iput-object p3, p0, Landroid/telephony/CellularIdentifierDisclosure;->mPlmn:Ljava/lang/String;

    iput-boolean p4, p0, Landroid/telephony/CellularIdentifierDisclosure;->mIsEmergency:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/telephony/CellularIdentifierDisclosure;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/CellularIdentifierDisclosure-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/CellularIdentifierDisclosure;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mNasProtocolMessage:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mCellularIdentifier:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mIsEmergency:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mPlmn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/telephony/CellularIdentifierDisclosure;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellularIdentifierDisclosure;

    iget v3, p0, Landroid/telephony/CellularIdentifierDisclosure;->mNasProtocolMessage:I

    iget v4, v1, Landroid/telephony/CellularIdentifierDisclosure;->mNasProtocolMessage:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CellularIdentifierDisclosure;->mCellularIdentifier:I

    iget v4, v1, Landroid/telephony/CellularIdentifierDisclosure;->mCellularIdentifier:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/telephony/CellularIdentifierDisclosure;->mIsEmergency:Z

    iget-boolean v4, v1, Landroid/telephony/CellularIdentifierDisclosure;->mIsEmergency:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/CellularIdentifierDisclosure;->mPlmn:Ljava/lang/String;

    iget-object v4, v1, Landroid/telephony/CellularIdentifierDisclosure;->mPlmn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public blacklist getCellularIdentifier()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mCellularIdentifier:I

    return v0
.end method

.method public blacklist getNasProtocolMessage()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mNasProtocolMessage:I

    return v0
.end method

.method public blacklist getPlmn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mPlmn:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget v0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mNasProtocolMessage:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellularIdentifierDisclosure;->mCellularIdentifier:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/CellularIdentifierDisclosure;->mIsEmergency:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/CellularIdentifierDisclosure;->mPlmn:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isEmergency()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mIsEmergency:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellularIdentifierDisclosure:{ mNasProtocolMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellularIdentifierDisclosure;->mNasProtocolMessage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCellularIdentifier = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellularIdentifierDisclosure;->mCellularIdentifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsEmergency = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/CellularIdentifierDisclosure;->mIsEmergency:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPlmn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellularIdentifierDisclosure;->mPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mNasProtocolMessage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mCellularIdentifier:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mIsEmergency:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mPlmn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    return-void
.end method
