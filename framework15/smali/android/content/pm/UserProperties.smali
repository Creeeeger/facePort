.class public final Landroid/content/pm/UserProperties;
.super Ljava/lang/Object;
.source "UserProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/UserProperties$Builder;,
        Landroid/content/pm/UserProperties$ProfileApiVisibility;,
        Landroid/content/pm/UserProperties$CrossProfileContentSharingStrategy;,
        Landroid/content/pm/UserProperties$ShowInSharingSurfaces;,
        Landroid/content/pm/UserProperties$ShowInQuietMode;,
        Landroid/content/pm/UserProperties$CrossProfileIntentResolutionStrategy;,
        Landroid/content/pm/UserProperties$CrossProfileIntentFilterAccessControlLevel;,
        Landroid/content/pm/UserProperties$InheritDevicePolicy;,
        Landroid/content/pm/UserProperties$ShowInSettings;,
        Landroid/content/pm/UserProperties$ShowInLauncher;,
        Landroid/content/pm/UserProperties$PropertyIndex;
    }
.end annotation


# static fields
.field private static final blacklist ATTR_ALLOW_STOPPING_USER_WITH_DELAYED_LOCKING:Ljava/lang/String; = "allowStoppingUserWithDelayedLocking"

.field private static final blacklist ATTR_ALWAYS_VISIBLE:Ljava/lang/String; = "alwaysVisible"

.field private static final blacklist ATTR_AUTH_ALWAYS_REQUIRED_TO_DISABLE_QUIET_MODE:Ljava/lang/String; = "authAlwaysRequiredToDisableQuietMode"

.field private static final blacklist ATTR_CREDENTIAL_SHAREABLE_WITH_PARENT:Ljava/lang/String; = "credentialShareableWithParent"

.field private static final blacklist ATTR_CROSS_PROFILE_CONTENT_SHARING_STRATEGY:Ljava/lang/String; = "crossProfileContentSharingStrategy"

.field private static final blacklist ATTR_CROSS_PROFILE_INTENT_FILTER_ACCESS_CONTROL:Ljava/lang/String; = "crossProfileIntentFilterAccessControl"

.field private static final blacklist ATTR_CROSS_PROFILE_INTENT_RESOLUTION_STRATEGY:Ljava/lang/String; = "crossProfileIntentResolutionStrategy"

.field private static final blacklist ATTR_DELETE_APP_WITH_PARENT:Ljava/lang/String; = "deleteAppWithParent"

.field private static final blacklist ATTR_INHERIT_DEVICE_POLICY:Ljava/lang/String; = "inheritDevicePolicy"

.field private static final blacklist ATTR_MEDIA_SHARED_WITH_PARENT:Ljava/lang/String; = "mediaSharedWithParent"

.field private static final blacklist ATTR_PROFILE_API_VISIBILITY:Ljava/lang/String; = "profileApiVisibility"

.field private static final blacklist ATTR_SHOW_IN_LAUNCHER:Ljava/lang/String; = "showInLauncher"

.field private static final blacklist ATTR_SHOW_IN_QUIET_MODE:Ljava/lang/String; = "showInQuietMode"

.field private static final blacklist ATTR_SHOW_IN_SETTINGS:Ljava/lang/String; = "showInSettings"

.field private static final blacklist ATTR_SHOW_IN_SHARING_SURFACES:Ljava/lang/String; = "showInSharingSurfaces"

.field private static final blacklist ATTR_START_WITH_PARENT:Ljava/lang/String; = "startWithParent"

.field private static final blacklist ATTR_UPDATE_CROSS_PROFILE_INTENT_FILTERS_ON_OTA:Ljava/lang/String; = "updateCrossProfileIntentFiltersOnOTA"

.field private static final blacklist ATTR_USE_PARENTS_CONTACTS:Ljava/lang/String; = "useParentsContacts"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/UserProperties;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CROSS_PROFILE_CONTENT_SHARING_DELEGATE_FROM_PARENT:I = 0x1

.field public static final whitelist CROSS_PROFILE_CONTENT_SHARING_NO_DELEGATION:I = 0x0

.field public static final whitelist CROSS_PROFILE_CONTENT_SHARING_UNKNOWN:I = -0x1

.field public static final blacklist CROSS_PROFILE_INTENT_FILTER_ACCESS_LEVEL_ALL:I = 0x0

.field public static final blacklist CROSS_PROFILE_INTENT_FILTER_ACCESS_LEVEL_SYSTEM:I = 0xa

.field public static final blacklist CROSS_PROFILE_INTENT_FILTER_ACCESS_LEVEL_SYSTEM_ADD_ONLY:I = 0x14

.field public static final blacklist CROSS_PROFILE_INTENT_RESOLUTION_STRATEGY_DEFAULT:I = 0x0

.field public static final blacklist CROSS_PROFILE_INTENT_RESOLUTION_STRATEGY_NO_FILTERING:I = 0x1

.field private static final blacklist INDEX_ALLOW_STOPPING_USER_WITH_DELAYED_LOCKING:I = 0x10

.field private static final blacklist INDEX_ALWAYS_VISIBLE:I = 0xb

.field private static final blacklist INDEX_AUTH_ALWAYS_REQUIRED_TO_DISABLE_QUIET_MODE:I = 0xd

.field private static final blacklist INDEX_CREDENTIAL_SHAREABLE_WITH_PARENT:I = 0x9

.field private static final blacklist INDEX_CROSS_PROFILE_CONTENT_SHARING_STRATEGY:I = 0xf

.field private static final blacklist INDEX_CROSS_PROFILE_INTENT_FILTER_ACCESS_CONTROL:I = 0x6

.field private static final blacklist INDEX_CROSS_PROFILE_INTENT_RESOLUTION_STRATEGY:I = 0x7

.field private static final blacklist INDEX_DELETE_APP_WITH_PARENT:I = 0xa

.field private static final blacklist INDEX_INHERIT_DEVICE_POLICY:I = 0x3

.field private static final blacklist INDEX_ITEMS_RESTRICTED_ON_HOME_SCREEN:I = 0x12

.field private static final blacklist INDEX_MEDIA_SHARED_WITH_PARENT:I = 0x8

.field private static final blacklist INDEX_PROFILE_API_VISIBILITY:I = 0x11

.field private static final blacklist INDEX_SHOW_IN_LAUNCHER:I = 0x0

.field private static final blacklist INDEX_SHOW_IN_QUIET_MODE:I = 0xc

.field private static final blacklist INDEX_SHOW_IN_SETTINGS:I = 0x2

.field private static final blacklist INDEX_SHOW_IN_SHARING_SURFACES:I = 0xe

.field private static final blacklist INDEX_START_WITH_PARENT:I = 0x1

.field private static final blacklist INDEX_UPDATE_CROSS_PROFILE_INTENT_FILTERS_ON_OTA:I = 0x5

.field private static final blacklist INDEX_USE_PARENTS_CONTACTS:I = 0x4

.field public static final blacklist INHERIT_DEVICE_POLICY_FROM_PARENT:I = 0x1

.field public static final blacklist INHERIT_DEVICE_POLICY_NO:I = 0x0

.field private static final blacklist ITEMS_RESTRICTED_ON_HOME_SCREEN:Ljava/lang/String; = "itemsRestrictedOnHomeScreen"

.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field public static final blacklist PROFILE_API_VISIBILITY_HIDDEN:I = 0x1

.field public static final blacklist PROFILE_API_VISIBILITY_UNKNOWN:I = -0x1

.field public static final blacklist PROFILE_API_VISIBILITY_VISIBLE:I = 0x0

.field public static final blacklist SHOW_IN_LAUNCHER_NO:I = 0x2

.field public static final blacklist SHOW_IN_LAUNCHER_SEPARATE:I = 0x1

.field public static final blacklist SHOW_IN_LAUNCHER_UNKNOWN:I = -0x1

.field public static final blacklist SHOW_IN_LAUNCHER_WITH_PARENT:I = 0x0

.field public static final whitelist SHOW_IN_QUIET_MODE_DEFAULT:I = 0x2

.field public static final whitelist SHOW_IN_QUIET_MODE_HIDDEN:I = 0x1

.field public static final whitelist SHOW_IN_QUIET_MODE_PAUSED:I = 0x0

.field public static final whitelist SHOW_IN_QUIET_MODE_UNKNOWN:I = -0x1

.field public static final blacklist SHOW_IN_SETTINGS_NO:I = 0x2

.field public static final blacklist SHOW_IN_SETTINGS_SEPARATE:I = 0x1

.field public static final blacklist SHOW_IN_SETTINGS_UNKNOWN:I = -0x1

.field public static final blacklist SHOW_IN_SETTINGS_WITH_PARENT:I = 0x0

.field public static final whitelist SHOW_IN_SHARING_SURFACES_NO:I = 0x2

.field public static final whitelist SHOW_IN_SHARING_SURFACES_SEPARATE:I = 0x1

.field public static final whitelist SHOW_IN_SHARING_SURFACES_UNKNOWN:I = -0x1

.field public static final whitelist SHOW_IN_SHARING_SURFACES_WITH_PARENT:I


# instance fields
.field private blacklist mAllowStoppingUserWithDelayedLocking:Z

.field private blacklist mAlwaysVisible:Z

.field private blacklist mAuthAlwaysRequiredToDisableQuietMode:Z

.field private blacklist mCredentialShareableWithParent:Z

.field private blacklist mCrossProfileContentSharingStrategy:I

.field private blacklist mCrossProfileIntentFilterAccessControl:I

.field private blacklist mCrossProfileIntentResolutionStrategy:I

.field private final blacklist mDefaultProperties:Landroid/content/pm/UserProperties;

.field private blacklist mDeleteAppWithParent:Z

.field private blacklist mInheritDevicePolicy:I

.field private blacklist mItemsRestrictedOnHomeScreen:Z

.field private blacklist mMediaSharedWithParent:Z

.field private blacklist mProfileApiVisibility:I

.field private blacklist mPropertiesPresent:J

.field private blacklist mShowInLauncher:I

.field private blacklist mShowInQuietMode:I

.field private blacklist mShowInSettings:I

.field private blacklist mShowInSharingSurfaces:I

.field private blacklist mStartWithParent:Z

.field private blacklist mUpdateCrossProfileIntentFiltersOnOTA:Z

.field private blacklist mUseParentsContacts:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/content/pm/UserProperties;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/UserProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Landroid/content/pm/UserProperties$1;

    invoke-direct {v0}, Landroid/content/pm/UserProperties$1;-><init>()V

    sput-object v0, Landroid/content/pm/UserProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IZIIIIZZIIZZZZZZIIZ)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    invoke-virtual/range {p0 .. p1}, Landroid/content/pm/UserProperties;->setShowInLauncher(I)V

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/pm/UserProperties;->setStartWithParent(Z)V

    move/from16 v2, p3

    invoke-virtual {v0, v2}, Landroid/content/pm/UserProperties;->setShowInSettings(I)V

    move/from16 v3, p4

    invoke-virtual {v0, v3}, Landroid/content/pm/UserProperties;->setShowInQuietMode(I)V

    move/from16 v4, p5

    invoke-virtual {v0, v4}, Landroid/content/pm/UserProperties;->setShowInSharingSurfaces(I)V

    move/from16 v5, p6

    invoke-virtual {v0, v5}, Landroid/content/pm/UserProperties;->setInheritDevicePolicy(I)V

    move/from16 v6, p7

    invoke-virtual {v0, v6}, Landroid/content/pm/UserProperties;->setUseParentsContacts(Z)V

    move/from16 v7, p8

    invoke-virtual {v0, v7}, Landroid/content/pm/UserProperties;->setUpdateCrossProfileIntentFiltersOnOTA(Z)V

    move/from16 v8, p9

    invoke-virtual {v0, v8}, Landroid/content/pm/UserProperties;->setCrossProfileIntentFilterAccessControl(I)V

    move/from16 v9, p10

    invoke-virtual {v0, v9}, Landroid/content/pm/UserProperties;->setCrossProfileIntentResolutionStrategy(I)V

    move/from16 v10, p11

    invoke-virtual {v0, v10}, Landroid/content/pm/UserProperties;->setMediaSharedWithParent(Z)V

    move/from16 v11, p12

    invoke-virtual {v0, v11}, Landroid/content/pm/UserProperties;->setCredentialShareableWithParent(Z)V

    move/from16 v12, p13

    invoke-virtual {v0, v12}, Landroid/content/pm/UserProperties;->setAuthAlwaysRequiredToDisableQuietMode(Z)V

    move/from16 v13, p14

    invoke-virtual {v0, v13}, Landroid/content/pm/UserProperties;->setAllowStoppingUserWithDelayedLocking(Z)V

    move/from16 v14, p15

    invoke-virtual {v0, v14}, Landroid/content/pm/UserProperties;->setDeleteAppWithParent(Z)V

    move/from16 v15, p16

    invoke-virtual {v0, v15}, Landroid/content/pm/UserProperties;->setAlwaysVisible(Z)V

    move/from16 v1, p17

    invoke-virtual {v0, v1}, Landroid/content/pm/UserProperties;->setCrossProfileContentSharingStrategy(I)V

    move/from16 v1, p18

    invoke-virtual {v0, v1}, Landroid/content/pm/UserProperties;->setProfileApiVisibility(I)V

    move/from16 v1, p19

    invoke-virtual {v0, v1}, Landroid/content/pm/UserProperties;->setItemsRestrictedOnHomeScreen(Z)V

    return-void
.end method

.method synthetic constructor blacklist <init>(IZIIIIZZIIZZZZZZIIZLandroid/content/pm/UserProperties-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p19}, Landroid/content/pm/UserProperties;-><init>(IZIIIIZZIIZZZZZZIIZ)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/UserProperties;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    iput-object p1, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iput-wide v0, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/UserProperties;ZZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    iget-object v0, p1, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getStartWithParent()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setStartWithParent(Z)V

    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getInheritDevicePolicy()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setInheritDevicePolicy(I)V

    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getUpdateCrossProfileIntentFiltersOnOTA()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setUpdateCrossProfileIntentFiltersOnOTA(Z)V

    nop

    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getCrossProfileIntentFilterAccessControl()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setCrossProfileIntentFilterAccessControl(I)V

    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getCrossProfileIntentResolutionStrategy()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setCrossProfileIntentResolutionStrategy(I)V

    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getDeleteAppWithParent()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setDeleteAppWithParent(Z)V

    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getAlwaysVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setAlwaysVisible(Z)V

    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getAllowStoppingUserWithDelayedLocking()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setAllowStoppingUserWithDelayedLocking(Z)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getShowInSettings()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setShowInSettings(I)V

    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getUseParentsContacts()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setUseParentsContacts(Z)V

    nop

    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->isAuthAlwaysRequiredToDisableQuietMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setAuthAlwaysRequiredToDisableQuietMode(Z)V

    :cond_1
    nop

    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getShowInLauncher()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setShowInLauncher(I)V

    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->isMediaSharedWithParent()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setMediaSharedWithParent(Z)V

    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->isCredentialShareableWithParent()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setCredentialShareableWithParent(Z)V

    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getShowInQuietMode()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setShowInQuietMode(I)V

    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getShowInSharingSurfaces()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setShowInSharingSurfaces(I)V

    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getCrossProfileContentSharingStrategy()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setCrossProfileContentSharingStrategy(I)V

    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getProfileApiVisibility()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setProfileApiVisibility(I)V

    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->areItemsRestrictedOnHomeScreen()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setItemsRestrictedOnHomeScreen(Z)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to copy a non-original UserProperties."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserProperties;->mShowInLauncher:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/UserProperties;->mStartWithParent:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserProperties;->mShowInSettings:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserProperties;->mShowInQuietMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserProperties;->mShowInSharingSurfaces:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserProperties;->mInheritDevicePolicy:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/UserProperties;->mUseParentsContacts:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/UserProperties;->mUpdateCrossProfileIntentFiltersOnOTA:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserProperties;->mCrossProfileIntentFilterAccessControl:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserProperties;->mCrossProfileIntentResolutionStrategy:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/UserProperties;->mMediaSharedWithParent:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/UserProperties;->mCredentialShareableWithParent:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/UserProperties;->mAuthAlwaysRequiredToDisableQuietMode:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/UserProperties;->mAllowStoppingUserWithDelayedLocking:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/UserProperties;->mDeleteAppWithParent:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/UserProperties;->mAlwaysVisible:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserProperties;->mCrossProfileContentSharingStrategy:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserProperties;->mProfileApiVisibility:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/UserProperties;->mItemsRestrictedOnHomeScreen:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/UserProperties-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/UserProperties;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/content/pm/UserProperties;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-direct {p0, p2}, Landroid/content/pm/UserProperties;-><init>(Landroid/content/pm/UserProperties;)V

    invoke-virtual {p0, p1}, Landroid/content/pm/UserProperties;->updateFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V

    return-void
.end method

.method private blacklist isPresent(J)Z
    .locals 5

    iget-wide v0, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    const-wide/16 v2, 0x1

    long-to-int v4, p1

    shl-long/2addr v2, v4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist setPresent(J)V
    .locals 5

    iget-wide v0, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    const-wide/16 v2, 0x1

    long-to-int v4, p1

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    return-void
.end method


# virtual methods
.method public blacklist areItemsRestrictedOnHomeScreen()Z
    .locals 2

    const-wide/16 v0, 0x12

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mItemsRestrictedOnHomeScreen:Z

    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget-boolean v0, v0, Landroid/content/pm/UserProperties;->mItemsRestrictedOnHomeScreen:Z

    return v0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query mItemsRestrictedOnHomeScreen"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAllowStoppingUserWithDelayedLocking()Z
    .locals 2

    const-wide/16 v0, 0x10

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mAllowStoppingUserWithDelayedLocking:Z

    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget-boolean v0, v0, Landroid/content/pm/UserProperties;->mAllowStoppingUserWithDelayedLocking:Z

    return v0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query allowStoppingUserWithDelayedLocking"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getAlwaysVisible()Z
    .locals 2

    const-wide/16 v0, 0xb

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mAlwaysVisible:Z

    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget-boolean v0, v0, Landroid/content/pm/UserProperties;->mAlwaysVisible:Z

    return v0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query alwaysVisible"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getCrossProfileContentSharingStrategy()I
    .locals 2

    const-wide/16 v0, 0xf

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/content/pm/UserProperties;->mCrossProfileContentSharingStrategy:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget v0, v0, Landroid/content/pm/UserProperties;->mCrossProfileContentSharingStrategy:I

    return v0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query crossProfileContentSharingStrategy"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getCrossProfileIntentFilterAccessControl()I
    .locals 2

    const-wide/16 v0, 0x6

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/content/pm/UserProperties;->mCrossProfileIntentFilterAccessControl:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget v0, v0, Landroid/content/pm/UserProperties;->mCrossProfileIntentFilterAccessControl:I

    return v0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query crossProfileIntentFilterAccessControl"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getCrossProfileIntentResolutionStrategy()I
    .locals 2

    const-wide/16 v0, 0x7

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/content/pm/UserProperties;->mCrossProfileIntentResolutionStrategy:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget v0, v0, Landroid/content/pm/UserProperties;->mCrossProfileIntentResolutionStrategy:I

    return v0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query crossProfileIntentResolutionStrategy"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getDeleteAppWithParent()Z
    .locals 2

    const-wide/16 v0, 0xa

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mDeleteAppWithParent:Z

    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget-boolean v0, v0, Landroid/content/pm/UserProperties;->mDeleteAppWithParent:Z

    return v0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query deleteAppWithParent"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getInheritDevicePolicy()I
    .locals 2

    const-wide/16 v0, 0x3

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/content/pm/UserProperties;->mInheritDevicePolicy:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget v0, v0, Landroid/content/pm/UserProperties;->mInheritDevicePolicy:I

    return v0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query inheritDevicePolicy"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getProfileApiVisibility()I
    .locals 2

    const-wide/16 v0, 0x11

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/content/pm/UserProperties;->mProfileApiVisibility:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget v0, v0, Landroid/content/pm/UserProperties;->mProfileApiVisibility:I

    return v0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query profileApiVisibility"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getPropertiesPresent()J
    .locals 2

    iget-wide v0, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    return-wide v0
.end method

.method public blacklist getShowInLauncher()I
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/content/pm/UserProperties;->mShowInLauncher:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget v0, v0, Landroid/content/pm/UserProperties;->mShowInLauncher:I

    return v0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query showInLauncher"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getShowInQuietMode()I
    .locals 2

    const-wide/16 v0, 0xc

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/content/pm/UserProperties;->mShowInQuietMode:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget v0, v0, Landroid/content/pm/UserProperties;->mShowInQuietMode:I

    return v0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query ShowInQuietMode"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getShowInSettings()I
    .locals 2

    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/content/pm/UserProperties;->mShowInSettings:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget v0, v0, Landroid/content/pm/UserProperties;->mShowInSettings:I

    return v0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query mShowInSettings"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getShowInSharingSurfaces()I
    .locals 2

    const-wide/16 v0, 0xe

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/content/pm/UserProperties;->mShowInSharingSurfaces:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget v0, v0, Landroid/content/pm/UserProperties;->mShowInSharingSurfaces:I

    return v0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query ShowInSharingSurfaces"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getStartWithParent()Z
    .locals 2

    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mStartWithParent:Z

    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget-boolean v0, v0, Landroid/content/pm/UserProperties;->mStartWithParent:Z

    return v0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query startWithParent"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getUpdateCrossProfileIntentFiltersOnOTA()Z
    .locals 2

    const-wide/16 v0, 0x5

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mUpdateCrossProfileIntentFiltersOnOTA:Z

    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget-boolean v0, v0, Landroid/content/pm/UserProperties;->mUpdateCrossProfileIntentFiltersOnOTA:Z

    return v0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query updateCrossProfileIntentFiltersOnOTA"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getUseParentsContacts()Z
    .locals 2

    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mUseParentsContacts:Z

    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget-boolean v0, v0, Landroid/content/pm/UserProperties;->mUseParentsContacts:Z

    return v0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query useParentsContacts"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isAuthAlwaysRequiredToDisableQuietMode()Z
    .locals 2

    const-wide/16 v0, 0xd

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mAuthAlwaysRequiredToDisableQuietMode:Z

    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget-boolean v0, v0, Landroid/content/pm/UserProperties;->mAuthAlwaysRequiredToDisableQuietMode:Z

    return v0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query authAlwaysRequiredToDisableQuietMode"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isCredentialShareableWithParent()Z
    .locals 2

    const-wide/16 v0, 0x9

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mCredentialShareableWithParent:Z

    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget-boolean v0, v0, Landroid/content/pm/UserProperties;->mCredentialShareableWithParent:Z

    return v0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query credentialShareableWithParent"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isMediaSharedWithParent()Z
    .locals 2

    const-wide/16 v0, 0x8

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mMediaSharedWithParent:Z

    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget-boolean v0, v0, Landroid/content/pm/UserProperties;->mMediaSharedWithParent:Z

    return v0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query mediaSharedWithParent"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist println(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UserProperties:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mPropertiesPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mShowInLauncher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getShowInLauncher()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mStartWithParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getStartWithParent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mShowInSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getShowInSettings()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mInheritDevicePolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getInheritDevicePolicy()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mUseParentsContacts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getUseParentsContacts()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mUpdateCrossProfileIntentFiltersOnOTA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getUpdateCrossProfileIntentFiltersOnOTA()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mCrossProfileIntentFilterAccessControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getCrossProfileIntentFilterAccessControl()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mCrossProfileIntentResolutionStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getCrossProfileIntentResolutionStrategy()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mMediaSharedWithParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->isMediaSharedWithParent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mCredentialShareableWithParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->isCredentialShareableWithParent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mAuthAlwaysRequiredToDisableQuietMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->isAuthAlwaysRequiredToDisableQuietMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mAllowStoppingUserWithDelayedLocking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getAllowStoppingUserWithDelayedLocking()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mDeleteAppWithParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getDeleteAppWithParent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mAlwaysVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getAlwaysVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mCrossProfileContentSharingStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getCrossProfileContentSharingStrategy()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mProfileApiVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getProfileApiVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mItemsRestrictedOnHomeScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->areItemsRestrictedOnHomeScreen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setAllowStoppingUserWithDelayedLocking(Z)V
    .locals 2

    iput-boolean p1, p0, Landroid/content/pm/UserProperties;->mAllowStoppingUserWithDelayedLocking:Z

    const-wide/16 v0, 0x10

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    return-void
.end method

.method public blacklist setAlwaysVisible(Z)V
    .locals 2

    iput-boolean p1, p0, Landroid/content/pm/UserProperties;->mAlwaysVisible:Z

    const-wide/16 v0, 0xb

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    return-void
.end method

.method public blacklist setAuthAlwaysRequiredToDisableQuietMode(Z)V
    .locals 2

    iput-boolean p1, p0, Landroid/content/pm/UserProperties;->mAuthAlwaysRequiredToDisableQuietMode:Z

    const-wide/16 v0, 0xd

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    return-void
.end method

.method public blacklist setCredentialShareableWithParent(Z)V
    .locals 2

    iput-boolean p1, p0, Landroid/content/pm/UserProperties;->mCredentialShareableWithParent:Z

    const-wide/16 v0, 0x9

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    return-void
.end method

.method public blacklist setCrossProfileContentSharingStrategy(I)V
    .locals 2

    iput p1, p0, Landroid/content/pm/UserProperties;->mCrossProfileContentSharingStrategy:I

    const-wide/16 v0, 0xf

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    return-void
.end method

.method public blacklist setCrossProfileIntentFilterAccessControl(I)V
    .locals 2

    iput p1, p0, Landroid/content/pm/UserProperties;->mCrossProfileIntentFilterAccessControl:I

    const-wide/16 v0, 0x6

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    return-void
.end method

.method public blacklist setCrossProfileIntentResolutionStrategy(I)V
    .locals 2

    iput p1, p0, Landroid/content/pm/UserProperties;->mCrossProfileIntentResolutionStrategy:I

    const-wide/16 v0, 0x7

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    return-void
.end method

.method public blacklist setDeleteAppWithParent(Z)V
    .locals 2

    iput-boolean p1, p0, Landroid/content/pm/UserProperties;->mDeleteAppWithParent:Z

    const-wide/16 v0, 0xa

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    return-void
.end method

.method public blacklist setInheritDevicePolicy(I)V
    .locals 2

    iput p1, p0, Landroid/content/pm/UserProperties;->mInheritDevicePolicy:I

    const-wide/16 v0, 0x3

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    return-void
.end method

.method public blacklist setItemsRestrictedOnHomeScreen(Z)V
    .locals 2

    iput-boolean p1, p0, Landroid/content/pm/UserProperties;->mItemsRestrictedOnHomeScreen:Z

    const-wide/16 v0, 0x12

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    return-void
.end method

.method public blacklist setMediaSharedWithParent(Z)V
    .locals 2

    iput-boolean p1, p0, Landroid/content/pm/UserProperties;->mMediaSharedWithParent:Z

    const-wide/16 v0, 0x8

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    return-void
.end method

.method public blacklist setProfileApiVisibility(I)V
    .locals 2

    iput p1, p0, Landroid/content/pm/UserProperties;->mProfileApiVisibility:I

    const-wide/16 v0, 0x11

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    return-void
.end method

.method public blacklist setShowInLauncher(I)V
    .locals 2

    iput p1, p0, Landroid/content/pm/UserProperties;->mShowInLauncher:I

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    return-void
.end method

.method public blacklist setShowInQuietMode(I)V
    .locals 2

    iput p1, p0, Landroid/content/pm/UserProperties;->mShowInQuietMode:I

    const-wide/16 v0, 0xc

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    return-void
.end method

.method public blacklist setShowInSettings(I)V
    .locals 2

    iput p1, p0, Landroid/content/pm/UserProperties;->mShowInSettings:I

    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    return-void
.end method

.method public blacklist setShowInSharingSurfaces(I)V
    .locals 2

    iput p1, p0, Landroid/content/pm/UserProperties;->mShowInSharingSurfaces:I

    const-wide/16 v0, 0xe

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    return-void
.end method

.method public blacklist setStartWithParent(Z)V
    .locals 2

    iput-boolean p1, p0, Landroid/content/pm/UserProperties;->mStartWithParent:Z

    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    return-void
.end method

.method public blacklist setUpdateCrossProfileIntentFiltersOnOTA(Z)V
    .locals 2

    iput-boolean p1, p0, Landroid/content/pm/UserProperties;->mUpdateCrossProfileIntentFiltersOnOTA:Z

    const-wide/16 v0, 0x5

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    return-void
.end method

.method public blacklist setUseParentsContacts(Z)V
    .locals 2

    iput-boolean p1, p0, Landroid/content/pm/UserProperties;->mUseParentsContacts:Z

    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserProperties{mPropertiesPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShowInLauncher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getShowInLauncher()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStartWithParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getStartWithParent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShowInSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getShowInSettings()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInheritDevicePolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getInheritDevicePolicy()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUseParentsContacts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getUseParentsContacts()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUpdateCrossProfileIntentFiltersOnOTA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getUpdateCrossProfileIntentFiltersOnOTA()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCrossProfileIntentFilterAccessControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getCrossProfileIntentFilterAccessControl()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCrossProfileIntentResolutionStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getCrossProfileIntentResolutionStrategy()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMediaSharedWithParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->isMediaSharedWithParent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCredentialShareableWithParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->isCredentialShareableWithParent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAuthAlwaysRequiredToDisableQuietMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->isAuthAlwaysRequiredToDisableQuietMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAllowStoppingUserWithDelayedLocking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getAllowStoppingUserWithDelayedLocking()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeleteAppWithParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getDeleteAppWithParent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAlwaysVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getAlwaysVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCrossProfileContentSharingStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getCrossProfileContentSharingStrategy()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProfileApiVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getProfileApiVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mItemsRestrictedOnHomeScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->areItemsRestrictedOnHomeScreen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v3, "crossProfileIntentResolutionStrategy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    goto/16 :goto_2

    :sswitch_1
    const-string/jumbo v3, "showInQuietMode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto/16 :goto_2

    :sswitch_2
    const-string/jumbo v3, "itemsRestrictedOnHomeScreen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x12

    goto/16 :goto_2

    :sswitch_3
    const-string/jumbo v3, "showInSharingSurfaces"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto/16 :goto_2

    :sswitch_4
    const-string v3, "authAlwaysRequiredToDisableQuietMode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xc

    goto/16 :goto_2

    :sswitch_5
    const-string/jumbo v3, "useParentsContacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto/16 :goto_2

    :sswitch_6
    const-string v3, "inheritDevicePolicy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto/16 :goto_2

    :sswitch_7
    const-string v3, "credentialShareableWithParent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xb

    goto/16 :goto_2

    :sswitch_8
    const-string/jumbo v3, "showInLauncher"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto/16 :goto_2

    :sswitch_9
    const-string/jumbo v3, "startWithParent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto/16 :goto_2

    :sswitch_a
    const-string v3, "allowStoppingUserWithDelayedLocking"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xd

    goto :goto_2

    :sswitch_b
    const-string/jumbo v3, "mediaSharedWithParent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    goto :goto_2

    :sswitch_c
    const-string v3, "crossProfileIntentFilterAccessControl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto :goto_2

    :sswitch_d
    const-string/jumbo v3, "updateCrossProfileIntentFiltersOnOTA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto :goto_2

    :sswitch_e
    const-string v3, "deleteAppWithParent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xe

    goto :goto_2

    :sswitch_f
    const-string/jumbo v3, "profileApiVisibility"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x11

    goto :goto_2

    :sswitch_10
    const-string v3, "alwaysVisible"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xf

    goto :goto_2

    :sswitch_11
    const-string/jumbo v3, "showInSettings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_12
    const-string v3, "crossProfileContentSharingStrategy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x10

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    sget-object v3, Landroid/content/pm/UserProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping unknown property "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_0
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setItemsRestrictedOnHomeScreen(Z)V

    goto/16 :goto_3

    :pswitch_1
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setProfileApiVisibility(I)V

    goto/16 :goto_3

    :pswitch_2
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setCrossProfileContentSharingStrategy(I)V

    goto/16 :goto_3

    :pswitch_3
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setAlwaysVisible(Z)V

    goto/16 :goto_3

    :pswitch_4
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setDeleteAppWithParent(Z)V

    goto/16 :goto_3

    :pswitch_5
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setAllowStoppingUserWithDelayedLocking(Z)V

    goto/16 :goto_3

    :pswitch_6
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setAuthAlwaysRequiredToDisableQuietMode(Z)V

    goto :goto_3

    :pswitch_7
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setCredentialShareableWithParent(Z)V

    goto :goto_3

    :pswitch_8
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setMediaSharedWithParent(Z)V

    goto :goto_3

    :pswitch_9
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setCrossProfileIntentResolutionStrategy(I)V

    goto :goto_3

    :pswitch_a
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setCrossProfileIntentFilterAccessControl(I)V

    goto :goto_3

    :pswitch_b
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setUpdateCrossProfileIntentFiltersOnOTA(Z)V

    goto :goto_3

    :pswitch_c
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setUseParentsContacts(Z)V

    goto :goto_3

    :pswitch_d
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setInheritDevicePolicy(I)V

    goto :goto_3

    :pswitch_e
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setShowInSharingSurfaces(I)V

    goto :goto_3

    :pswitch_f
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setShowInQuietMode(I)V

    goto :goto_3

    :pswitch_10
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setShowInSettings(I)V

    goto :goto_3

    :pswitch_11
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setStartWithParent(Z)V

    goto :goto_3

    :pswitch_12
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setShowInLauncher(I)V

    nop

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x67c160a1 -> :sswitch_12
        -0x6017e8bb -> :sswitch_11
        -0x5dbba89d -> :sswitch_10
        -0x412b3e5d -> :sswitch_f
        -0x3e0e2dda -> :sswitch_e
        -0x37ba4d70 -> :sswitch_d
        -0x323422c4 -> :sswitch_c
        -0x25610ca7 -> :sswitch_b
        -0x20ec981d -> :sswitch_a
        -0x12e678ee -> :sswitch_9
        -0x97b953e -> :sswitch_8
        0x198cd9d2 -> :sswitch_7
        0x1d3e5bc3 -> :sswitch_6
        0x22e30bf5 -> :sswitch_5
        0x378721c0 -> :sswitch_4
        0x41b49d00 -> :sswitch_3
        0x4d618d45 -> :sswitch_2
        0x53b3a315 -> :sswitch_1
        0x7c24f264 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/content/pm/UserProperties;->mShowInLauncher:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mStartWithParent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/content/pm/UserProperties;->mShowInSettings:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/UserProperties;->mShowInQuietMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/UserProperties;->mShowInSharingSurfaces:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/UserProperties;->mInheritDevicePolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mUseParentsContacts:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mUpdateCrossProfileIntentFiltersOnOTA:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/content/pm/UserProperties;->mCrossProfileIntentFilterAccessControl:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/UserProperties;->mCrossProfileIntentResolutionStrategy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mMediaSharedWithParent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mCredentialShareableWithParent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mAuthAlwaysRequiredToDisableQuietMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mAllowStoppingUserWithDelayedLocking:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mDeleteAppWithParent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mAlwaysVisible:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/content/pm/UserProperties;->mCrossProfileContentSharingStrategy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/UserProperties;->mProfileApiVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mItemsRestrictedOnHomeScreen:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method

.method public blacklist writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "showInLauncher"

    iget v2, p0, Landroid/content/pm/UserProperties;->mShowInLauncher:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    const-wide/16 v2, 0x1

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "startWithParent"

    iget-boolean v2, p0, Landroid/content/pm/UserProperties;->mStartWithParent:Z

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    const-wide/16 v2, 0x2

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "showInSettings"

    iget v2, p0, Landroid/content/pm/UserProperties;->mShowInSettings:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    const-wide/16 v2, 0xc

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "showInQuietMode"

    iget v2, p0, Landroid/content/pm/UserProperties;->mShowInQuietMode:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    const-wide/16 v2, 0xe

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "showInSharingSurfaces"

    iget v2, p0, Landroid/content/pm/UserProperties;->mShowInSharingSurfaces:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    const-wide/16 v2, 0x3

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "inheritDevicePolicy"

    iget v2, p0, Landroid/content/pm/UserProperties;->mInheritDevicePolicy:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    const-wide/16 v2, 0x4

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "useParentsContacts"

    iget-boolean v2, p0, Landroid/content/pm/UserProperties;->mUseParentsContacts:Z

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    const-wide/16 v2, 0x5

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "updateCrossProfileIntentFiltersOnOTA"

    iget-boolean v2, p0, Landroid/content/pm/UserProperties;->mUpdateCrossProfileIntentFiltersOnOTA:Z

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    const-wide/16 v2, 0x6

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "crossProfileIntentFilterAccessControl"

    iget v2, p0, Landroid/content/pm/UserProperties;->mCrossProfileIntentFilterAccessControl:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    const-wide/16 v2, 0x7

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "crossProfileIntentResolutionStrategy"

    iget v2, p0, Landroid/content/pm/UserProperties;->mCrossProfileIntentResolutionStrategy:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9
    const-wide/16 v2, 0x8

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "mediaSharedWithParent"

    iget-boolean v2, p0, Landroid/content/pm/UserProperties;->mMediaSharedWithParent:Z

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a
    const-wide/16 v2, 0x9

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "credentialShareableWithParent"

    iget-boolean v2, p0, Landroid/content/pm/UserProperties;->mCredentialShareableWithParent:Z

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b
    const-wide/16 v2, 0xd

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "authAlwaysRequiredToDisableQuietMode"

    iget-boolean v2, p0, Landroid/content/pm/UserProperties;->mAuthAlwaysRequiredToDisableQuietMode:Z

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c
    const-wide/16 v2, 0x10

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "allowStoppingUserWithDelayedLocking"

    iget-boolean v2, p0, Landroid/content/pm/UserProperties;->mAllowStoppingUserWithDelayedLocking:Z

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_d
    const-wide/16 v2, 0xa

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "deleteAppWithParent"

    iget-boolean v2, p0, Landroid/content/pm/UserProperties;->mDeleteAppWithParent:Z

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_e
    const-wide/16 v2, 0xb

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "alwaysVisible"

    iget-boolean v2, p0, Landroid/content/pm/UserProperties;->mAlwaysVisible:Z

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_f
    const-wide/16 v2, 0xf

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "crossProfileContentSharingStrategy"

    iget v2, p0, Landroid/content/pm/UserProperties;->mCrossProfileContentSharingStrategy:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_10
    const-wide/16 v2, 0x11

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "profileApiVisibility"

    iget v2, p0, Landroid/content/pm/UserProperties;->mProfileApiVisibility:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_11
    const-wide/16 v2, 0x12

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "itemsRestrictedOnHomeScreen"

    iget-boolean v2, p0, Landroid/content/pm/UserProperties;->mItemsRestrictedOnHomeScreen:Z

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_12
    return-void
.end method
