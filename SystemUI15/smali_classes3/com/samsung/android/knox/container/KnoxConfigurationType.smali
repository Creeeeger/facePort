.class public Lcom/samsung/android/knox/container/KnoxConfigurationType;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEBUG:Z = false

.field public static final MIN_INVALID_PASSWORD_LEN:I = 0x101

.field public static final TAG:Ljava/lang/String; = "KnoxConfigurationType"


# instance fields
.field public mAdminUid:I

.field public mAllowChangeDataSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public mAllowMultiwindowMode:Z

.field public mAllowSwitch:Z

.field public mAllowTaskManager:Z

.field public mAllowUSBDebugging:Z

.field public mAppInstallationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAppRemoveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAuthenticationConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

.field public mBiometricAuthValue:I

.field public mCustomBadgeIcon:Ljava/lang/String;

.field public mCustomHomeScreenWallpaper:Ljava/lang/String;

.field public mCustomLockScreenWallpaper:Ljava/lang/String;

.field public mCustomStatusIcon:Ljava/lang/String;

.field public mCustomStatusLabel:Ljava/lang/String;

.field public mEC:Z

.field public mECBadge:Ljava/lang/String;

.field public mECIcon:Ljava/lang/String;

.field public mECName:Ljava/lang/String;

.field public mFOTADisableAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mFOTAReenableAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mForbiddenStrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mGoogleAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mIsBiometricAuthEnabled:Z

.field public mIsDefaultConfigType:Z

.field public mKeyguardDisabledFeatures:I

.field public mLayoutType:I

.field public mManagedType:Z

.field public mMaximumCharacterOccurences:I

.field public mMaximumCharacterSequenceLength:I

.field public mMaximumFailedPasswordsForWipe:I

.field public mMaximumNumericSequenceLength:I

.field public mMaximumTimeToLock:I

.field public mMultifactorAuthEnabled:Z

.field public mName:Ljava/lang/String;

.field public mNameIcon:Ljava/lang/String;

.field public mPasswordMinimumLength:I

.field public mPasswordMinimumLetters:I

.field public mPasswordMinimumLowerCase:I

.field public mPasswordMinimumNonLetters:I

.field public mPasswordMinimumNumeric:I

.field public mPasswordMinimumSymbols:I

.field public mPasswordMinimumUpperCase:I

.field public mPasswordPattern:Ljava/lang/String;

.field public mPasswordQuality:I

.field public mPersonaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mProtectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mRCPDataSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public mRCPNotifSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public mSimplePasswordEnabled:Z

.field public mUserId:I

.field public mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/container/KnoxConfigurationType$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAdminUid:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mUserId:I

    const-string v2, "custom"

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mVersion:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumNonLetters:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLetters:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumNumeric:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumUpperCase:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLowerCase:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumSymbols:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordQuality:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumFailedPasswordsForWipe:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumCharacterOccurences:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumCharacterSequenceLength:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumNumericSequenceLength:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLength:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumTimeToLock:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordPattern:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomBadgeIcon:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomHomeScreenWallpaper:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mEC:Z

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mNameIcon:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECName:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECIcon:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECBadge:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomLockScreenWallpaper:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomStatusLabel:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomStatusIcon:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPersonaList:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAppInstallationList:Ljava/util/List;

    iput v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mLayoutType:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowSwitch:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsDefaultConfigType:Z

    new-instance v3, Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-direct {v3}, Lcom/samsung/android/knox/container/AuthenticationConfig;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAuthenticationConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAppRemoveList:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mFOTADisableAppList:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mFOTAReenableAppList:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mForbiddenStrings:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mProtectedList:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mGoogleAppsList:Ljava/util/List;

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mManagedType:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mSimplePasswordEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMultifactorAuthEnabled:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowMultiwindowMode:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowTaskManager:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsBiometricAuthEnabled:Z

    iput v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mBiometricAuthValue:I

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowUSBDebugging:Z

    iput v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mKeyguardDisabledFeatures:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPDataSettings:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowChangeDataSettings:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPNotifSettings:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAdminUid:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mUserId:I

    const-string v2, "custom"

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mVersion:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumNonLetters:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLetters:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumNumeric:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumUpperCase:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLowerCase:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumSymbols:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordQuality:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumFailedPasswordsForWipe:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumCharacterOccurences:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumCharacterSequenceLength:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumNumericSequenceLength:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLength:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumTimeToLock:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordPattern:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mName:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomBadgeIcon:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomHomeScreenWallpaper:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mEC:Z

    iput-object v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mNameIcon:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECName:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECIcon:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECBadge:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomLockScreenWallpaper:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomStatusLabel:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomStatusIcon:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPersonaList:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAppInstallationList:Ljava/util/List;

    iput v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mLayoutType:I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowSwitch:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsDefaultConfigType:Z

    new-instance v5, Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-direct {v5}, Lcom/samsung/android/knox/container/AuthenticationConfig;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAuthenticationConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAppRemoveList:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mFOTADisableAppList:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mFOTAReenableAppList:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mForbiddenStrings:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mProtectedList:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mGoogleAppsList:Ljava/util/List;

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mManagedType:Z

    iput-boolean v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mSimplePasswordEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMultifactorAuthEnabled:Z

    iput-boolean v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowMultiwindowMode:Z

    iput-boolean v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowTaskManager:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsBiometricAuthEnabled:Z

    iput v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mBiometricAuthValue:I

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowUSBDebugging:Z

    iput v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mKeyguardDisabledFeatures:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPDataSettings:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowChangeDataSettings:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mVersion:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mVersion:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumNonLetters:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLetters:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumNumeric:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumUpperCase:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLowerCase:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumSymbols:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordQuality:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumTimeToLock:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumFailedPasswordsForWipe:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mManagedType:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v1, v3

    :cond_3
    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomBadgeIcon:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move-object v1, v3

    :cond_5
    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomHomeScreenWallpaper:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_6

    move v1, v4

    goto :goto_2

    :cond_6
    move v1, v0

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mEC:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "reading from parcel mEC "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mEC:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KnoxConfigurationType"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    move-object v1, v3

    :cond_8
    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mNameIcon:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    move-object v1, v3

    :cond_a
    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    move-object v1, v3

    :cond_c
    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECIcon:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    move-object v1, v3

    :cond_e
    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECBadge:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_f
    move-object v1, v3

    :cond_10
    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomLockScreenWallpaper:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_11
    move-object v1, v3

    :cond_12
    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomStatusLabel:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_13
    move-object v1, v3

    :cond_14
    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomStatusIcon:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAppInstallationList:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mForbiddenStrings:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mProtectedList:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mGoogleAppsList:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumCharacterOccurences:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumCharacterSequenceLength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumNumericSequenceLength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_3

    :cond_15
    move-object v3, v1

    :cond_16
    :goto_3
    iput-object v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordPattern:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_17

    move v1, v4

    goto :goto_4

    :cond_17
    move v1, v0

    :goto_4
    iput-boolean v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mSimplePasswordEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_18

    move v1, v4

    goto :goto_5

    :cond_18
    move v1, v0

    :goto_5
    iput-boolean v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMultifactorAuthEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_19

    move v1, v4

    goto :goto_6

    :cond_19
    move v1, v0

    :goto_6
    iput-boolean v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowMultiwindowMode:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_1a

    move v1, v4

    goto :goto_7

    :cond_1a
    move v1, v0

    :goto_7
    iput-boolean v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowTaskManager:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_1b

    move v1, v4

    goto :goto_8

    :cond_1b
    move v1, v0

    :goto_8
    iput-boolean v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsBiometricAuthEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mBiometricAuthValue:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_1c

    move v1, v4

    goto :goto_9

    :cond_1c
    move v1, v0

    :goto_9
    iput-boolean v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowUSBDebugging:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mLayoutType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_1d

    move v1, v4

    goto :goto_a

    :cond_1d
    move v1, v0

    :goto_a
    iput-boolean v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowSwitch:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_1e

    move v0, v4

    :cond_1e
    iput-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsDefaultConfigType:Z

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->deserializeRCPSettings(Landroid/os/Parcel;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowChangeDataSettings:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->deserializeRCPSettings(Landroid/os/Parcel;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->deserializeRCPSettings(Landroid/os/Parcel;Ljava/util/HashMap;)V

    const-class v0, Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/container/AuthenticationConfig;

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAuthenticationConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mKeyguardDisabledFeatures:I

    return-void
.end method


# virtual methods
.method public addPersonaId(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPersonaList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPersonaList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public allowLayoutSwitching(Z)V
    .locals 2

    const-string v0, "allowLayoutSwitching: allowSwitch "

    const-string v1, "KnoxConfigurationType"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowSwitch:Z

    return-void
.end method

.method public allowMultiwindowMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowMultiwindowMode:Z

    return-void
.end method

.method public allowTaskManager(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowTaskManager:Z

    return-void
.end method

.method public allowUSBDebugging(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowUSBDebugging:Z

    return-void
.end method

.method public clone(Ljava/lang/String;)Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    invoke-direct {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->cloneConfiguration(Lcom/samsung/android/knox/container/KnoxConfigurationType;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const-string p0, "KnoxConfigurationType"

    const-string p1, "clone(): name is either null or empty, hence returning null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final cloneConfiguration(Lcom/samsung/android/knox/container/KnoxConfigurationType;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setName(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumNonLetters:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumNonLetters(I)V

    iget p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLetters:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumLetters(I)V

    iget p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumNumeric:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumNumeric(I)V

    iget p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumUpperCase:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumUpperCase(I)V

    iget p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLowerCase:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumLowerCase(I)V

    iget p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumSymbols:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumSymbols(I)V

    iget p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordQuality:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordQuality(I)V

    iget p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumFailedPasswordsForWipe:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setMaximumFailedPasswordsForWipe(I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mManagedType:Z

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setManagedType(Z)V

    iget-object p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomBadgeIcon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomBadgeIcon(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomHomeScreenWallpaper:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomHomeScreenWallpaper(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mNameIcon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerNameIcon(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mEC:Z

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerEnabled(Z)V

    iget-object p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerName(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECIcon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerIcon(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECBadge:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerBadge(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomLockScreenWallpaper:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomLockScreenWallpaper(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomStatusLabel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomStatusLabel(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomStatusIcon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomStatusIcon(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAppInstallationList:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setAppInstallationList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAppRemoveList:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setAppRemoveList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mFOTADisableAppList:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setFOTADisableList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mFOTAReenableAppList:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setFOTAReenableList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mForbiddenStrings:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setForbiddenStrings(Ljava/util/List;)V

    iget-object p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mProtectedList:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setProtectedPackageList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mGoogleAppsList:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setGoogleAppsList(Ljava/util/List;)V

    iget p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumCharacterOccurences:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setMaximumCharacterOccurences(I)V

    iget p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumCharacterSequenceLength:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setMaximumCharacterSequenceLength(I)V

    iget p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumNumericSequenceLength:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setMaximumNumericSequenceLength(I)V

    iget p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLength:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumLength(I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mSimplePasswordEnabled:Z

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setSimplePasswordEnabled(Z)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMultifactorAuthEnabled:Z

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->enforceMultifactorAuthentication(Z)V

    iget-object p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordPattern:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setRequiredPasswordPattern(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPDataSettings:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setRCPSyncPolicy(Ljava/util/HashMap;Ljava/util/HashMap;)V

    iget-object p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowChangeDataSettings:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowChangeDataSettings:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setRCPSyncPolicy(Ljava/util/HashMap;Ljava/util/HashMap;)V

    iget-object p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPNotifSettings:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setRCPSyncPolicy(Ljava/util/HashMap;Ljava/util/HashMap;)V

    iget p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumTimeToLock:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setMaximumTimeToLock(I)V

    iget-object p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setVersion(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowMultiwindowMode:Z

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->allowMultiwindowMode(Z)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowTaskManager:Z

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->allowTaskManager(Z)V

    iget p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mBiometricAuthValue:I

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsBiometricAuthEnabled:Z

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setBiometricAuthenticationEnabled(IZ)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowUSBDebugging:Z

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->allowUSBDebugging(Z)V

    iget p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mLayoutType:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setContainerLayout(I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowSwitch:Z

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->allowLayoutSwitching(Z)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsDefaultConfigType:Z

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setDefaultConfigType(Z)V

    iget-object p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAuthenticationConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setEnterpriseIdentityAuthenticationData(Lcom/samsung/android/knox/container/AuthenticationConfig;)V

    iget p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mKeyguardDisabledFeatures:I

    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setKeyguardDisabledFeatures(I)V

    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final deserializeRCPSettings(Landroid/os/Parcel;Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/util/Pair;

    invoke-direct {v8, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final dumpEIDConfig(Lcom/samsung/android/knox/container/AuthenticationConfig;)V
    .locals 4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "AuthenticationConfig:enforceRemoteAuthAlways:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceRemoteAuthAlways()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KnoxConfigurationType"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "AuthenticationConfig:forceEnterpriseIdentityLock:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceEnterpriseIdentityLock()Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "AuthenticationConfig:hideEnterpriseIdentityLock:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getHideEnterpriseIdentityLock()Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "AuthenticationConfig:authenticatorPkgName:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "AuthenticationConfig:authenticatorPkgSignature:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "AuthenticationConfig:authenticatorConfig:null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "AuthenticationConfig:authenticatorConfig:"

    const-string v3, ":"

    invoke-static {v2, v1, v3}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final dumpRCPSettings(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, " "

    const-string v2, " {"

    const-string v3, "KnoxConfigurationType"

    invoke-static {v1, v0, v2, v3}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "  ( "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-string v0, " }"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dumpState()V
    .locals 0

    return-void
.end method

.method public enforceMultifactorAuthentication(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMultifactorAuthEnabled:Z

    return-void
.end method

.method public getAdminUid()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAdminUid:I

    return p0
.end method

.method public getAirCommandEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getAllowAllShare()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAllowChangeDataSyncPolicy()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowChangeDataSettings:Ljava/util/HashMap;

    return-object p0
.end method

.method public getAllowChangeDataSyncPolicy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowChangeDataSettings:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getRCPSyncPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getAllowContainerReset()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAllowCustomBadgeIcon()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getAllowCustomColorIdentification()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getAllowCustomPersonaIcon()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getAllowDLNADataTransfer()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAllowExportAndDeleteFiles()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAllowExportFiles()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAllowImportFiles()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getAllowPrint()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAllowShortCutCreation()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getAllowUniversalCallerId()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getAppInstallationList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAppInstallationList:Ljava/util/List;

    return-object p0
.end method

.method public getAppRemoveList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAppRemoveList:Ljava/util/List;

    return-object p0
.end method

.method public getBiometricAuthenticationEnabledType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mBiometricAuthValue:I

    return p0
.end method

.method public getBiometricAuthenticationEnabledValue()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsBiometricAuthEnabled:Z

    return p0
.end method

.method public getCameraModeChangeEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getContainerLayout()I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getContainerLayout: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mLayoutType:I

    const-string v2, "KnoxConfigurationType"

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mLayoutType:I

    return p0
.end method

.method public getCustomBadgeIcon()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomBadgeIcon:Ljava/lang/String;

    return-object p0
.end method

.method public getCustomHomeScreenWallpaper()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomHomeScreenWallpaper:Ljava/lang/String;

    return-object p0
.end method

.method public getCustomLockScreenWallpaper()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomLockScreenWallpaper:Ljava/lang/String;

    return-object p0
.end method

.method public getCustomStatusIcon()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomStatusIcon:Ljava/lang/String;

    return-object p0
.end method

.method public getCustomStatusLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomStatusLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getCustomizedContainerBadge()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECBadge:Ljava/lang/String;

    return-object p0
.end method

.method public getCustomizedContainerIcon()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECIcon:Ljava/lang/String;

    return-object p0
.end method

.method public getCustomizedContainerName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECName:Ljava/lang/String;

    return-object p0
.end method

.method public getCustomizedContainerNameIcon()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mNameIcon:Ljava/lang/String;

    return-object p0
.end method

.method public getDataSyncPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getRCPSyncPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDataSyncPolicy()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPDataSettings:Ljava/util/HashMap;

    return-object p0
.end method

.method public getDisableSwitchWidgetOnLockScreen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getEnterpriseIdentityAuthentication()Lcom/samsung/android/knox/container/AuthenticationConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAuthenticationConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    return-object p0
.end method

.method public getFOTADisableList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mFOTADisableAppList:Ljava/util/List;

    return-object p0
.end method

.method public getFOTAReenableList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mFOTAReenableAppList:Ljava/util/List;

    return-object p0
.end method

.method public getForbiddenStrings()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mForbiddenStrings:Ljava/util/List;

    return-object p0
.end method

.method public getGearSupportEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getGoogleAppsList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mGoogleAppsList:Ljava/util/List;

    return-object p0
.end method

.method public getKeyguardDisabledFeatures()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mKeyguardDisabledFeatures:I

    return p0
.end method

.method public getListFromAllowChangeDataSyncPolicy(Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowChangeDataSettings:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getListFromSyncPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getListFromDataSyncPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getListFromSyncPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getListFromSyncPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p3, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    invoke-virtual {v1, v2}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p0, :cond_3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    return-object p0
.end method

.method public getManagedType()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mManagedType:Z

    return p0
.end method

.method public getMaximumCharacterOccurences()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumCharacterOccurences:I

    return p0
.end method

.method public getMaximumCharacterSequenceLength()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumCharacterSequenceLength:I

    return p0
.end method

.method public getMaximumFailedPasswordsForWipe()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumFailedPasswordsForWipe:I

    return p0
.end method

.method public getMaximumNumericSequenceLength()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumNumericSequenceLength:I

    return p0
.end method

.method public getMaximumTimeToLock()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumTimeToLock:I

    return p0
.end method

.method public getModifyLockScreenTimeout()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getNotificationSyncPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getRCPSyncPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationSyncPolicy()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPNotifSettings:Ljava/util/HashMap;

    return-object p0
.end method

.method public getPackagesFromNotificationSyncPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getListFromSyncPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPasswordMinimumLength()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLength:I

    return p0
.end method

.method public getPasswordMinimumLetters()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLetters:I

    return p0
.end method

.method public getPasswordMinimumLowerCase()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLowerCase:I

    return p0
.end method

.method public getPasswordMinimumNonLetters()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumNonLetters:I

    return p0
.end method

.method public getPasswordMinimumNumeric()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumNumeric:I

    return p0
.end method

.method public getPasswordMinimumSymbols()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumSymbols:I

    return p0
.end method

.method public getPasswordMinimumUpperCase()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumUpperCase:I

    return p0
.end method

.method public getPasswordQuality()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordQuality:I

    return p0
.end method

.method public getPenWindowEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getPersonaList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPersonaList:Ljava/util/List;

    return-object p0
.end method

.method public getProtectedPackageList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mProtectedList:Ljava/util/List;

    return-object p0
.end method

.method public final getRCPSyncPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p3, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Pair;

    iget-object v0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public getRequiredPwdPatternRestrictions()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordPattern:Ljava/lang/String;

    return-object p0
.end method

.method public getSimplePasswordEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mSimplePasswordEnabled:Z

    return p0
.end method

.method public getUserId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mUserId:I

    return p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mVersion:Ljava/lang/String;

    return-object p0
.end method

.method public isBiometricAuthenticationEnabled(I)Z
    .locals 2

    iget p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mBiometricAuthValue:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    and-int/2addr p0, p1

    if-eq p0, p1, :cond_0

    return v1

    :cond_0
    const-string p0, "KnoxConfigurationType"

    const-string p1, "isBiometricAuthenticationEnabled: return true (hasValue)"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public isCustomizedContainerEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mEC:Z

    return p0
.end method

.method public isDefaultConfigType()Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isDefaultConfigType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsDefaultConfigType:Z

    const-string v2, "KnoxConfigurationType"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsDefaultConfigType:Z

    return p0
.end method

.method public isLayoutSwitchingAllowed()Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isLayoutSwitchingAllowed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowSwitch:Z

    const-string v2, "KnoxConfigurationType"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowSwitch:Z

    return p0
.end method

.method public isMultifactorAuthenticationEnforced()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMultifactorAuthEnabled:Z

    return p0
.end method

.method public isMultiwindowModeAllowed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowMultiwindowMode:Z

    return p0
.end method

.method public isTaskManagerAllowed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowTaskManager:Z

    return p0
.end method

.method public isUSBDebuggingAllowed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowUSBDebugging:Z

    return p0
.end method

.method public isUserManaged()Z
    .locals 1

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mManagedType:Z

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removePersonaId(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPersonaList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPersonaList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final serializeRCPSettings(Landroid/os/Parcel;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-static {p1, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;Ljava/util/List;)Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3
    return-void
.end method

.method public setAdminUid(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAdminUid:I

    return-void
.end method

.method public setAirCommandEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setAllowAllShare(Z)V
    .locals 0

    return-void
.end method

.method public setAllowChangeDataSyncPolicy(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowChangeDataSettings:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setRCPSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public setAllowContainerReset(Z)V
    .locals 0

    return-void
.end method

.method public setAllowCustomBadgeIcon(Z)V
    .locals 0

    return-void
.end method

.method public setAllowCustomColorIdentification(Z)V
    .locals 0

    return-void
.end method

.method public setAllowCustomPersonaIcon(Z)V
    .locals 0

    return-void
.end method

.method public setAllowDLNADataTransfer(Z)V
    .locals 0

    return-void
.end method

.method public setAllowExportAndDeleteFiles(Z)V
    .locals 0

    return-void
.end method

.method public setAllowExportFiles(Z)V
    .locals 0

    return-void
.end method

.method public setAllowImportFiles(Z)V
    .locals 0

    return-void
.end method

.method public setAllowPrint(Z)V
    .locals 0

    return-void
.end method

.method public setAllowShortCutCreation(Z)V
    .locals 0

    return-void
.end method

.method public setAllowUniversalCallerId(Z)V
    .locals 0

    return-void
.end method

.method public setAppInstallationList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAppInstallationList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAppInstallationList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setAppRemoveList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAppRemoveList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAppRemoveList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setBiometricAuthenticationEnabled(IZ)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mBiometricAuthValue:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz p2, :cond_2

    or-int/2addr p1, v0

    goto :goto_1

    :cond_2
    not-int p1, p1

    and-int/2addr p1, v0

    :goto_1
    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mBiometricAuthValue:I

    if-gtz p1, :cond_3

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsBiometricAuthEnabled:Z

    goto :goto_2

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsBiometricAuthEnabled:Z

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "setBiometricAuthenticationEnabled : bioAuth = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mBiometricAuthValue:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", enabled : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsBiometricAuthEnabled:Z

    const-string p2, "KnoxConfigurationType"

    invoke-static {p1, p0, p2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public setCameraModeChangeEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setContainerLayout(I)V
    .locals 2

    const-string/jumbo v0, "setDefaultContainerLayout: layoutType "

    const-string v1, "KnoxConfigurationType"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mLayoutType:I

    return-void
.end method

.method public setCustomBadgeIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomBadgeIcon:Ljava/lang/String;

    return-void
.end method

.method public setCustomHomeScreenWallpaper(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomHomeScreenWallpaper:Ljava/lang/String;

    return-void
.end method

.method public setCustomLockScreenWallpaper(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomLockScreenWallpaper:Ljava/lang/String;

    return-void
.end method

.method public setCustomStatusIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomStatusIcon:Ljava/lang/String;

    return-void
.end method

.method public setCustomStatusLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomStatusLabel:Ljava/lang/String;

    return-void
.end method

.method public setCustomizedContainerBadge(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECBadge:Ljava/lang/String;

    return-void
.end method

.method public setCustomizedContainerEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mEC:Z

    return-void
.end method

.method public setCustomizedContainerIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECIcon:Ljava/lang/String;

    return-void
.end method

.method public setCustomizedContainerName(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "setting ecname "

    const-string v1, "KnoxConfigurationType"

    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECName:Ljava/lang/String;

    return-void
.end method

.method public setCustomizedContainerNameIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mNameIcon:Ljava/lang/String;

    return-void
.end method

.method public setDataSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setRCPSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public setDefaultConfigType(Z)V
    .locals 2

    const-string/jumbo v0, "setDefaultConfigType: isDefaultConfigType "

    const-string v1, "KnoxConfigurationType"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsDefaultConfigType:Z

    return-void
.end method

.method public setDisableSwitchWidgetOnLockScreen(Z)V
    .locals 0

    return-void
.end method

.method public setEnterpriseIdentityAuthentication(Lcom/samsung/android/knox/container/AuthenticationConfig;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAuthenticationConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-direct {p1}, Lcom/samsung/android/knox/container/AuthenticationConfig;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAuthenticationConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAuthenticationConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/container/AuthenticationConfig;->setConfiguredByMDM(Z)V

    return-void
.end method

.method public setEnterpriseIdentityAuthenticationData(Lcom/samsung/android/knox/container/AuthenticationConfig;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAuthenticationConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    :cond_0
    return-void
.end method

.method public setFOTADisableList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mFOTADisableAppList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mFOTADisableAppList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setFOTAReenableList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mFOTAReenableAppList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mFOTAReenableAppList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setForbiddenStrings(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mForbiddenStrings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mForbiddenStrings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setGearSupportEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setGoogleAppsList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mGoogleAppsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mGoogleAppsList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setKeyguardDisabledFeatures(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mKeyguardDisabledFeatures:I

    return-void
.end method

.method public setManagedType(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mManagedType:Z

    return-void
.end method

.method public setMaximumCharacterOccurences(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x101

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumCharacterOccurences:I

    :cond_0
    return-void
.end method

.method public setMaximumCharacterSequenceLength(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x101

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumCharacterSequenceLength:I

    :cond_0
    return-void
.end method

.method public setMaximumFailedPasswordsForWipe(I)V
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumFailedPasswordsForWipe:I

    :cond_0
    return-void
.end method

.method public setMaximumNumericSequenceLength(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x101

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumNumericSequenceLength:I

    :cond_0
    return-void
.end method

.method public setMaximumTimeToLock(I)V
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumTimeToLock:I

    :cond_0
    return-void
.end method

.method public setModifyLockScreenTimeout(Z)V
    .locals 0

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setNotificationSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setRCPSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public setPasswordMinimumLength(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x101

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLength:I

    :cond_0
    return-void
.end method

.method public setPasswordMinimumLetters(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x101

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLetters:I

    :cond_0
    return-void
.end method

.method public setPasswordMinimumLowerCase(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x101

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLowerCase:I

    :cond_0
    return-void
.end method

.method public setPasswordMinimumNonLetters(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x101

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumNonLetters:I

    :cond_0
    return-void
.end method

.method public setPasswordMinimumNumeric(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x101

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumNumeric:I

    :cond_0
    return-void
.end method

.method public setPasswordMinimumSymbols(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x101

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumSymbols:I

    :cond_0
    return-void
.end method

.method public setPasswordMinimumUpperCase(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x101

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumUpperCase:I

    :cond_0
    return-void
.end method

.method public setPasswordQuality(I)V
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordQuality:I

    :cond_0
    return-void
.end method

.method public setPenWindowEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setPersonaList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPersonaList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setProtectedPackageList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mProtectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mProtectedList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setRCPSyncPolicy(Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    new-instance v4, Landroid/util/Pair;

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final setRCPSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    if-eqz p4, :cond_7

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    move-object v2, p3

    :cond_1
    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    invoke-virtual {v6, p0}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, " "

    const-string v9, "KnoxConfigurationType"

    if-eqz v7, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Ignoring the duplicate entry: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v1, v6, v9}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "property found, remove and add it again: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static {v2, v7, v9}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v6

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_6

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object v2, p3

    :cond_6
    :goto_2
    if-eqz v1, :cond_1

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p4, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    :goto_3
    return-void
.end method

.method public setRequiredPasswordPattern(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordPattern:Ljava/lang/String;

    return-void
.end method

.method public setSimplePasswordEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mSimplePasswordEnabled:Z

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mUserId:I

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mVersion:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mName:Ljava/lang/String;

    const-string v1, "custom"

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mVersion:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1
    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumNonLetters:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLetters:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumNumeric:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumUpperCase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLowerCase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumSymbols:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumTimeToLock:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumFailedPasswordsForWipe:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mManagedType:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomBadgeIcon:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomHomeScreenWallpaper:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "writing to parcel mEC "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mEC:Z

    const-string v3, "KnoxConfigurationType"

    invoke-static {v0, v2, v3}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mEC:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mNameIcon:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_4
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECName:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_5
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECIcon:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_6
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECBadge:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_7

    :cond_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_7
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomLockScreenWallpaper:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :cond_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_8
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomStatusLabel:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    :cond_9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_9
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomStatusIcon:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    :cond_a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_a
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAppInstallationList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mForbiddenStrings:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mProtectedList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mGoogleAppsList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumCharacterOccurences:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumCharacterSequenceLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumNumericSequenceLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordPattern:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_b

    :cond_b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_b
    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mSimplePasswordEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMultifactorAuthEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowMultiwindowMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowTaskManager:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsBiometricAuthEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mBiometricAuthValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowUSBDebugging:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mLayoutType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowSwitch:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsDefaultConfigType:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->serializeRCPSettings(Landroid/os/Parcel;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowChangeDataSettings:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->serializeRCPSettings(Landroid/os/Parcel;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->serializeRCPSettings(Landroid/os/Parcel;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAuthenticationConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mKeyguardDisabledFeatures:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
