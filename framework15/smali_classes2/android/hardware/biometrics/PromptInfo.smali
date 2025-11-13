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

.field private blacklist mClassNameIfItIsConfirmDeviceCredentialActivity:Ljava/lang/String;

.field private blacklist mConfirmationRequested:Z

.field private blacklist mContentView:Landroid/hardware/biometrics/PromptContentViewParcelable;

.field private blacklist mDescription:Ljava/lang/CharSequence;

.field private blacklist mDeviceCredentialAllowed:Z

.field private blacklist mDeviceCredentialDescription:Ljava/lang/CharSequence;

.field private blacklist mDeviceCredentialSubtitle:Ljava/lang/CharSequence;

.field private blacklist mDeviceCredentialTitle:Ljava/lang/CharSequence;

.field private blacklist mDisallowBiometricsIfPolicyExists:Z

.field private blacklist mIgnoreEnrollmentState:Z

.field private blacklist mIsForLegacyFingerprintManager:Z

.field private blacklist mLogoBitmap:Landroid/graphics/Bitmap;

.field private blacklist mLogoDescription:Ljava/lang/String;

.field private blacklist mLogoRes:I

.field private blacklist mNegativeButtonText:Ljava/lang/CharSequence;

.field private blacklist mRealCallerForConfirmDeviceCredentialActivity:Landroid/content/ComponentName;

.field private blacklist mReceiveSystemEvents:Z

.field private blacklist mSemBiometricType:I

.field private blacklist mSemChallengeData:[B

.field private blacklist mSemDisplayId:I

.field private blacklist mSemPrivilegedFlag:I

.field private blacklist mSemTaskId:I

.field private blacklist mShowEmergencyCallButton:Z

.field private blacklist mSubtitle:Ljava/lang/CharSequence;

.field private blacklist mTitle:Ljava/lang/CharSequence;

.field private blacklist mUseDefaultSubtitle:Z

.field private blacklist mUseDefaultTitle:Z

.field private blacklist mUseParentProfileForDeviceCredential:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/biometrics/PromptInfo$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/PromptInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/PromptInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mConfirmationRequested:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mShowEmergencyCallButton:Z

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseParentProfileForDeviceCredential:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mClassNameIfItIsConfirmDeviceCredentialActivity:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mRealCallerForConfirmDeviceCredentialActivity:Landroid/content/ComponentName;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mConfirmationRequested:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mShowEmergencyCallButton:Z

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseParentProfileForDeviceCredential:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mClassNameIfItIsConfirmDeviceCredentialActivity:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mRealCallerForConfirmDeviceCredentialActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoRes:I

    sget-object v1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoDescription:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/biometrics/PromptInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultTitle:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/biometrics/PromptInfo;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultSubtitle:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/biometrics/PromptInfo;->mDescription:Ljava/lang/CharSequence;

    const-class v1, Landroid/hardware/biometrics/PromptContentViewParcelable;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/hardware/biometrics/PromptContentViewParcelable;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/PromptContentViewParcelable;

    iput-object v1, p0, Landroid/hardware/biometrics/PromptInfo;->mContentView:Landroid/hardware/biometrics/PromptContentViewParcelable;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/biometrics/PromptInfo;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/biometrics/PromptInfo;->mConfirmationRequested:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialAllowed:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/biometrics/PromptInfo;->mAuthenticators:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/biometrics/PromptInfo;->mDisallowBiometricsIfPolicyExists:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/biometrics/PromptInfo;->mReceiveSystemEvents:Z

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowBackgroundAuthentication:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/biometrics/PromptInfo;->mIgnoreEnrollmentState:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/biometrics/PromptInfo;->mShowEmergencyCallButton:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/biometrics/PromptInfo;->mUseParentProfileForDeviceCredential:Z

    const-class v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/content/ComponentName;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, p0, Landroid/hardware/biometrics/PromptInfo;->mRealCallerForConfirmDeviceCredentialActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/biometrics/PromptInfo;->mClassNameIfItIsConfirmDeviceCredentialActivity:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/biometrics/PromptInfo;->mSemDisplayId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/biometrics/PromptInfo;->mSemTaskId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/biometrics/PromptInfo;->mSemBiometricType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/biometrics/PromptInfo;->mSemPrivilegedFlag:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-lez v1, :cond_0

    new-array v0, v1, [B

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemChallengeData:[B

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemChallengeData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_0

    :cond_0
    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemChallengeData:[B

    :goto_0
    return-void
.end method

.method private blacklist semIsContentViewVerticalListUsed()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->customBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mContentView:Landroid/hardware/biometrics/PromptContentViewParcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mContentView:Landroid/hardware/biometrics/PromptContentViewParcelable;

    instance-of v0, v0, Landroid/hardware/biometrics/PromptVerticalListContentView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

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

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getAuthenticators()I
    .locals 1

    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAuthenticators:I

    return v0
.end method

.method public blacklist getClassNameIfItIsConfirmDeviceCredentialActivity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mClassNameIfItIsConfirmDeviceCredentialActivity:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getContentView()Landroid/hardware/biometrics/PromptContentView;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mContentView:Landroid/hardware/biometrics/PromptContentViewParcelable;

    return-object v0
.end method

.method public blacklist getDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getDeviceCredentialDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getDeviceCredentialSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getDeviceCredentialTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getLogo()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public blacklist getLogoBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoRes:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public blacklist getLogoDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoDescription:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLogoRes()I
    .locals 1

    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoRes:I

    return v0
.end method

.method public blacklist getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getRealCallerForConfirmDeviceCredentialActivity()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mRealCallerForConfirmDeviceCredentialActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist isAllowBackgroundAuthentication()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowBackgroundAuthentication:Z

    return v0
.end method

.method public blacklist isConfirmationRequested()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mConfirmationRequested:Z

    return v0
.end method

.method public blacklist isContentViewMoreOptionsButtonUsed()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->customBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mContentView:Landroid/hardware/biometrics/PromptContentViewParcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mContentView:Landroid/hardware/biometrics/PromptContentViewParcelable;

    instance-of v0, v0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isDeviceCredentialAllowed()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialAllowed:Z

    return v0
.end method

.method public blacklist isDisallowBiometricsIfPolicyExists()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDisallowBiometricsIfPolicyExists:Z

    return v0
.end method

.method public blacklist isForLegacyFingerprintManager()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    return v0
.end method

.method public blacklist isIgnoreEnrollmentState()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIgnoreEnrollmentState:Z

    return v0
.end method

.method public blacklist isReceiveSystemEvents()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mReceiveSystemEvents:Z

    return v0
.end method

.method public blacklist isShowEmergencyCallButton()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mShowEmergencyCallButton:Z

    return v0
.end method

.method public blacklist isUseDefaultSubtitle()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultSubtitle:Z

    return v0
.end method

.method public blacklist isUseDefaultTitle()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultTitle:Z

    return v0
.end method

.method public blacklist requiresAdvancedPermission()Z
    .locals 3

    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoRes:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoDescription:Ljava/lang/String;

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mContentView:Landroid/hardware/biometrics/PromptContentViewParcelable;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->isContentViewMoreOptionsButtonUsed()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->mandatoryBiometrics()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAuthenticators:I

    const/high16 v2, 0x10000

    and-int/2addr v0, v2

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requiresInternalPermission()Z
    .locals 2

    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDisallowBiometricsIfPolicyExists:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultTitle:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultSubtitle:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialSubtitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    return v1

    :cond_5
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mReceiveSystemEvents:Z

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requiresTestOrInternalPermission()Z
    .locals 3

    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowBackgroundAuthentication:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowBackgroundAuthentication:Z

    if-eqz v0, :cond_2

    return v2

    :cond_2
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    if-eqz v0, :cond_3

    return v2

    :cond_3
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIgnoreEnrollmentState:Z

    if-eqz v0, :cond_4

    return v2

    :cond_4
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mShowEmergencyCallButton:Z

    if-eqz v0, :cond_5

    return v2

    :cond_5
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mRealCallerForConfirmDeviceCredentialActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_6

    return v2

    :cond_6
    return v1
.end method

.method public blacklist semGetBiometricType()I
    .locals 1

    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemBiometricType:I

    return v0
.end method

.method public blacklist semGetChallengeData()[B
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemChallengeData:[B

    return-object v0
.end method

.method public blacklist semGetDisplayId()I
    .locals 1

    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemDisplayId:I

    return v0
.end method

.method public blacklist semGetPrivilegedFlag()I
    .locals 1

    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemPrivilegedFlag:I

    return v0
.end method

.method public blacklist semGetTaskId()I
    .locals 1

    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemTaskId:I

    return v0
.end method

.method public blacklist semIsDescriptionOptionalUsed()Z
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->isContentViewMoreOptionsButtonUsed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/hardware/biometrics/PromptInfo;->semIsContentViewVerticalListUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist semSetBiometricType(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/biometrics/PromptInfo;->mSemBiometricType:I

    return-void
.end method

.method public blacklist semSetChallengeData([B)V
    .locals 1

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemChallengeData:[B

    return-void
.end method

.method public blacklist semSetDisplayId(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/biometrics/PromptInfo;->mSemDisplayId:I

    return-void
.end method

.method public blacklist semSetPrivilegedFlag(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/biometrics/PromptInfo;->mSemPrivilegedFlag:I

    return-void
.end method

.method public blacklist semSetTaskId(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/biometrics/PromptInfo;->mSemTaskId:I

    return-void
.end method

.method public blacklist setAllowBackgroundAuthentication(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowBackgroundAuthentication:Z

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

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public blacklist setAuthenticators(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/biometrics/PromptInfo;->mAuthenticators:I

    return-void
.end method

.method blacklist setClassNameIfItIsConfirmDeviceCredentialActivity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mClassNameIfItIsConfirmDeviceCredentialActivity:Ljava/lang/String;

    return-void
.end method

.method public blacklist setConfirmationRequested(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mConfirmationRequested:Z

    return-void
.end method

.method public blacklist setContentView(Landroid/hardware/biometrics/PromptContentView;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroid/hardware/biometrics/PromptContentViewParcelable;

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mContentView:Landroid/hardware/biometrics/PromptContentViewParcelable;

    return-void
.end method

.method public blacklist setDescription(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public blacklist setDeviceCredentialAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialAllowed:Z

    return-void
.end method

.method public blacklist setDeviceCredentialDescription(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public blacklist setDeviceCredentialSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialSubtitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public blacklist setDeviceCredentialTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public blacklist setDisallowBiometricsIfPolicyExists(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mDisallowBiometricsIfPolicyExists:Z

    return-void
.end method

.method public blacklist setIgnoreEnrollmentState(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mIgnoreEnrollmentState:Z

    return-void
.end method

.method public blacklist setIsForLegacyFingerprintManager(I)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist setLogo(ILandroid/graphics/Bitmap;)V
    .locals 0

    iput p1, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoRes:I

    iput-object p2, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public blacklist setLogoDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoDescription:Ljava/lang/String;

    return-void
.end method

.method public blacklist setNegativeButtonText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-void
.end method

.method public blacklist setRealCallerForConfirmDeviceCredentialActivity(Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mRealCallerForConfirmDeviceCredentialActivity:Landroid/content/ComponentName;

    return-void
.end method

.method public blacklist setReceiveSystemEvents(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mReceiveSystemEvents:Z

    return-void
.end method

.method public blacklist setShowEmergencyCallButton(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mShowEmergencyCallButton:Z

    return-void
.end method

.method public blacklist setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mSubtitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public blacklist setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public blacklist setUseDefaultSubtitle(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultSubtitle:Z

    return-void
.end method

.method public blacklist setUseDefaultTitle(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultTitle:Z

    return-void
.end method

.method public blacklist setUseParentProfileForDeviceCredential(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mUseParentProfileForDeviceCredential:Z

    return-void
.end method

.method public blacklist shouldUseParentProfileForDeviceCredential()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseParentProfileForDeviceCredential:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultTitle:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultSubtitle:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mContentView:Landroid/hardware/biometrics/PromptContentViewParcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mConfirmationRequested:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialAllowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAuthenticators:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDisallowBiometricsIfPolicyExists:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mReceiveSystemEvents:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowBackgroundAuthentication:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIgnoreEnrollmentState:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mShowEmergencyCallButton:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseParentProfileForDeviceCredential:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mRealCallerForConfirmDeviceCredentialActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mClassNameIfItIsConfirmDeviceCredentialActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemBiometricType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemPrivilegedFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemChallengeData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemChallengeData:[B

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemChallengeData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSemChallengeData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method
