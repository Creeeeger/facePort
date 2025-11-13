.class public Landroid/hardware/biometrics/PromptInfo;
.super Ljava/lang/Object;
.source "PromptInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/PromptInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAllowBackgroundAuthentication:Z

.field private blacklist mAllowedSensorIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAuthenticators:I

.field private blacklist mConfirmationRequested:Z

.field private blacklist mDescription:Ljava/lang/CharSequence;

.field private blacklist mDeviceCredentialAllowed:Z

.field private blacklist mDeviceCredentialDescription:Ljava/lang/CharSequence;

.field private blacklist mDeviceCredentialSubtitle:Ljava/lang/CharSequence;

.field private blacklist mDeviceCredentialTitle:Ljava/lang/CharSequence;

.field private blacklist mDisallowBiometricsIfPolicyExists:Z

.field private blacklist mIgnoreEnrollmentState:Z

.field private blacklist mIsForLegacyFingerprintManager:Z

.field private blacklist mNegativeButtonText:Ljava/lang/CharSequence;

.field private blacklist mReceiveSystemEvents:Z

.field private blacklist mSemBiometricType:I

.field private blacklist mSemChallengeData:[B

.field private blacklist mSemDisplayId:I

.field private blacklist mSemPrivilegedFlag:I

.field private blacklist mSemTaskId:I

.field private blacklist mSubtitle:Ljava/lang/CharSequence;

.field private blacklist mTitle:Ljava/lang/CharSequence;

.field private blacklist mUseDefaultTitle:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 98
    new-instance v0, Landroid/hardware/biometrics/PromptInfo$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/PromptInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/PromptInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mConfirmationRequested:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    .line 62
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mConfirmationRequested:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mTitle:Ljava/lang/CharSequence;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultTitle:Z

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSubtitle:Ljava/lang/CharSequence;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDescription:Ljava/lang/CharSequence;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialTitle:Ljava/lang/CharSequence;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialSubtitle:Ljava/lang/CharSequence;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialDescription:Ljava/lang/CharSequence;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mConfirmationRequested:Z

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialAllowed:Z

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAuthenticators:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDisallowBiometricsIfPolicyExists:Z

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mReceiveSystemEvents:Z

    .line 78
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowBackgroundAuthentication:Z

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIgnoreEnrollmentState:Z

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemDisplayId:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemTaskId:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemBiometricType:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemPrivilegedFlag:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .local v0, "challengeDataLength":I
    if-lez v0, :cond_0

    .line 90
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/hardware/biometrics/PromptInfo;->mSemChallengeData:[B

    .line 91
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_0

    .line 93
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/biometrics/PromptInfo;->mSemChallengeData:[B

    .line 96
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist containsPrivateApiConfigurations()Z
    .locals 2

    .line 163
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDisallowBiometricsIfPolicyExists:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 164
    return v1

    .line 165
    :cond_0
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultTitle:Z

    if-eqz v0, :cond_1

    .line 166
    return v1

    .line 167
    :cond_1
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 168
    return v1

    .line 169
    :cond_2
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialSubtitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 170
    return v1

    .line 171
    :cond_3
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 172
    return v1

    .line 173
    :cond_4
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mReceiveSystemEvents:Z

    if-eqz v0, :cond_5

    .line 174
    return v1

    .line 176
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist containsTestConfigurations()Z
    .locals 3

    .line 150
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    .line 151
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowBackgroundAuthentication:Z

    if-nez v0, :cond_0

    .line 153
    return v1

    .line 154
    :cond_0
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    return v2

    .line 156
    :cond_1
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowBackgroundAuthentication:Z

    if-eqz v0, :cond_2

    .line 157
    return v2

    .line 159
    :cond_2
    return v1
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAllowedSensorIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getAuthenticators()I
    .locals 1

    .line 302
    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAuthenticators:I

    return v0
.end method

.method public blacklist getDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 267
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getDeviceCredentialDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 279
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getDeviceCredentialSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 275
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getDeviceCredentialTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 271
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 1

    .line 283
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 263
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 255
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist isAllowBackgroundAuthentication()Z
    .locals 1

    .line 319
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowBackgroundAuthentication:Z

    return v0
.end method

.method public blacklist isConfirmationRequested()Z
    .locals 1

    .line 287
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mConfirmationRequested:Z

    return v0
.end method

.method public blacklist isDeviceCredentialAllowed()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 298
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialAllowed:Z

    return v0
.end method

.method public blacklist isDisallowBiometricsIfPolicyExists()Z
    .locals 1

    .line 306
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDisallowBiometricsIfPolicyExists:Z

    return v0
.end method

.method public blacklist isForLegacyFingerprintManager()Z
    .locals 1

    .line 327
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    return v0
.end method

.method public blacklist isIgnoreEnrollmentState()Z
    .locals 1

    .line 323
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIgnoreEnrollmentState:Z

    return v0
.end method

.method public blacklist isReceiveSystemEvents()Z
    .locals 1

    .line 310
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mReceiveSystemEvents:Z

    return v0
.end method

.method public blacklist isUseDefaultTitle()Z
    .locals 1

    .line 259
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultTitle:Z

    return v0
.end method

.method public blacklist semGetBiometricType()I
    .locals 1

    .line 354
    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemBiometricType:I

    return v0
.end method

.method public blacklist semGetChallengeData()[B
    .locals 1

    .line 370
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemChallengeData:[B

    return-object v0
.end method

.method public blacklist semGetDisplayId()I
    .locals 1

    .line 338
    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemDisplayId:I

    return v0
.end method

.method public blacklist semGetPrivilegedFlag()I
    .locals 1

    .line 362
    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemPrivilegedFlag:I

    return v0
.end method

.method public blacklist semGetTaskId()I
    .locals 1

    .line 346
    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemTaskId:I

    return v0
.end method

.method public blacklist semSetBiometricType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 350
    iput p1, p0, Landroid/hardware/biometrics/PromptInfo;->mSemBiometricType:I

    .line 351
    return-void
.end method

.method public blacklist semSetChallengeData([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 366
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemChallengeData:[B

    .line 367
    return-void
.end method

.method public blacklist semSetDisplayId(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 334
    iput p1, p0, Landroid/hardware/biometrics/PromptInfo;->mSemDisplayId:I

    .line 335
    return-void
.end method

.method public blacklist semSetPrivilegedFlag(I)V
    .locals 0
    .param p1, "flag"    # I

    .line 358
    iput p1, p0, Landroid/hardware/biometrics/PromptInfo;->mSemPrivilegedFlag:I

    .line 359
    return-void
.end method

.method public blacklist semSetTaskId(I)V
    .locals 0
    .param p1, "taskId"    # I

    .line 342
    iput p1, p0, Landroid/hardware/biometrics/PromptInfo;->mSemTaskId:I

    .line 343
    return-void
.end method

.method public blacklist setAllowBackgroundAuthentication(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .line 239
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowBackgroundAuthentication:Z

    .line 240
    return-void
.end method

.method public blacklist setAllowedSensorIds(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 234
    .local p1, "sensorIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 235
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 236
    return-void
.end method

.method public blacklist setAuthenticators(I)V
    .locals 0
    .param p1, "authenticators"    # I

    .line 222
    iput p1, p0, Landroid/hardware/biometrics/PromptInfo;->mAuthenticators:I

    .line 223
    return-void
.end method

.method public blacklist setConfirmationRequested(Z)V
    .locals 0
    .param p1, "confirmationRequested"    # Z

    .line 214
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mConfirmationRequested:Z

    .line 215
    return-void
.end method

.method public blacklist setDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 194
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mDescription:Ljava/lang/CharSequence;

    .line 195
    return-void
.end method

.method public blacklist setDeviceCredentialAllowed(Z)V
    .locals 0
    .param p1, "deviceCredentialAllowed"    # Z

    .line 218
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialAllowed:Z

    .line 219
    return-void
.end method

.method public blacklist setDeviceCredentialDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "deviceCredentialDescription"    # Ljava/lang/CharSequence;

    .line 206
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialDescription:Ljava/lang/CharSequence;

    .line 207
    return-void
.end method

.method public blacklist setDeviceCredentialSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "deviceCredentialSubtitle"    # Ljava/lang/CharSequence;

    .line 202
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialSubtitle:Ljava/lang/CharSequence;

    .line 203
    return-void
.end method

.method public blacklist setDeviceCredentialTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "deviceCredentialTitle"    # Ljava/lang/CharSequence;

    .line 198
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialTitle:Ljava/lang/CharSequence;

    .line 199
    return-void
.end method

.method public blacklist setDisallowBiometricsIfPolicyExists(Z)V
    .locals 0
    .param p1, "disallowBiometricsIfPolicyExists"    # Z

    .line 226
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mDisallowBiometricsIfPolicyExists:Z

    .line 227
    return-void
.end method

.method public blacklist setIgnoreEnrollmentState(Z)V
    .locals 0
    .param p1, "ignoreEnrollmentState"    # Z

    .line 243
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mIgnoreEnrollmentState:Z

    .line 244
    return-void
.end method

.method public blacklist setIsForLegacyFingerprintManager(I)V
    .locals 2
    .param p1, "sensorId"    # I

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    .line 248
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 249
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    return-void
.end method

.method public blacklist setNegativeButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "negativeButtonText"    # Ljava/lang/CharSequence;

    .line 210
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 211
    return-void
.end method

.method public blacklist setReceiveSystemEvents(Z)V
    .locals 0
    .param p1, "receiveSystemEvents"    # Z

    .line 230
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mReceiveSystemEvents:Z

    .line 231
    return-void
.end method

.method public blacklist setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 190
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mSubtitle:Ljava/lang/CharSequence;

    .line 191
    return-void
.end method

.method public blacklist setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 182
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mTitle:Ljava/lang/CharSequence;

    .line 183
    return-void
.end method

.method public blacklist setUseDefaultTitle(Z)V
    .locals 0
    .param p1, "useDefaultTitle"    # Z

    .line 186
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultTitle:Z

    .line 187
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 117
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 118
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultTitle:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 119
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 125
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mConfirmationRequested:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 126
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialAllowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 127
    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAuthenticators:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDisallowBiometricsIfPolicyExists:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 129
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mReceiveSystemEvents:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 130
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 131
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowBackgroundAuthentication:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 132
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIgnoreEnrollmentState:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 133
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 136
    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemBiometricType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemPrivilegedFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemChallengeData:[B

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 141
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemChallengeData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 144
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    :goto_0
    return-void
.end method
