.class public final Landroid/telephony/ExtendedRegistrationInfo;
.super Ljava/lang/Object;
.source "ExtendedRegistrationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private final blacklist mIsPsOnlyReg:Z

.field private final blacklist mMobileOptionalRadioTech:I

.field private final blacklist mSnapShotStatus:I

.field private final blacklist mUnprocessedDataRadioTechnology:I

.field private final blacklist mUnprocessedDataRegState:I

.field private final blacklist mUnprocessedVoiceRegState:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mSnapShotStatus:I

    .line 43
    iput v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRegState:I

    .line 44
    iput v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRadioTechnology:I

    .line 45
    iput v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mMobileOptionalRadioTech:I

    .line 46
    iput v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedVoiceRegState:I

    .line 47
    iput-boolean v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mIsPsOnlyReg:Z

    .line 48
    return-void
.end method

.method public constructor blacklist <init>(IIIIIZ)V
    .locals 0
    .param p1, "snapShotStatus"    # I
    .param p2, "unprocessedDataRegState"    # I
    .param p3, "unprocessedDataRadioTechnology"    # I
    .param p4, "mobileOptionalRadioTech"    # I
    .param p5, "unprocessedVoiceRegState"    # I
    .param p6, "isPsOnlyReg"    # Z

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Landroid/telephony/ExtendedRegistrationInfo;->mSnapShotStatus:I

    .line 56
    iput p2, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRegState:I

    .line 57
    iput p3, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRadioTechnology:I

    .line 58
    iput p4, p0, Landroid/telephony/ExtendedRegistrationInfo;->mMobileOptionalRadioTech:I

    .line 59
    iput p5, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedVoiceRegState:I

    .line 60
    iput-boolean p6, p0, Landroid/telephony/ExtendedRegistrationInfo;->mIsPsOnlyReg:Z

    .line 61
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mSnapShotStatus:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRegState:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRadioTechnology:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mMobileOptionalRadioTech:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedVoiceRegState:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mIsPsOnlyReg:Z

    .line 70
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 147
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 149
    :cond_0
    instance-of v1, p1, Landroid/telephony/ExtendedRegistrationInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 150
    return v2

    .line 153
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/telephony/ExtendedRegistrationInfo;

    .line 154
    .local v1, "other":Landroid/telephony/ExtendedRegistrationInfo;
    iget v3, p0, Landroid/telephony/ExtendedRegistrationInfo;->mSnapShotStatus:I

    iget v4, v1, Landroid/telephony/ExtendedRegistrationInfo;->mSnapShotStatus:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRegState:I

    iget v4, v1, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRegState:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRadioTechnology:I

    iget v4, v1, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRadioTechnology:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/ExtendedRegistrationInfo;->mMobileOptionalRadioTech:I

    iget v4, v1, Landroid/telephony/ExtendedRegistrationInfo;->mMobileOptionalRadioTech:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedVoiceRegState:I

    iget v4, v1, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedVoiceRegState:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/telephony/ExtendedRegistrationInfo;->mIsPsOnlyReg:Z

    iget-boolean v4, v1, Landroid/telephony/ExtendedRegistrationInfo;->mIsPsOnlyReg:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public blacklist getDataMobileRadioTechnology()I
    .locals 1

    .line 93
    iget v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRadioTechnology:I

    return v0
.end method

.method public blacklist getDataMobileRegState()I
    .locals 1

    .line 85
    iget v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRegState:I

    return v0
.end method

.method public blacklist getMobileOptionalRadioTechnology()I
    .locals 1

    .line 101
    iget v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mMobileOptionalRadioTech:I

    return v0
.end method

.method public blacklist getSnapShotStatus()I
    .locals 1

    .line 77
    iget v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mSnapShotStatus:I

    return v0
.end method

.method public blacklist getVoiceMobileRegState()I
    .locals 1

    .line 109
    iget v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedVoiceRegState:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 141
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/ExtendedRegistrationInfo;->mSnapShotStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRegState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRadioTechnology:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/ExtendedRegistrationInfo;->mMobileOptionalRadioTech:I

    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedVoiceRegState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/ExtendedRegistrationInfo;->mIsPsOnlyReg:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 141
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isPsOnlyReg()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mIsPsOnlyReg:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExtendedRegistrationInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    const-string v1, " snapshotStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ExtendedRegistrationInfo;->mSnapShotStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 129
    const-string v1, " unprocessedDataRegState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRegState:I

    .line 130
    invoke-static {v1}, Landroid/telephony/NetworkRegistrationInfo;->registrationStateToString(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    const-string v1, " unprocessedDataRat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRadioTechnology:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    const-string v1, " mobileOptionalRat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ExtendedRegistrationInfo;->mMobileOptionalRadioTech:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    const-string v1, " unprocessedVoiceRegState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedVoiceRegState:I

    .line 134
    invoke-static {v1}, Landroid/telephony/NetworkRegistrationInfo;->registrationStateToString(I)Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    const-string v1, " isPsOnlyReg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/ExtendedRegistrationInfo;->mIsPsOnlyReg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 164
    iget v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mSnapShotStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedDataRadioTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mMobileOptionalRadioTech:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mUnprocessedVoiceRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-boolean v0, p0, Landroid/telephony/ExtendedRegistrationInfo;->mIsPsOnlyReg:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 170
    return-void
.end method
