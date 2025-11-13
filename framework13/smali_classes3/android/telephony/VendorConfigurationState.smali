.class public Landroid/telephony/VendorConfigurationState;
.super Ljava/lang/Object;
.source "VendorConfigurationState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist CONFIGURATION_CA_ENABLED:Ljava/lang/String; = "CA_ENABLED"

.field public static final greylist CONFIGURATION_EGPRS_SUPPORT:Ljava/lang/String; = "EGPRS_SUPPORT"

.field public static final greylist CONFIGURATION_FRAMEWORK_READY:Ljava/lang/String; = "FW_READY"

.field public static final greylist CONFIGURATION_ISCTC:Ljava/lang/String; = "IS_CTC"

.field public static final greylist CONFIGURATION_LTE_CS_CAPA:Ljava/lang/String; = "LTE_CS_CAPA"

.field public static final greylist CONFIGURATION_MSIM_SUBMODE:Ljava/lang/String; = "MSIM_SUBMODE"

.field public static final greylist CONFIGURATION_SUPPORTED_NRCA:Ljava/lang/String; = "SUPPORTED_NRCA"

.field public static final greylist CONFIGURATION_SUPPORTED_RAT:Ljava/lang/String; = "SUPPORTED_RAT"

.field public static final greylist CONFIGURATION_SUPPORT_LTE_CAPA_OPTION_C:Ljava/lang/String; = "SUPPORT_LTE_CAPA_OPTION_C"

.field public static final greylist CONFIGURATION_VOLTE_E911CALL:Ljava/lang/String; = "VOLTE_911_CALL"

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/VendorConfigurationState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mFrameWorkReady:Ljava/lang/String;

.field private blacklist mIsCaEnabled:Ljava/lang/String;

.field private blacklist mIsCtc:Ljava/lang/String;

.field private blacklist mLteCsCapa:Ljava/lang/String;

.field private blacklist mMsimSubmode:Ljava/lang/String;

.field private blacklist mPhoneId:I

.field private blacklist mSupportEgprs:Ljava/lang/String;

.field private blacklist mSupportLteCapaOptionC:Ljava/lang/String;

.field private blacklist mSupportedNrca:Ljava/lang/String;

.field private blacklist mSupportedRat:Ljava/lang/String;

.field private blacklist mVolte911Call:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 154
    new-instance v0, Landroid/telephony/VendorConfigurationState$1;

    invoke-direct {v0}, Landroid/telephony/VendorConfigurationState$1;-><init>()V

    sput-object v0, Landroid/telephony/VendorConfigurationState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Landroid/telephony/VendorConfigurationState;->mPhoneId:I

    .line 83
    const-string v0, "0"

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mFrameWorkReady:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportEgprs:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportedRat:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mIsCtc:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mVolte911Call:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mIsCaEnabled:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mLteCsCapa:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mMsimSubmode:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportedNrca:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportLteCapaOptionC:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mFrameWorkReady:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportEgprs:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportedRat:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mIsCtc:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mVolte911Call:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mIsCaEnabled:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mLteCsCapa:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mMsimSubmode:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportedNrca:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportLteCapaOptionC:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/VendorConfigurationState;)V
    .locals 0
    .param p1, "s"    # Landroid/telephony/VendorConfigurationState;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p0, p1}, Landroid/telephony/VendorConfigurationState;->copyFrom(Landroid/telephony/VendorConfigurationState;)V

    .line 102
    return-void
.end method


# virtual methods
.method protected blacklist copyFrom(Landroid/telephony/VendorConfigurationState;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/VendorConfigurationState;

    .line 105
    iget-object v0, p1, Landroid/telephony/VendorConfigurationState;->mFrameWorkReady:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mFrameWorkReady:Ljava/lang/String;

    .line 106
    iget-object v0, p1, Landroid/telephony/VendorConfigurationState;->mSupportEgprs:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportEgprs:Ljava/lang/String;

    .line 107
    iget-object v0, p1, Landroid/telephony/VendorConfigurationState;->mSupportedRat:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportedRat:Ljava/lang/String;

    .line 108
    iget-object v0, p1, Landroid/telephony/VendorConfigurationState;->mIsCtc:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mIsCtc:Ljava/lang/String;

    .line 109
    iget-object v0, p1, Landroid/telephony/VendorConfigurationState;->mVolte911Call:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mVolte911Call:Ljava/lang/String;

    .line 110
    iget-object v0, p1, Landroid/telephony/VendorConfigurationState;->mIsCaEnabled:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mIsCaEnabled:Ljava/lang/String;

    .line 111
    iget-object v0, p1, Landroid/telephony/VendorConfigurationState;->mLteCsCapa:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mLteCsCapa:Ljava/lang/String;

    .line 112
    iget-object v0, p1, Landroid/telephony/VendorConfigurationState;->mMsimSubmode:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mMsimSubmode:Ljava/lang/String;

    .line 113
    iget-object v0, p1, Landroid/telephony/VendorConfigurationState;->mSupportedNrca:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportedNrca:Ljava/lang/String;

    .line 114
    iget-object v0, p1, Landroid/telephony/VendorConfigurationState;->mSupportLteCapaOptionC:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportLteCapaOptionC:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLteCsCapa()I
    .locals 1

    .line 260
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mLteCsCapa:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getMsimSubmode()I
    .locals 1

    .line 272
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mMsimSubmode:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getSupportEgprs()Z
    .locals 2

    .line 220
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportEgprs:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist getSupportedNrca()Z
    .locals 2

    .line 280
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportedNrca:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist getSupportedRat()I
    .locals 1

    .line 228
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportedRat:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getVolte911Call()Z
    .locals 2

    .line 244
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mVolte911Call:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isCaEnabled()Z
    .locals 2

    .line 252
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mIsCaEnabled:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isCtc()Z
    .locals 2

    .line 236
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mIsCtc:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFrameWorkReady()Z
    .locals 2

    .line 212
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mFrameWorkReady:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isSupportLteCapaOptionC()Z
    .locals 2

    .line 288
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportLteCapaOptionC:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist setCaEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "enabled"    # Ljava/lang/String;

    .line 256
    iput-object p1, p0, Landroid/telephony/VendorConfigurationState;->mIsCaEnabled:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public blacklist setData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 186
    const-string v0, "FW_READY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mFrameWorkReady:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, p2}, Landroid/telephony/VendorConfigurationState;->setFrameWorkReady(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    :cond_0
    const-string v0, "EGPRS_SUPPORT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportEgprs:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, p2}, Landroid/telephony/VendorConfigurationState;->setSupportEgprs(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 190
    :cond_1
    const-string v0, "SUPPORTED_RAT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportedRat:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, p2}, Landroid/telephony/VendorConfigurationState;->setSupportedRat(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 192
    :cond_2
    const-string v0, "IS_CTC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 193
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mIsCtc:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, p2}, Landroid/telephony/VendorConfigurationState;->setIsCtc(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 194
    :cond_3
    const-string v0, "VOLTE_911_CALL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 195
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mVolte911Call:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, p2}, Landroid/telephony/VendorConfigurationState;->setVolte911Call(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_4
    const-string v0, "CA_ENABLED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 197
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mIsCaEnabled:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, p2}, Landroid/telephony/VendorConfigurationState;->setCaEnabled(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_5
    const-string v0, "LTE_CS_CAPA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 199
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mLteCsCapa:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, p2}, Landroid/telephony/VendorConfigurationState;->setLteCsCapa(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_6
    const-string v0, "MSIM_SUBMODE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 201
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mMsimSubmode:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, p2}, Landroid/telephony/VendorConfigurationState;->setMsimSubmode(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_7
    const-string v0, "SUPPORTED_NRCA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 203
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportedNrca:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, p2}, Landroid/telephony/VendorConfigurationState;->setSupportedNrca(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_8
    const-string v0, "SUPPORT_LTE_CAPA_OPTION_C"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 205
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportLteCapaOptionC:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, p2}, Landroid/telephony/VendorConfigurationState;->setSupportLteCapaOptionC(Ljava/lang/String;)V

    .line 209
    :cond_9
    :goto_0
    return-void
.end method

.method public blacklist setFrameWorkReady(Ljava/lang/String;)V
    .locals 0
    .param p1, "ready"    # Ljava/lang/String;

    .line 216
    iput-object p1, p0, Landroid/telephony/VendorConfigurationState;->mFrameWorkReady:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public blacklist setIsCtc(Ljava/lang/String;)V
    .locals 0
    .param p1, "isctc"    # Ljava/lang/String;

    .line 240
    iput-object p1, p0, Landroid/telephony/VendorConfigurationState;->mIsCtc:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public blacklist setLteCsCapa(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .line 264
    iput-object p1, p0, Landroid/telephony/VendorConfigurationState;->mLteCsCapa:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public blacklist setMsimSubmode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;

    .line 268
    iput-object p1, p0, Landroid/telephony/VendorConfigurationState;->mMsimSubmode:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public blacklist setSupportEgprs(Ljava/lang/String;)V
    .locals 0
    .param p1, "support"    # Ljava/lang/String;

    .line 224
    iput-object p1, p0, Landroid/telephony/VendorConfigurationState;->mSupportEgprs:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public blacklist setSupportLteCapaOptionC(Ljava/lang/String;)V
    .locals 0
    .param p1, "lteCapaOptionC"    # Ljava/lang/String;

    .line 284
    iput-object p1, p0, Landroid/telephony/VendorConfigurationState;->mSupportLteCapaOptionC:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public blacklist setSupportedNrca(Ljava/lang/String;)V
    .locals 0
    .param p1, "nrcaStatus"    # Ljava/lang/String;

    .line 276
    iput-object p1, p0, Landroid/telephony/VendorConfigurationState;->mSupportedNrca:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public blacklist setSupportedRat(Ljava/lang/String;)V
    .locals 0
    .param p1, "rat"    # Ljava/lang/String;

    .line 232
    iput-object p1, p0, Landroid/telephony/VendorConfigurationState;->mSupportedRat:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public blacklist setVolte911Call(Ljava/lang/String;)V
    .locals 0
    .param p1, "isvolte911call"    # Ljava/lang/String;

    .line 248
    iput-object p1, p0, Landroid/telephony/VendorConfigurationState;->mVolte911Call:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 168
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 170
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "Vendor Configuration state - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    const-string v1, "FrameWorkReady: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/VendorConfigurationState;->mFrameWorkReady:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    const-string v1, ", SupportEgprs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/VendorConfigurationState;->mSupportEgprs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    const-string v1, ", SupportedRat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/VendorConfigurationState;->mSupportedRat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    const-string v1, ", IsCtc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/VendorConfigurationState;->mIsCtc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    const-string v1, ", IsVolte911Call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/VendorConfigurationState;->mVolte911Call:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    const-string v1, ", IsCaEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/VendorConfigurationState;->mIsCaEnabled:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    const-string v1, ", LteCsCapa: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/VendorConfigurationState;->mLteCsCapa:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    const-string v1, ", MsimSubmode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/VendorConfigurationState;->mMsimSubmode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    const-string v1, ", SupportedNrca: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/VendorConfigurationState;->mSupportedNrca:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    const-string v1, ", SupportLteCapaOptionC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/VendorConfigurationState;->mSupportLteCapaOptionC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 138
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mFrameWorkReady:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportEgprs:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportedRat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mIsCtc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mVolte911Call:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mIsCaEnabled:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mLteCsCapa:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mMsimSubmode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportedNrca:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportLteCapaOptionC:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    return-void
.end method
