.class public final Landroid/content/pm/UserProperties$Builder;
.super Ljava/lang/Object;
.source "UserProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/UserProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAllowStoppingUserWithDelayedLocking:Z

.field private blacklist mAlwaysVisible:Z

.field private blacklist mAuthAlwaysRequiredToDisableQuietMode:Z

.field private blacklist mCredentialShareableWithParent:Z

.field private blacklist mCrossProfileContentSharingStrategy:I

.field private blacklist mCrossProfileIntentFilterAccessControl:I

.field private blacklist mCrossProfileIntentResolutionStrategy:I

.field private blacklist mDeleteAppWithParent:Z

.field private blacklist mInheritDevicePolicy:I

.field private blacklist mItemsRestrictedOnHomeScreen:Z

.field private blacklist mMediaSharedWithParent:Z

.field private blacklist mProfileApiVisibility:I

.field private blacklist mShowInLauncher:I

.field private blacklist mShowInQuietMode:I

.field private blacklist mShowInSettings:I

.field private blacklist mShowInSharingSurfaces:I

.field private blacklist mStartWithParent:Z

.field private blacklist mUpdateCrossProfileIntentFiltersOnOTA:Z

.field private blacklist mUseParentsContacts:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/UserProperties$Builder;->mShowInLauncher:I

    iput-boolean v0, p0, Landroid/content/pm/UserProperties$Builder;->mStartWithParent:Z

    iput v0, p0, Landroid/content/pm/UserProperties$Builder;->mShowInSettings:I

    iput v0, p0, Landroid/content/pm/UserProperties$Builder;->mShowInQuietMode:I

    const/4 v1, 0x1

    iput v1, p0, Landroid/content/pm/UserProperties$Builder;->mShowInSharingSurfaces:I

    iput v0, p0, Landroid/content/pm/UserProperties$Builder;->mInheritDevicePolicy:I

    iput-boolean v0, p0, Landroid/content/pm/UserProperties$Builder;->mUseParentsContacts:Z

    iput-boolean v0, p0, Landroid/content/pm/UserProperties$Builder;->mUpdateCrossProfileIntentFiltersOnOTA:Z

    iput v0, p0, Landroid/content/pm/UserProperties$Builder;->mCrossProfileIntentFilterAccessControl:I

    iput v0, p0, Landroid/content/pm/UserProperties$Builder;->mCrossProfileIntentResolutionStrategy:I

    iput-boolean v0, p0, Landroid/content/pm/UserProperties$Builder;->mMediaSharedWithParent:Z

    iput-boolean v0, p0, Landroid/content/pm/UserProperties$Builder;->mCredentialShareableWithParent:Z

    iput-boolean v0, p0, Landroid/content/pm/UserProperties$Builder;->mAuthAlwaysRequiredToDisableQuietMode:Z

    iput-boolean v0, p0, Landroid/content/pm/UserProperties$Builder;->mAllowStoppingUserWithDelayedLocking:Z

    iput-boolean v0, p0, Landroid/content/pm/UserProperties$Builder;->mDeleteAppWithParent:Z

    iput-boolean v0, p0, Landroid/content/pm/UserProperties$Builder;->mAlwaysVisible:Z

    iput v0, p0, Landroid/content/pm/UserProperties$Builder;->mCrossProfileContentSharingStrategy:I

    iput v0, p0, Landroid/content/pm/UserProperties$Builder;->mProfileApiVisibility:I

    iput-boolean v0, p0, Landroid/content/pm/UserProperties$Builder;->mItemsRestrictedOnHomeScreen:Z

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/content/pm/UserProperties;
    .locals 24

    move-object/from16 v0, p0

    new-instance v22, Landroid/content/pm/UserProperties;

    move-object/from16 v1, v22

    iget v2, v0, Landroid/content/pm/UserProperties$Builder;->mShowInLauncher:I

    iget-boolean v3, v0, Landroid/content/pm/UserProperties$Builder;->mStartWithParent:Z

    iget v4, v0, Landroid/content/pm/UserProperties$Builder;->mShowInSettings:I

    iget v5, v0, Landroid/content/pm/UserProperties$Builder;->mShowInQuietMode:I

    iget v6, v0, Landroid/content/pm/UserProperties$Builder;->mShowInSharingSurfaces:I

    iget v7, v0, Landroid/content/pm/UserProperties$Builder;->mInheritDevicePolicy:I

    iget-boolean v8, v0, Landroid/content/pm/UserProperties$Builder;->mUseParentsContacts:Z

    iget-boolean v9, v0, Landroid/content/pm/UserProperties$Builder;->mUpdateCrossProfileIntentFiltersOnOTA:Z

    iget v10, v0, Landroid/content/pm/UserProperties$Builder;->mCrossProfileIntentFilterAccessControl:I

    iget v11, v0, Landroid/content/pm/UserProperties$Builder;->mCrossProfileIntentResolutionStrategy:I

    iget-boolean v12, v0, Landroid/content/pm/UserProperties$Builder;->mMediaSharedWithParent:Z

    iget-boolean v13, v0, Landroid/content/pm/UserProperties$Builder;->mCredentialShareableWithParent:Z

    iget-boolean v14, v0, Landroid/content/pm/UserProperties$Builder;->mAuthAlwaysRequiredToDisableQuietMode:Z

    iget-boolean v15, v0, Landroid/content/pm/UserProperties$Builder;->mAllowStoppingUserWithDelayedLocking:Z

    move-object/from16 v23, v1

    iget-boolean v1, v0, Landroid/content/pm/UserProperties$Builder;->mDeleteAppWithParent:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Landroid/content/pm/UserProperties$Builder;->mAlwaysVisible:Z

    move/from16 v17, v1

    iget v1, v0, Landroid/content/pm/UserProperties$Builder;->mCrossProfileContentSharingStrategy:I

    move/from16 v18, v1

    iget v1, v0, Landroid/content/pm/UserProperties$Builder;->mProfileApiVisibility:I

    move/from16 v19, v1

    iget-boolean v1, v0, Landroid/content/pm/UserProperties$Builder;->mItemsRestrictedOnHomeScreen:Z

    move/from16 v20, v1

    const/16 v21, 0x0

    move-object/from16 v1, v23

    invoke-direct/range {v1 .. v21}, Landroid/content/pm/UserProperties;-><init>(IZIIIIZZIIZZZZZZIIZLandroid/content/pm/UserProperties-IA;)V

    return-object v22
.end method

.method public blacklist setAllowStoppingUserWithDelayedLocking(Z)Landroid/content/pm/UserProperties$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/content/pm/UserProperties$Builder;->mAllowStoppingUserWithDelayedLocking:Z

    return-object p0
.end method

.method public blacklist setAlwaysVisible(Z)Landroid/content/pm/UserProperties$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/content/pm/UserProperties$Builder;->mAlwaysVisible:Z

    return-object p0
.end method

.method public blacklist setAuthAlwaysRequiredToDisableQuietMode(Z)Landroid/content/pm/UserProperties$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/content/pm/UserProperties$Builder;->mAuthAlwaysRequiredToDisableQuietMode:Z

    return-object p0
.end method

.method public blacklist setCredentialShareableWithParent(Z)Landroid/content/pm/UserProperties$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/content/pm/UserProperties$Builder;->mCredentialShareableWithParent:Z

    return-object p0
.end method

.method public blacklist setCrossProfileContentSharingStrategy(I)Landroid/content/pm/UserProperties$Builder;
    .locals 0

    iput p1, p0, Landroid/content/pm/UserProperties$Builder;->mCrossProfileContentSharingStrategy:I

    return-object p0
.end method

.method public blacklist setCrossProfileIntentFilterAccessControl(I)Landroid/content/pm/UserProperties$Builder;
    .locals 0

    iput p1, p0, Landroid/content/pm/UserProperties$Builder;->mCrossProfileIntentFilterAccessControl:I

    return-object p0
.end method

.method public blacklist setCrossProfileIntentResolutionStrategy(I)Landroid/content/pm/UserProperties$Builder;
    .locals 0

    iput p1, p0, Landroid/content/pm/UserProperties$Builder;->mCrossProfileIntentResolutionStrategy:I

    return-object p0
.end method

.method public blacklist setDeleteAppWithParent(Z)Landroid/content/pm/UserProperties$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/content/pm/UserProperties$Builder;->mDeleteAppWithParent:Z

    return-object p0
.end method

.method public blacklist setInheritDevicePolicy(I)Landroid/content/pm/UserProperties$Builder;
    .locals 0

    iput p1, p0, Landroid/content/pm/UserProperties$Builder;->mInheritDevicePolicy:I

    return-object p0
.end method

.method public blacklist setItemsRestrictedOnHomeScreen(Z)Landroid/content/pm/UserProperties$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/content/pm/UserProperties$Builder;->mItemsRestrictedOnHomeScreen:Z

    return-object p0
.end method

.method public blacklist setMediaSharedWithParent(Z)Landroid/content/pm/UserProperties$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/content/pm/UserProperties$Builder;->mMediaSharedWithParent:Z

    return-object p0
.end method

.method public blacklist setProfileApiVisibility(I)Landroid/content/pm/UserProperties$Builder;
    .locals 0

    iput p1, p0, Landroid/content/pm/UserProperties$Builder;->mProfileApiVisibility:I

    return-object p0
.end method

.method public blacklist setShowInLauncher(I)Landroid/content/pm/UserProperties$Builder;
    .locals 0

    iput p1, p0, Landroid/content/pm/UserProperties$Builder;->mShowInLauncher:I

    return-object p0
.end method

.method public blacklist setShowInQuietMode(I)Landroid/content/pm/UserProperties$Builder;
    .locals 0

    iput p1, p0, Landroid/content/pm/UserProperties$Builder;->mShowInQuietMode:I

    return-object p0
.end method

.method public blacklist setShowInSettings(I)Landroid/content/pm/UserProperties$Builder;
    .locals 0

    iput p1, p0, Landroid/content/pm/UserProperties$Builder;->mShowInSettings:I

    return-object p0
.end method

.method public blacklist setShowInSharingSurfaces(I)Landroid/content/pm/UserProperties$Builder;
    .locals 0

    iput p1, p0, Landroid/content/pm/UserProperties$Builder;->mShowInSharingSurfaces:I

    return-object p0
.end method

.method public blacklist setStartWithParent(Z)Landroid/content/pm/UserProperties$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/content/pm/UserProperties$Builder;->mStartWithParent:Z

    return-object p0
.end method

.method public blacklist setUpdateCrossProfileIntentFiltersOnOTA(Z)Landroid/content/pm/UserProperties$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/content/pm/UserProperties$Builder;->mUpdateCrossProfileIntentFiltersOnOTA:Z

    return-object p0
.end method

.method public blacklist setUseParentsContacts(Z)Landroid/content/pm/UserProperties$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/content/pm/UserProperties$Builder;->mUseParentsContacts:Z

    return-object p0
.end method
