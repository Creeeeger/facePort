.class public Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
.super Ljava/lang/Object;
.source "SdpEngineInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist PERSONA_PWD_RESET_TOKEN:Ljava/lang/String;

.field private static greylist PWD_RESET_TOKEN:Ljava/lang/String;


# instance fields
.field private greylist mAlias:Ljava/lang/String;

.field private greylist mFlags:I

.field private greylist mId:I

.field private greylist mIsMigrating:Z

.field private greylist mPackageName:Ljava/lang/String;

.field private greylist mState:I

.field private greylist mType:I

.field private greylist mUserId:I

.field private greylist mVersion:I


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    .line 81
    const-string v0, "PersonaPwdResetToken"

    sput-object v0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->PERSONA_PWD_RESET_TOKEN:Ljava/lang/String;

    .line 82
    const-string v0, "PwdResetToken"

    sput-object v0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->PWD_RESET_TOKEN:Ljava/lang/String;

    .line 330
    new-instance v0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mIsMigrating:Z

    .line 24
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    .line 70
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mAlias:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    .line 72
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mId:I

    .line 73
    iput v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mUserId:I

    .line 74
    iput v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mState:I

    .line 75
    iput v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mFlags:I

    .line 76
    iput v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mVersion:I

    .line 77
    iput v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mType:I

    .line 78
    iput-boolean v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mIsMigrating:Z

    .line 79
    return-void
.end method

.method private constructor greylist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mIsMigrating:Z

    .line 24
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mAlias:Ljava/lang/String;

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mId:I

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mUserId:I

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mState:I

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mFlags:I

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mVersion:I

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mType:I

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mIsMigrating:Z

    .line 355
    return-void
.end method

.method synthetic constructor greylist <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;IIIIIZ)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "userId"    # I
    .param p4, "state"    # I
    .param p5, "flags"    # I
    .param p6, "version"    # I
    .param p7, "isMigrating"    # Z

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mIsMigrating:Z

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    .line 44
    const-string v1, "android_"

    if-nez p1, :cond_1

    .line 45
    if-ltz p2, :cond_0

    const/16 v2, 0x3e7

    if-gt p2, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    iput-object v2, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mAlias:Ljava/lang/String;

    goto :goto_1

    .line 47
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mAlias:Ljava/lang/String;

    .line 49
    :goto_1
    iput p2, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mId:I

    .line 50
    iput p3, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mUserId:I

    .line 51
    iput p4, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mState:I

    .line 52
    iput p5, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mFlags:I

    .line 53
    iput p6, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mVersion:I

    .line 54
    iput-object v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mAlias:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 57
    iget-object v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mAlias:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    const/4 v0, 0x1

    goto :goto_2

    .line 59
    :cond_2
    const/4 v0, 0x2

    :goto_2
    iput v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mType:I

    goto :goto_3

    .line 61
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mType:I

    .line 63
    :goto_3
    iput-boolean p7, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mIsMigrating:Z

    .line 64
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getAlias()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getFlag()I
    .locals 1

    .line 187
    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mFlags:I

    return v0
.end method

.method public greylist getId()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mId:I

    return v0
.end method

.method public greylist getPackageName()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getResetTokenTimaAlias()Ljava/lang/String;
    .locals 2

    .line 92
    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->PERSONA_PWD_RESET_TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->PWD_RESET_TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 97
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getState()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mState:I

    return v0
.end method

.method public greylist getUserId()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mUserId:I

    return v0
.end method

.method public greylist getVersion()I
    .locals 1

    .line 205
    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mVersion:I

    return v0
.end method

.method public greylist isAndroidDefaultEngine()Z
    .locals 2

    .line 282
    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public greylist isCustomEngine()Z
    .locals 2

    .line 240
    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist isMdfpp()Z
    .locals 1

    .line 268
    invoke-virtual {p0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMinor()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public greylist isMigrating()Z
    .locals 1

    .line 226
    iget-boolean v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mIsMigrating:Z

    return v0
.end method

.method public greylist isMinor()Z
    .locals 2

    .line 252
    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public greylist setFlag(I)V
    .locals 0
    .param p1, "flag"    # I

    .line 176
    iput p1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mFlags:I

    .line 177
    return-void
.end method

.method public greylist setIsMigrating(Z)V
    .locals 0
    .param p1, "isMigrating"    # Z

    .line 214
    iput-boolean p1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mIsMigrating:Z

    .line 215
    return-void
.end method

.method public greylist setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 127
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    .line 128
    :cond_0
    return-void
.end method

.method public greylist setState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 154
    iput p1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mState:I

    .line 155
    return-void
.end method

.method public greylist setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .line 196
    iput p1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mVersion:I

    .line 197
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SdpEngineInfo { alias:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flags:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 315
    iget-object v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget-boolean v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mIsMigrating:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    return-void
.end method
