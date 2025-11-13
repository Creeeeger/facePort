.class public final Landroid/telephony/SecurityAlgorithmUpdate;
.super Ljava/lang/Object;
.source "SecurityAlgorithmUpdate.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SecurityAlgorithmUpdate$SecurityAlgorithm;,
        Landroid/telephony/SecurityAlgorithmUpdate$ConnectionEvent;
    }
.end annotation


# static fields
.field public static final blacklist CONNECTION_EVENT_AS_SIGNALLING_5G:I = 0xb

.field public static final blacklist CONNECTION_EVENT_AS_SIGNALLING_LTE:I = 0x5

.field public static final blacklist CONNECTION_EVENT_CS_SIGNALLING_3G:I = 0x2

.field public static final blacklist CONNECTION_EVENT_CS_SIGNALLING_GSM:I = 0x0

.field public static final blacklist CONNECTION_EVENT_NAS_SIGNALLING_5G:I = 0xa

.field public static final blacklist CONNECTION_EVENT_NAS_SIGNALLING_LTE:I = 0x4

.field public static final blacklist CONNECTION_EVENT_PS_SIGNALLING_3G:I = 0x3

.field public static final blacklist CONNECTION_EVENT_PS_SIGNALLING_GPRS:I = 0x1

.field public static final blacklist CONNECTION_EVENT_VOLTE_RTP:I = 0x8

.field public static final blacklist CONNECTION_EVENT_VOLTE_RTP_SOS:I = 0x9

.field public static final blacklist CONNECTION_EVENT_VOLTE_SIP:I = 0x6

.field public static final blacklist CONNECTION_EVENT_VOLTE_SIP_SOS:I = 0x7

.field public static final blacklist CONNECTION_EVENT_VONR_RTP:I = 0xe

.field public static final blacklist CONNECTION_EVENT_VONR_RTP_SOS:I = 0xf

.field public static final blacklist CONNECTION_EVENT_VONR_SIP:I = 0xc

.field public static final blacklist CONNECTION_EVENT_VONR_SIP_SOS:I = 0xd

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SecurityAlgorithmUpdate;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SECURITY_ALGORITHM_A50:I = 0x0

.field public static final blacklist SECURITY_ALGORITHM_A51:I = 0x1

.field public static final blacklist SECURITY_ALGORITHM_A52:I = 0x2

.field public static final blacklist SECURITY_ALGORITHM_A53:I = 0x3

.field public static final blacklist SECURITY_ALGORITHM_A54:I = 0x4

.field public static final blacklist SECURITY_ALGORITHM_AES_CBC:I = 0x47

.field public static final blacklist SECURITY_ALGORITHM_AES_EDE3_CBC:I = 0x49

.field public static final blacklist SECURITY_ALGORITHM_AES_GCM:I = 0x45

.field public static final blacklist SECURITY_ALGORITHM_AES_GMAC:I = 0x46

.field public static final blacklist SECURITY_ALGORITHM_AUTH_HMAC_SHA2_256_128:I = 0x65

.field public static final blacklist SECURITY_ALGORITHM_DES_EDE3_CBC:I = 0x48

.field public static final blacklist SECURITY_ALGORITHM_EEA0:I = 0x29

.field public static final blacklist SECURITY_ALGORITHM_EEA1:I = 0x2a

.field public static final blacklist SECURITY_ALGORITHM_EEA2:I = 0x2b

.field public static final blacklist SECURITY_ALGORITHM_EEA3:I = 0x2c

.field public static final blacklist SECURITY_ALGORITHM_ENCR_AES_CBC:I = 0x64

.field public static final blacklist SECURITY_ALGORITHM_ENCR_AES_GCM_16:I = 0x63

.field public static final blacklist SECURITY_ALGORITHM_GEA0:I = 0xe

.field public static final blacklist SECURITY_ALGORITHM_GEA1:I = 0xf

.field public static final blacklist SECURITY_ALGORITHM_GEA2:I = 0x10

.field public static final blacklist SECURITY_ALGORITHM_GEA3:I = 0x11

.field public static final blacklist SECURITY_ALGORITHM_GEA4:I = 0x12

.field public static final blacklist SECURITY_ALGORITHM_GEA5:I = 0x13

.field public static final blacklist SECURITY_ALGORITHM_HMAC_MD5_96:I = 0x4b

.field public static final blacklist SECURITY_ALGORITHM_HMAC_SHA1_96:I = 0x4a

.field public static final blacklist SECURITY_ALGORITHM_IMS_NULL:I = 0x43

.field public static final blacklist SECURITY_ALGORITHM_NEA0:I = 0x37

.field public static final blacklist SECURITY_ALGORITHM_NEA1:I = 0x38

.field public static final blacklist SECURITY_ALGORITHM_NEA2:I = 0x39

.field public static final blacklist SECURITY_ALGORITHM_NEA3:I = 0x3a

.field public static final blacklist SECURITY_ALGORITHM_ORYX:I = 0x7c

.field public static final blacklist SECURITY_ALGORITHM_OTHER:I = 0x72

.field public static final blacklist SECURITY_ALGORITHM_RTP:I = 0x55

.field public static final blacklist SECURITY_ALGORITHM_SIP_NO_IPSEC_CONFIG:I = 0x42

.field public static final blacklist SECURITY_ALGORITHM_SIP_NULL:I = 0x44

.field public static final blacklist SECURITY_ALGORITHM_SRTP_AES_COUNTER:I = 0x57

.field public static final blacklist SECURITY_ALGORITHM_SRTP_AES_F8:I = 0x58

.field public static final blacklist SECURITY_ALGORITHM_SRTP_HMAC_SHA1:I = 0x59

.field public static final blacklist SECURITY_ALGORITHM_SRTP_NULL:I = 0x56

.field public static final blacklist SECURITY_ALGORITHM_UEA0:I = 0x1d

.field public static final blacklist SECURITY_ALGORITHM_UEA1:I = 0x1e

.field public static final blacklist SECURITY_ALGORITHM_UEA2:I = 0x1f

.field public static final blacklist SECURITY_ALGORITHM_UNKNOWN:I = 0x71

.field private static final blacklist TAG:Ljava/lang/String; = "SecurityAlgorithmUpdate"


# instance fields
.field private blacklist mConnectionEvent:I

.field private blacklist mEncryption:I

.field private blacklist mIntegrity:I

.field private blacklist mIsUnprotectedEmergency:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/SecurityAlgorithmUpdate$1;

    invoke-direct {v0}, Landroid/telephony/SecurityAlgorithmUpdate$1;-><init>()V

    sput-object v0, Landroid/telephony/SecurityAlgorithmUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/SecurityAlgorithmUpdate;->mConnectionEvent:I

    iput p2, p0, Landroid/telephony/SecurityAlgorithmUpdate;->mEncryption:I

    iput p3, p0, Landroid/telephony/SecurityAlgorithmUpdate;->mIntegrity:I

    iput-boolean p4, p0, Landroid/telephony/SecurityAlgorithmUpdate;->mIsUnprotectedEmergency:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/telephony/SecurityAlgorithmUpdate;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/SecurityAlgorithmUpdate-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/SecurityAlgorithmUpdate;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SecurityAlgorithmUpdate;->mConnectionEvent:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SecurityAlgorithmUpdate;->mEncryption:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SecurityAlgorithmUpdate;->mIntegrity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SecurityAlgorithmUpdate;->mIsUnprotectedEmergency:Z

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
    instance-of v1, p1, Landroid/telephony/SecurityAlgorithmUpdate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/telephony/SecurityAlgorithmUpdate;

    iget v3, p0, Landroid/telephony/SecurityAlgorithmUpdate;->mConnectionEvent:I

    iget v4, v1, Landroid/telephony/SecurityAlgorithmUpdate;->mConnectionEvent:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/SecurityAlgorithmUpdate;->mEncryption:I

    iget v4, v1, Landroid/telephony/SecurityAlgorithmUpdate;->mEncryption:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/SecurityAlgorithmUpdate;->mIntegrity:I

    iget v4, v1, Landroid/telephony/SecurityAlgorithmUpdate;->mIntegrity:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/telephony/SecurityAlgorithmUpdate;->mIsUnprotectedEmergency:Z

    iget-boolean v4, v1, Landroid/telephony/SecurityAlgorithmUpdate;->mIsUnprotectedEmergency:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public blacklist getConnectionEvent()I
    .locals 1

    iget v0, p0, Landroid/telephony/SecurityAlgorithmUpdate;->mConnectionEvent:I

    return v0
.end method

.method public blacklist getEncryption()I
    .locals 1

    iget v0, p0, Landroid/telephony/SecurityAlgorithmUpdate;->mEncryption:I

    return v0
.end method

.method public blacklist getIntegrity()I
    .locals 1

    iget v0, p0, Landroid/telephony/SecurityAlgorithmUpdate;->mIntegrity:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget v0, p0, Landroid/telephony/SecurityAlgorithmUpdate;->mConnectionEvent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SecurityAlgorithmUpdate;->mEncryption:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/SecurityAlgorithmUpdate;->mIntegrity:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/telephony/SecurityAlgorithmUpdate;->mIsUnprotectedEmergency:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isUnprotectedEmergency()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/SecurityAlgorithmUpdate;->mIsUnprotectedEmergency:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecurityAlgorithmUpdate:{ mConnectionEvent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SecurityAlgorithmUpdate;->mConnectionEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEncryption = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SecurityAlgorithmUpdate;->mEncryption:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIntegrity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SecurityAlgorithmUpdate;->mIntegrity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsUnprotectedEmergency = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/SecurityAlgorithmUpdate;->mIsUnprotectedEmergency:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/SecurityAlgorithmUpdate;->mConnectionEvent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SecurityAlgorithmUpdate;->mEncryption:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SecurityAlgorithmUpdate;->mIntegrity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/SecurityAlgorithmUpdate;->mIsUnprotectedEmergency:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
