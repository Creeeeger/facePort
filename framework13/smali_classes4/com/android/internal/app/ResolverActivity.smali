.class public Lcom/android/internal/app/ResolverActivity;
.super Landroid/app/Activity;
.source "ResolverActivity.java"

# interfaces
.implements Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivity$ShareStarTarget;,
        Lcom/android/internal/app/ResolverActivity$ShareStarItemInfo;,
        Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;,
        Lcom/android/internal/app/ResolverActivity$ItemClickListener;,
        Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;,
        Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;,
        Lcom/android/internal/app/ResolverActivity$ActionTitle;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static blacklist ENABLE_TABBED_VIEW:Z = false

.field static final blacklist EXTRA_CALLING_USER:Ljava/lang/String; = "com.android.internal.app.ResolverActivity.EXTRA_CALLING_USER"

.field private static final blacklist EXTRA_FRAGMENT_ARG_KEY:Ljava/lang/String; = ":settings:fragment_args_key"

.field public static final blacklist EXTRA_IS_AUDIO_CAPTURE_DEVICE:Ljava/lang/String; = "is_audio_capture_device"

.field static final blacklist EXTRA_SELECTED_PROFILE:Ljava/lang/String; = "com.android.internal.app.ResolverActivity.EXTRA_SELECTED_PROFILE"

.field private static final blacklist EXTRA_SHOW_FRAGMENT_ARGS:Ljava/lang/String; = ":settings:show_fragment_args"

.field public static final blacklist FORCE_IGNORE_SHARE_STAR:Ljava/lang/String; = "force_ignore_share_star"

.field private static final blacklist IS_OVERLAY_THEMES_ENABLED:Z = true

.field private static final blacklist LAST_SHOWN_TAB_KEY:Ljava/lang/String; = "last_shown_tab_key"

.field protected static final blacklist METRICS_CATEGORY_CHOOSER:Ljava/lang/String; = "intent_chooser"

.field protected static final blacklist METRICS_CATEGORY_RESOLVER:Ljava/lang/String; = "intent_resolver"

.field private static final blacklist OPEN_LINKS_COMPONENT_KEY:Ljava/lang/String; = "app_link_state"

.field static final blacklist PROFILE_PERSONAL:I = 0x0

.field static final blacklist PROFILE_WORK:I = 0x1

.field private static final blacklist SEM_RESOLVER_REDUCE_TRANSPARENCY_DIM_AMOUNT_DARK:F = 0.65f

.field private static final blacklist SEM_RESOLVER_REDUCE_TRANSPARENCY_DIM_AMOUNT_LIGHT:F = 0.35f

.field private static final blacklist TAB_TAG_PERSONAL:Ljava/lang/String; = "personal"

.field private static final blacklist TAB_TAG_WORK:Ljava/lang/String; = "work"

.field private static final blacklist TAG:Ljava/lang/String; = "ResolverActivity"


# instance fields
.field blacklist mAllChooserSetFromProvider:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAlwaysButton:Landroid/widget/Button;

.field private final blacklist mAnimDuration:I

.field private blacklist mAppIconTheme:Ljava/lang/String;

.field protected blacklist mAwaitingDelegateResponse:Z

.field protected blacklist mContentCount:I

.field protected blacklist mContentSize:Ljava/lang/CharSequence;

.field private blacklist mDefaultTitleResId:I

.field protected blacklist mExitAnimator:Landroid/animation/Animator;

.field protected blacklist mExtraIntentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFooterSpacer:Landroid/widget/Space;

.field protected blacklist mForceTitleHide:Z

.field private blacklist mGalleryRecyclerView:Lcom/android/internal/widget/RecyclerView;

.field private blacklist mHeaderCreatorUser:Landroid/os/UserHandle;

.field blacklist mIgnoreShareStarDropItem:Z

.field protected final blacklist mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mIsActivatedShareStar:Z

.field protected blacklist mIsDeskTopMode:Z

.field protected blacklist mIsDeviceDefault:Z

.field private final blacklist mIsIntentPicker:Z

.field private blacklist mIsManagedProfile:Z

.field protected blacklist mIsNight:Z

.field protected blacklist mIsPopOver:Z

.field protected blacklist mIsReduceTransparency:Z

.field private blacklist mLastSelected:I

.field protected final blacklist mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field protected blacklist mLaunchedFromUid:I

.field private blacklist mLayoutId:I

.field protected blacklist mMaxColumns:I

.field protected blacklist mMultiParent:Landroid/widget/FrameLayout;

.field protected blacklist mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

.field protected blacklist mNeedUpdateAfterPinned:Z

.field private blacklist mOldItemCount:I

.field private blacklist mOnceButton:Landroid/widget/Button;

.field protected blacklist mOrientation:I

.field private blacklist mPersonalPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private blacklist mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

.field protected greylist mPm:Landroid/content/pm/PackageManager;

.field private blacklist mProfileSwitchMessage:Ljava/lang/String;

.field protected blacklist mProfileView:Landroid/view/View;

.field private blacklist mReferrerPackage:Ljava/lang/String;

.field private blacklist mRegistered:Z

.field protected blacklist mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

.field private blacklist mResolvingHome:Z

.field private blacklist mRetainInOnStop:Z

.field blacklist mSStarAddSeeShowAllAppsItem:I

.field blacklist mSStarAppDropListItemInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mSStarAppExcludeListItemInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mSStarAppRankListItemInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mSStarDirectFavoriteItemInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/ResolverActivity$ShareStarItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mSStarIsShowAlphabetList:Z

.field blacklist mSStarIsShowCopyButton:Z

.field blacklist mSStarMaxRankListSize:I

.field blacklist mSStarMaxTargetPerApp:I

.field blacklist mSStarShowExifCheck:Z

.field blacklist mSStarShowNearByPanel:Z

.field blacklist mSStarShowNearbyChipButton:Z

.field blacklist mSStarShowPreview:Z

.field blacklist mSStarShowPreviewInnerView:Z

.field blacklist mSStarShowQuickShareDevices:Z

.field blacklist mSStarShowShareLinkChipButton:Z

.field blacklist mSStarShowShareLivePanel:Z

.field private blacklist mSafeForwardingMode:Z

.field protected blacklist mSemShareCommon:Lcom/samsung/android/share/SemShareCommon;

.field protected blacklist mSemShareLogging:Lcom/samsung/android/share/SemShareLogging;

.field protected blacklist mSupportButtons:Z

.field protected blacklist mSupportDeviceShare:Z

.field protected blacklist mSupportsAlwaysUseOption:Z

.field protected blacklist mSystemWindowInsets:Landroid/graphics/Insets;

.field private blacklist mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

.field private blacklist mTipsIcon:Landroid/widget/ImageView;

.field private blacklist mTitle:Ljava/lang/CharSequence;

.field private blacklist mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private blacklist mWorkProfileHasBeenEnabled:Z

.field private blacklist mWorkProfileStateReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mWorkProfileUserHandle:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAlwaysButton(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastSelected(Lcom/android/internal/app/ResolverActivity;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnceButton(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWorkProfileHasBeenEnabled(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileHasBeenEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastSelected(Lcom/android/internal/app/ResolverActivity;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPickOptionRequest(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWorkProfileHasBeenEnabled(Lcom/android/internal/app/ResolverActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileHasBeenEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misWorkProfileEnabled(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isWorkProfileEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mresetCheckedItem(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->resetCheckedItem()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msemFinishAfterAnimation(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->semFinishAfterAnimation()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetAlwaysButtonEnabled(Lcom/android/internal/app/ResolverActivity;ZIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 219
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/app/ResolverActivity;->ENABLE_TABBED_VIEW:Z

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 4

    .line 163
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 175
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    .line 176
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    .line 179
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    .line 203
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    .line 204
    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mFooterSpacer:Landroid/widget/Space;

    .line 216
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileHasBeenEnabled:Z

    .line 266
    const/16 v2, 0x14a

    iput v2, p0, Lcom/android/internal/app/ResolverActivity;->mAnimDuration:I

    .line 267
    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mOldItemCount:I

    .line 270
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mExtraIntentList:Ljava/util/List;

    .line 273
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    .line 274
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeskTopMode:Z

    .line 277
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mForceTitleHide:Z

    .line 285
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mNeedUpdateAfterPinned:Z

    .line 288
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsReduceTransparency:Z

    .line 291
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAllChooserSetFromProvider:Ljava/util/ArrayList;

    .line 295
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getLatencyTracker()Lcom/android/internal/util/LatencyTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 302
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsPopOver:Z

    .line 306
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsActivatedShareStar:Z

    .line 309
    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mSStarMaxTargetPerApp:I

    .line 310
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSStarShowPreview:Z

    .line 311
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSStarShowNearByPanel:Z

    .line 312
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSStarShowShareLivePanel:Z

    .line 313
    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mSStarAddSeeShowAllAppsItem:I

    .line 314
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIgnoreShareStarDropItem:Z

    .line 315
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSStarIsShowAlphabetList:Z

    .line 316
    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mSStarMaxRankListSize:I

    .line 317
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSStarIsShowCopyButton:Z

    .line 318
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSStarShowPreviewInnerView:Z

    .line 319
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSStarShowNearbyChipButton:Z

    .line 320
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSStarShowShareLinkChipButton:Z

    .line 321
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSStarShowExifCheck:Z

    .line 322
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSStarShowQuickShareDevices:Z

    .line 164
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    .line 165
    return-void
.end method

.method protected constructor blacklist <init>(Z)V
    .locals 4
    .param p1, "isIntentPicker"    # Z

    .line 167
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 175
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    .line 176
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    .line 179
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    .line 203
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    .line 204
    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mFooterSpacer:Landroid/widget/Space;

    .line 216
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileHasBeenEnabled:Z

    .line 266
    const/16 v2, 0x14a

    iput v2, p0, Lcom/android/internal/app/ResolverActivity;->mAnimDuration:I

    .line 267
    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mOldItemCount:I

    .line 270
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mExtraIntentList:Ljava/util/List;

    .line 273
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    .line 274
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeskTopMode:Z

    .line 277
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mForceTitleHide:Z

    .line 285
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mNeedUpdateAfterPinned:Z

    .line 288
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsReduceTransparency:Z

    .line 291
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAllChooserSetFromProvider:Ljava/util/ArrayList;

    .line 295
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getLatencyTracker()Lcom/android/internal/util/LatencyTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 302
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsPopOver:Z

    .line 306
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsActivatedShareStar:Z

    .line 309
    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mSStarMaxTargetPerApp:I

    .line 310
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSStarShowPreview:Z

    .line 311
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSStarShowNearByPanel:Z

    .line 312
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSStarShowShareLivePanel:Z

    .line 313
    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mSStarAddSeeShowAllAppsItem:I

    .line 314
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIgnoreShareStarDropItem:Z

    .line 315
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSStarIsShowAlphabetList:Z

    .line 316
    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mSStarMaxRankListSize:I

    .line 317
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSStarIsShowCopyButton:Z

    .line 318
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSStarShowPreviewInnerView:Z

    .line 319
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSStarShowNearbyChipButton:Z

    .line 320
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSStarShowShareLinkChipButton:Z

    .line 321
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSStarShowExifCheck:Z

    .line 322
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSStarShowQuickShareDevices:Z

    .line 168
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    .line 169
    return-void
.end method

.method private blacklist canAppInteractCrossProfiles(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2115
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2119
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 2120
    iget-boolean v2, v1, Landroid/content/pm/ApplicationInfo;->crossProfile:Z

    if-nez v2, :cond_0

    .line 2121
    return v0

    .line 2124
    :cond_0
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2126
    .local v2, "packageUid":I
    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-direct {p0, v3, v2}, Lcom/android/internal/app/ResolverActivity;->isPermissionGranted(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 2128
    return v4

    .line 2130
    :cond_1
    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-direct {p0, v3, v2}, Lcom/android/internal/app/ResolverActivity;->isPermissionGranted(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    .line 2132
    return v4

    .line 2134
    :cond_2
    const/4 v3, -0x1

    const-string v5, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-static {p0, v5, v3, v2, p1}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 2136
    return v4

    .line 2138
    :cond_3
    return v0

    .line 2116
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packageUid":I
    :catch_0
    move-exception v1

    .line 2117
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist on current user."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResolverActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    return v0
.end method

.method private blacklist checkIfNeedFRPWorkaround()Z
    .locals 5

    .line 3215
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3217
    .local v0, "userSetupComplete":Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    .line 3219
    .local v3, "currentListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    if-nez v0, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3220
    const-string v1, "ResolverActivity"

    const-string v4, "Blocked for security reason!! Setup is not completed!!"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3221
    return v2

    .line 3223
    :cond_1
    return v1
.end method

.method private blacklist configureContentView()Z
    .locals 12

    .line 1803
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1807
    const-string v0, "configureContentView"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1810
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->checkIfNeedFRPWorkaround()Z

    move-result v0

    const v1, 0x10204bb

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1813
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    .line 1814
    .local v0, "currentListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->showEmptyResolverListEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 1815
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutResource()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    .line 1816
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->setupViewPager(Lcom/android/internal/widget/ViewPager;)V

    .line 1817
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->maybeCreateHeader(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 1818
    return v2

    .line 1821
    .end local v0    # "currentListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    :cond_0
    new-instance v0, Lcom/samsung/android/share/SemShareCommon;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/content/Intent;

    iget-boolean v7, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    iget-boolean v8, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1822
    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v9

    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    iget-object v11, p0, Lcom/android/internal/app/ResolverActivity;->mExtraIntentList:Ljava/util/List;

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/samsung/android/share/SemShareCommon;-><init>(Landroid/content/Context;Landroid/content/Intent;ZZZILjava/util/List;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSemShareCommon:Lcom/samsung/android/share/SemShareCommon;

    .line 1825
    sget v3, Lcom/samsung/android/share/SemShareConstants;->SUPPORT_LOGGING:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/share/SemShareCommon;->isFeatureSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1826
    new-instance v0, Lcom/samsung/android/share/SemShareLogging;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/share/SemShareLogging;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSemShareLogging:Lcom/samsung/android/share/SemShareLogging;

    .line 1828
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportButtons:Z

    .line 1833
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildActiveTab(Z)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1834
    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->isTabLoaded()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v0

    .line 1835
    .local v3, "rebuildCompleted":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1836
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildInactiveTab(Z)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1837
    invoke-virtual {v4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverListAdapter;->isTabLoaded()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    move v4, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v4, v0

    .line 1838
    .local v4, "rebuildInactiveCompleted":Z
    :goto_3
    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    move v0, v2

    :goto_4
    move v3, v0

    .line 1841
    .end local v4    # "rebuildInactiveCompleted":Z
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->shouldUseMiniResolver()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1842
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->configureMiniResolverContent()V

    .line 1843
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1844
    return v2

    .line 1849
    :cond_8
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getPlaceholderCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mOldItemCount:I

    .line 1852
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1853
    const v0, 0x1090119

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutId:I

    goto :goto_5

    .line 1855
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutResource()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutId:I

    .line 1857
    :goto_5
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    .line 1858
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->setupViewPager(Lcom/android/internal/widget/ViewPager;)V

    .line 1859
    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->postRebuildList(Z)Z

    move-result v0

    .line 1860
    .local v0, "result":Z
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1861
    return v0

    .line 1804
    .end local v0    # "result":Z
    .end local v3    # "rebuildCompleted":Z
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "mMultiProfilePagerAdapter.getCurrentListAdapter() cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist configureMiniResolverContent()V
    .locals 12

    .line 1871
    const v0, 0x10900be

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutId:I

    .line 1872
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    .line 1874
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1875
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1876
    .local v0, "sameProfileResolveInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getCurrentProfile()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1878
    .local v2, "inWorkProfile":Z
    :goto_0
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v4

    .line 1879
    .local v4, "inactiveAdapter":Lcom/android/internal/app/ResolverListAdapter;
    iget-object v5, v4, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1882
    .local v5, "otherProfileResolveInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    const v6, 0x1020006

    invoke-virtual {p0, v6}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1883
    .local v6, "icon":Landroid/widget/ImageView;
    new-instance v7, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    invoke-direct {v8, v6}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-direct {v7, v4, v5, v8}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;-><init>(Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter$ViewHolder;)V

    .line 1885
    .local v7, "iconTask":Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;
    new-array v8, v1, [Ljava/lang/Void;

    invoke-virtual {v7, v8}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1887
    const v8, 0x102046f

    invoke-virtual {p0, v8}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1888
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1889
    if-eqz v2, :cond_1

    const v10, 0x10407c8

    goto :goto_1

    .line 1890
    :cond_1
    const v10, 0x10407c9

    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    .line 1891
    invoke-virtual {v5}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v3, v1

    .line 1888
    invoke-virtual {v9, v10, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1887
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1892
    const v1, 0x102068a

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1893
    if-eqz v2, :cond_2

    const v8, 0x10407cb

    goto :goto_2

    .line 1894
    :cond_2
    const v8, 0x10407ca

    .line 1892
    :goto_2
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setText(I)V

    .line 1896
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda11;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1902
    const v1, 0x1020238

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0, v5, v4}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda12;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1908
    return-void
.end method

.method private blacklist createExitAnimation(Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 3150
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3151
    .local v0, "height":I
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    int-to-float v2, v0

    const/4 v4, 0x1

    aput v2, v1, v4

    const-string/jumbo v2, "translationY"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 3152
    .local v1, "aniY":Landroid/animation/Animator;
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3ecccccd    # 0.4f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v3, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3153
    const-wide/16 v2, 0x14a

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 3154
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 3155
    return-object v1
.end method

.method private blacklist createResolverMultiProfilePagerAdapterForOneProfile([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;
    .locals 7
    .param p1, "initialIntents"    # [Landroid/content/Intent;
    .param p3, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)",
            "Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;"
        }
    .end annotation

    .line 685
    .local p2, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    .line 691
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 685
    move-object v0, p0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->createResolverListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    .line 692
    .local v0, "adapter":Lcom/android/internal/app/ResolverListAdapter;
    new-instance v1, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    .line 695
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;-><init>(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Landroid/os/UserHandle;Landroid/os/UserHandle;)V

    .line 692
    return-object v1
.end method

.method private blacklist createResolverMultiProfilePagerAdapterForTwoProfiles([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;
    .locals 15
    .param p1, "initialIntents"    # [Landroid/content/Intent;
    .param p3, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)",
            "Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;"
        }
    .end annotation

    .line 706
    .local p2, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object v8, p0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getCurrentProfile()I

    move-result v0

    .line 707
    .local v0, "selectedProfile":I
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.internal.app.ResolverActivity.EXTRA_CALLING_USER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 708
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    goto :goto_0

    .line 709
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    :goto_0
    move-object v9, v1

    .line 710
    .local v9, "intentUser":Landroid/os/UserHandle;
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 711
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 712
    const/4 v0, 0x0

    move v10, v0

    goto :goto_1

    .line 713
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 714
    const/4 v0, 0x1

    move v10, v0

    goto :goto_1

    .line 717
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getSelectedProfileExtra()I

    move-result v1

    .line 718
    .local v1, "selectedProfileExtra":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 719
    move v0, v1

    move v10, v0

    goto :goto_1

    .line 725
    .end local v1    # "selectedProfileExtra":I
    :cond_3
    move v10, v0

    .end local v0    # "selectedProfile":I
    .local v10, "selectedProfile":I
    :goto_1
    iget-object v2, v8, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    .line 728
    const/4 v7, 0x0

    if-nez v10, :cond_4

    move-object/from16 v3, p1

    goto :goto_2

    :cond_4
    move-object v3, v7

    :goto_2
    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz p3, :cond_5

    .line 730
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 731
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne v0, v1, :cond_5

    move v5, v12

    goto :goto_3

    :cond_5
    move v5, v11

    .line 732
    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 725
    move-object v0, p0

    move-object v1, p0

    move-object/from16 v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->createResolverListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v13

    .line 733
    .local v13, "personalAdapter":Lcom/android/internal/app/ResolverListAdapter;
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v14

    .line 734
    .local v14, "workProfileUserHandle":Landroid/os/UserHandle;
    iget-object v2, v8, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    .line 737
    if-ne v10, v12, :cond_6

    move-object/from16 v3, p1

    goto :goto_4

    :cond_6
    move-object v3, v7

    :goto_4
    if-eqz p3, :cond_7

    .line 739
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 740
    invoke-virtual {v14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne v0, v1, :cond_7

    move v5, v12

    goto :goto_5

    :cond_7
    move v5, v11

    .line 734
    :goto_5
    move-object v0, p0

    move-object v1, p0

    move-object/from16 v4, p2

    move-object v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->createResolverListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v11

    .line 742
    .local v11, "workAdapter":Lcom/android/internal/app/ResolverListAdapter;
    new-instance v12, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    .line 747
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    .line 748
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 749
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    move-object v0, v12

    move-object v2, v13

    move-object v3, v11

    move v4, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;-><init>(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/ResolverListAdapter;ILandroid/os/UserHandle;Landroid/os/UserHandle;Z)V

    .line 742
    return-object v12
.end method

.method private blacklist createWorkProfileStateReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 2586
    new-instance v0, Lcom/android/internal/app/ResolverActivity$4;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$4;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    return-object v0
.end method

.method private static blacklist getAttrColor(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .line 2276
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2277
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 2278
    .local v1, "colorAccent":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2279
    return v1
.end method

.method private blacklist getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "edmUri"    # Ljava/lang/String;
    .param p3, "projectionArgs"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 2817
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 2818
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, v6

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2819
    .local v0, "cr":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 2821
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2822
    invoke-interface {v0, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2826
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2822
    return v1

    .line 2826
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2823
    :catch_0
    move-exception v1

    .line 2824
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "ResolverActivity"

    const-string v3, "Exception at getEnterprisePolicyEnabled "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2826
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2827
    goto :goto_1

    .line 2826
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2827
    throw v1

    .line 2829
    :cond_0
    :goto_1
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist getForwardToPersonalMsg()Ljava/lang/String;
    .locals 3

    .line 1034
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    const-string v2, "Core.FORWARD_INTENT_TO_PERSONAL"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getForwardToWorkMsg()Ljava/lang/String;
    .locals 3

    .line 1040
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    const-string v2, "Core.FORWARD_INTENT_TO_WORK"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getLabelRes(Ljava/lang/String;)I
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .line 339
    invoke-static {p0}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->labelRes:I

    return v0
.end method

.method private blacklist getLatencyTracker()Lcom/android/internal/util/LatencyTracker;
    .locals 1

    .line 298
    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getPersonalTabAccessibilityLabel()Ljava/lang/String;
    .locals 3

    .line 2264
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    const-string v2, "Core.RESOLVER_PERSONAL_TAB_ACCESSIBILITY"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getPersonalTabLabel()Ljava/lang/String;
    .locals 3

    .line 2219
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    const-string v2, "Core.RESOLVER_PERSONAL_TAB"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getWorkProfileNotSupportedMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "launcherName"    # Ljava/lang/String;

    .line 1351
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "Core.RESOLVER_WORK_PROFILE_NOT_SUPPORTED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getWorkTabAccessibilityLabel()Ljava/lang/String;
    .locals 3

    .line 2270
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    const-string v2, "Core.RESOLVER_WORK_TAB_ACCESSIBILITY"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getWorkTabLabel()Ljava/lang/String;
    .locals 3

    .line 2224
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    const-string v2, "Core.RESOLVER_WORK_TAB"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist hasManagedProfile()Z
    .locals 6

    .line 1223
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1224
    .local v0, "userManager":Landroid/os/UserManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1225
    return v1

    .line 1229
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 1230
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1231
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    .line 1232
    const/4 v1, 0x1

    return v1

    .line 1234
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    goto :goto_0

    .line 1237
    .end local v2    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    nop

    .line 1238
    return v1

    .line 1235
    :catch_0
    move-exception v2

    .line 1236
    .local v2, "e":Ljava/lang/SecurityException;
    return v1
.end method

.method private blacklist hasWorkProfile()Z
    .locals 1

    .line 802
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist inactiveListAdapterHasItems()Z
    .locals 2

    .line 2579
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2580
    return v1

    .line 2582
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private blacklist isAutolaunching()Z
    .locals 1

    .line 2142
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isPermissionGranted(Ljava/lang/String;I)I
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1988
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    return v0
.end method

.method static final blacklist isSpecificUriMatch(I)Z
    .locals 1
    .param p0, "match"    # I

    .line 2834
    const/high16 v0, 0xfff0000

    and-int/2addr p0, v0

    .line 2835
    const/high16 v0, 0x300000

    if-lt p0, v0, :cond_0

    const/high16 v0, 0x500000

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isWorkProfileEnabled()Z
    .locals 3

    .line 1129
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 1130
    .local v0, "workUserHandle":Landroid/os/UserHandle;
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 1132
    .local v1, "userManager":Landroid/os/UserManager;
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1133
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1132
    :goto_0
    return v2
.end method

.method static synthetic blacklist lambda$setupProfileTabs$7(Landroid/widget/TabHost;)V
    .locals 2
    .param p0, "tabHost"    # Landroid/widget/TabHost;

    .line 2211
    invoke-virtual {p0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2212
    .local v0, "workTab":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 2213
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 2214
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2215
    return-void
.end method

.method private blacklist makeMyIntent()Landroid/content/Intent;
    .locals 3

    .line 441
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 442
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 448
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 449
    return-object v0
.end method

.method private blacklist maybeAutolaunchActivity()Z
    .locals 3

    .line 1996
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getItemCount()I

    move-result v0

    .line 1997
    .local v0, "numberOfProfiles":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->maybeAutolaunchIfSingleTarget()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1998
    return v1

    .line 1999
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 2000
    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->isTabLoaded()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 2001
    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->isTabLoaded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2002
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->maybeAutolaunchIfNoAppsOnInactiveTab()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2003
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->maybeAutolaunchIfCrossProfileSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2004
    :cond_1
    return v1

    .line 2006
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist maybeAutolaunchIfCrossProfileSupported()Z
    .locals 11

    .line 2061
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    .line 2062
    .local v0, "activeListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v1

    .line 2063
    .local v1, "count":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 2064
    return v3

    .line 2066
    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 2067
    invoke-virtual {v4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v4

    .line 2068
    .local v4, "inactiveListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    invoke-virtual {v4}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v5

    if-eq v5, v2, :cond_1

    .line 2069
    return v3

    .line 2071
    :cond_1
    nop

    .line 2072
    invoke-virtual {v0, v3, v3}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v5

    .line 2073
    .local v5, "activeProfileTarget":Lcom/android/internal/app/chooser/TargetInfo;
    invoke-virtual {v4, v3, v3}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v6

    .line 2074
    .local v6, "inactiveProfileTarget":Lcom/android/internal/app/chooser/TargetInfo;
    invoke-interface {v5}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v7

    .line 2075
    invoke-interface {v6}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v8

    .line 2074
    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2076
    return v3

    .line 2078
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverActivity;->shouldAutoLaunchSingleChoice(Lcom/android/internal/app/chooser/TargetInfo;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2079
    return v3

    .line 2081
    :cond_3
    invoke-interface {v5}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 2082
    .local v7, "packageName":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->canAppInteractCrossProfiles(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 2083
    return v3

    .line 2086
    :cond_4
    const/16 v8, 0xa1

    .line 2087
    invoke-static {v8}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v8

    .line 2088
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    .line 2089
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 2088
    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/String;

    .line 2090
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMetricsCategory()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v3

    .line 2091
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 2092
    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 2093
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 2094
    return v2
.end method

.method private blacklist maybeAutolaunchIfNoAppsOnInactiveTab()Z
    .locals 5

    .line 2037
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v0

    .line 2038
    .local v0, "count":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 2039
    return v2

    .line 2041
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 2042
    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    .line 2043
    .local v3, "inactiveListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v4

    if-eqz v4, :cond_1

    .line 2044
    return v2

    .line 2046
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v4

    .line 2047
    invoke-virtual {v4, v2, v2}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v2

    .line 2048
    .local v2, "target":Lcom/android/internal/app/chooser/TargetInfo;
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 2049
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 2050
    return v1
.end method

.method private blacklist maybeAutolaunchIfSingleTarget()Z
    .locals 5

    .line 2010
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v0

    .line 2011
    .local v0, "count":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 2012
    return v2

    .line 2015
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2016
    return v2

    .line 2019
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 2020
    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->semCheckDroppedItemExist()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 2021
    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v3

    if-lt v3, v1, :cond_2

    .line 2022
    return v2

    .line 2026
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    .line 2027
    invoke-virtual {v3, v2, v2}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v3

    .line 2028
    .local v3, "target":Lcom/android/internal/app/chooser/TargetInfo;
    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->shouldAutoLaunchSingleChoice(Lcom/android/internal/app/chooser/TargetInfo;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2029
    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 2030
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 2031
    return v1

    .line 2033
    :cond_3
    return v2
.end method

.method private blacklist maybeCreateHeader(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 3
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 2332
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mHeaderCreatorUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    .line 2333
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mHeaderCreatorUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2334
    return-void

    .line 2336
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v0

    const/16 v1, 0x8

    const v2, 0x1020016

    if-nez v0, :cond_1

    .line 2337
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getPlaceholderCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 2338
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2339
    .local v0, "titleView":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 2340
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2344
    .end local v0    # "titleView":Landroid/widget/TextView;
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mForceTitleHide:Z

    if-eqz v0, :cond_3

    .line 2345
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2346
    .restart local v0    # "titleView":Landroid/widget/TextView;
    if-eqz v0, :cond_2

    .line 2347
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2349
    :cond_2
    return-void

    .line 2352
    .end local v0    # "titleView":Landroid/widget/TextView;
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 2353
    goto :goto_0

    .line 2354
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/ResolverActivity;->mDefaultTitleResId:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->getTitleForAction(Landroid/content/Intent;I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    nop

    .line 2356
    .local v0, "title":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2357
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2358
    .local v1, "titleView":Landroid/widget/TextView;
    if-eqz v1, :cond_5

    .line 2359
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2361
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2364
    const v2, 0x105046e

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/ResolverActivity;->semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V

    .line 2374
    .end local v1    # "titleView":Landroid/widget/TextView;
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mHeaderCreatorUser:Landroid/os/UserHandle;

    .line 2375
    return-void
.end method

.method private blacklist maybeHideDivider()V
    .locals 2

    .line 2231
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    if-nez v0, :cond_0

    .line 2232
    return-void

    .line 2234
    :cond_0
    const v0, 0x10202c5

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2235
    .local v0, "divider":Landroid/view/View;
    if-nez v0, :cond_1

    .line 2236
    return-void

    .line 2238
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2239
    return-void
.end method

.method private blacklist maybeLogCrossProfileTargetLaunch(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "cti"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "currentUserHandle"    # Landroid/os/UserHandle;

    .line 1734
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->hasWorkProfile()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1737
    :cond_0
    const/16 v0, 0x9b

    .line 1738
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 1739
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 1740
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMetricsCategory()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 1741
    instance-of v3, p1, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    if-eqz v3, :cond_1

    const-string v3, "direct_share"

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "other_target"

    :goto_0
    aput-object v3, v1, v2

    .line 1740
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 1742
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 1743
    return-void

    .line 1735
    :cond_2
    :goto_1
    return-void
.end method

.method private blacklist registerWorkProfileStateReceiver()V
    .locals 7

    .line 1137
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1138
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1139
    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1140
    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1141
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileStateReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/ResolverActivity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1142
    return-void
.end method

.method private blacklist resetAlwaysOrOnceButtonBar()V
    .locals 5

    .line 2441
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10503be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2443
    .local v0, "btnTextSize":I
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    int-to-float v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 2444
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/app/ResolverActivity;->semCheckMaxFontScale(Landroid/widget/TextView;I)V

    .line 2446
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    int-to-float v2, v0

    invoke-virtual {v1, v3, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 2447
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/app/ResolverActivity;->semCheckMaxFontScale(Landroid/widget/TextView;I)V

    .line 2449
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSemShareCommon:Lcom/samsung/android/share/SemShareCommon;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sget v4, Lcom/samsung/android/share/SemShareConstants;->SUPPORT_SHOW_BUTTON_SHAPES:I

    invoke-virtual {v1, v4}, Lcom/samsung/android/share/SemShareCommon;->isFeatureSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2450
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    .line 2451
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    .line 2456
    .end local v0    # "btnTextSize":I
    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, v3, v0, v3}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    .line 2457
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2459
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    .line 2460
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->getFilteredPosition()I

    move-result v1

    .line 2461
    .local v1, "filteredPosition":I
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eq v1, v0, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/app/ResolverActivity;->mSupportButtons:Z

    if-eqz v4, :cond_1

    .line 2462
    invoke-direct {p0, v2, v1, v3}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    .line 2463
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2465
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 2466
    return-void

    .line 2474
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView;

    .line 2476
    .local v3, "currentAdapterView":Landroid/widget/AbsListView;
    if-eqz v3, :cond_2

    iget-boolean v4, p0, Lcom/android/internal/app/ResolverActivity;->mSupportButtons:Z

    if-eqz v4, :cond_2

    .line 2478
    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v4

    if-eq v4, v0, :cond_2

    .line 2479
    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v0

    invoke-direct {p0, v2, v0, v2}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    .line 2480
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2482
    :cond_2
    return-void
.end method

.method private blacklist resetCheckedItem()V
    .locals 3

    .line 2248
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    if-nez v0, :cond_0

    .line 2249
    return-void

    .line 2251
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    .line 2256
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    .line 2258
    .local v0, "inactiveListView":Landroid/widget/AbsListView;
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 2259
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 2261
    :cond_1
    return-void
.end method

.method private blacklist safelyStartActivityInternal(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "cti"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1682
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->isSuspended()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-eqz v0, :cond_2

    .line 1683
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    if-eqz v0, :cond_0

    .line 1684
    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 1686
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    if-eqz v0, :cond_1

    .line 1687
    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 1689
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 1693
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessage:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1694
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1696
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    const-string v1, "ResolverActivity"

    const/4 v2, 0x0

    if-nez v0, :cond_6

    .line 1699
    nop

    .line 1700
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1701
    .local v0, "tUserId":I
    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1702
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    move-object p2, v3

    .line 1705
    :cond_4
    invoke-interface {p1, p0, v2, p2}, Lcom/android/internal/app/chooser/TargetInfo;->startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1706
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1707
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity;->maybeLogCrossProfileTargetLaunch(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1709
    :cond_5
    return-void

    .line 1710
    .end local v0    # "tUserId":I
    :catch_0
    move-exception v0

    .line 1711
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Exception at safelyStartActivityInternal "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1716
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    nop

    .line 1717
    :try_start_1
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1718
    .local v0, "tUserId":I
    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1719
    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    invoke-interface {p1, p0, v2, v0}, Lcom/android/internal/app/chooser/TargetInfo;->startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1720
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/chooser/TargetInfo;)V

    goto :goto_0

    .line 1722
    :cond_8
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-interface {p1, p0, v2, v3}, Lcom/android/internal/app/chooser/TargetInfo;->startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1723
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1724
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity;->maybeLogCrossProfileTargetLaunch(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1730
    .end local v0    # "tUserId":I
    :cond_9
    :goto_0
    goto :goto_1

    .line 1726
    :catch_1
    move-exception v0

    .line 1727
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch as uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1728
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLaunchedFromPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", while running in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1729
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1727
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1731
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-void
.end method

.method private blacklist semCheckMaxFontScale(Landroid/widget/TextView;I)V
    .locals 4
    .param p1, "textview"    # Landroid/widget/TextView;
    .param p2, "baseSize"    # I

    .line 3027
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 3029
    .local v0, "currentFontScale":F
    const v1, 0x3f99999a    # 1.2f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 3030
    int-to-float v2, p2

    div-float/2addr v2, v0

    .line 3031
    .local v2, "scaleBase":F
    const/4 v3, 0x0

    mul-float/2addr v1, v2

    invoke-virtual {p1, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3033
    .end local v2    # "scaleBase":F
    :cond_0
    return-void
.end method

.method private blacklist semCreateAndShowTipsPopup(Landroid/view/View;)V
    .locals 7
    .param p1, "anchor"    # Landroid/view/View;

    .line 3242
    new-instance v0, Lcom/samsung/android/widget/SemTipPopup;

    invoke-direct {v0, p1}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 3243
    const v1, 0x1040d14

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    .line 3244
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 3245
    .local v1, "anchorPos":[I
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    .line 3246
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 3247
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v4, 0x0

    aget v4, v1, v4

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mTipsIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    div-int/2addr v5, v0

    add-int/2addr v4, v5

    aget v3, v1, v3

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mTipsIcon:Landroid/widget/ImageView;

    .line 3248
    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050471

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 3247
    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    .line 3250
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/16 v3, 0xf2

    const/16 v4, 0x47

    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/widget/SemTipPopup;->setBackgroundColorWithAlpha(I)V

    .line 3251
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 3252
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 3253
    :cond_0
    const/4 v0, 0x3

    .line 3251
    :goto_0
    invoke-virtual {v2, v0}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    .line 3254
    return-void
.end method

.method private blacklist semFinishAfterAnimation()V
    .locals 3

    .line 3160
    const v0, 0x1020270

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3161
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiParent:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGalleryRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3167
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiParent:Landroid/widget/FrameLayout;

    goto :goto_1

    .line 3162
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeskTopMode:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsPopOver:Z

    if-eqz v1, :cond_2

    goto :goto_2

    .line 3170
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3171
    return-void

    .line 3174
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->createExitAnimation(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    .line 3175
    new-instance v2, Lcom/android/internal/app/ResolverActivity$7;

    invoke-direct {v2, p0}, Lcom/android/internal/app/ResolverActivity$7;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3195
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 3196
    return-void

    .line 3163
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 3164
    return-void
.end method

.method private blacklist semSafelyStartActivtyAfterAnimation(Lcom/android/internal/app/chooser/TargetInfo;)V
    .locals 3
    .param p1, "cti"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 3066
    const v0, 0x1020270

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3067
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiParent:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGalleryRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3073
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiParent:Landroid/widget/FrameLayout;

    goto :goto_1

    .line 3068
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeskTopMode:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsPopOver:Z

    if-eqz v1, :cond_2

    goto :goto_2

    .line 3076
    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->createExitAnimation(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    .line 3077
    new-instance v2, Lcom/android/internal/app/ResolverActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/app/ResolverActivity$5;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/chooser/TargetInfo;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3098
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 3099
    return-void

    .line 3069
    :cond_3
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 3070
    return-void
.end method

.method private blacklist semSetupAdapterListView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ItemClickListener;)V
    .locals 4
    .param p1, "listView"    # Landroid/widget/AbsListView;
    .param p2, "listener"    # Lcom/android/internal/app/ResolverActivity$ItemClickListener;

    .line 3227
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3228
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 3230
    instance-of v0, p1, Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 3231
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    .line 3232
    .local v0, "adapter":Lcom/android/internal/app/ResolverListAdapter;
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v1

    .line 3233
    .local v1, "itemCount":I
    move-object v2, p1

    check-cast v2, Landroid/widget/GridView;

    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 3236
    .end local v0    # "adapter":Lcom/android/internal/app/ResolverListAdapter;
    .end local v1    # "itemCount":I
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v0, :cond_1

    .line 3237
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 3239
    :cond_1
    return-void
.end method

.method private blacklist semTransitionOverride(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .line 3051
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsPopOver:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3053
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeskTopMode:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3056
    :cond_1
    if-nez p2, :cond_2

    .line 3057
    const v0, 0x10a0121

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->overridePendingTransition(II)V

    goto :goto_1

    .line 3059
    :cond_2
    const v0, 0x10a0120

    const v1, 0x10a011d

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->overridePendingTransition(II)V

    goto :goto_1

    .line 3054
    :cond_3
    :goto_0
    const v0, 0x10a011e

    const v1, 0x10a011f

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->overridePendingTransition(II)V

    .line 3062
    :goto_1
    return-void
.end method

.method private blacklist setAlwaysButtonEnabled(ZIZ)V
    .locals 7
    .param p1, "hasValidSelection"    # Z
    .param p2, "checkedPos"    # I
    .param p3, "filtered"    # Z

    .line 1253
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1255
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1256
    return-void

    .line 1258
    :cond_0
    const/4 v0, 0x0

    .line 1259
    .local v0, "enabled":Z
    const/4 v2, 0x0

    .line 1260
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz p1, :cond_3

    .line 1261
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    .line 1262
    invoke-virtual {v3, p2, p3}, Lcom/android/internal/app/ResolverListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1263
    const-string v3, "ResolverActivity"

    if-nez v2, :cond_1

    .line 1264
    const-string v1, "Invalid position supplied to setAlwaysButtonEnabled"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    return-void

    .line 1266
    :cond_1
    iget v4, v2, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_2

    .line 1267
    const-string v4, "Attempted to set selection to resolve info for another user"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1270
    :cond_2
    const/4 v0, 0x1

    .line 1273
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040184

    .line 1274
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1273
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1277
    :cond_3
    if-eqz v2, :cond_5

    .line 1278
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1280
    .local v3, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1281
    const-string v6, "android.permission.RECORD_AUDIO"

    invoke-virtual {v4, v6, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    move v4, v1

    .line 1285
    .local v4, "hasRecordPermission":Z
    :goto_1
    if-nez v4, :cond_5

    .line 1287
    nop

    .line 1288
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "is_audio_capture_device"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1290
    .local v1, "hasAudioCapture":Z
    xor-int/lit8 v5, v1, 0x1

    move v0, v5

    .line 1293
    .end local v1    # "hasAudioCapture":Z
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "hasRecordPermission":Z
    :cond_5
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1294
    return-void
.end method

.method private blacklist setButtonBarIgnoreOffset(Z)V
    .locals 2
    .param p1, "ignoreOffset"    # Z

    .line 2430
    const v0, 0x1020236

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2431
    .local v0, "buttonBarContainer":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2432
    nop

    .line 2433
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 2434
    .local v1, "layoutParams":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iput-boolean p1, v1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    .line 2435
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2437
    .end local v1    # "layoutParams":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private blacklist setProfileSwitchMessage(I)V
    .locals 7
    .param p1, "contentUserHint"    # I

    .line 1011
    const/4 v0, -0x2

    if-eq p1, v0, :cond_6

    .line 1012
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p1, v0, :cond_6

    .line 1013
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1014
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1015
    .local v1, "originUserInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    goto :goto_0

    .line 1016
    :cond_0
    move v3, v2

    :goto_0
    nop

    .line 1017
    .local v3, "originIsManaged":Z
    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v4

    .line 1019
    .local v4, "targetIsManaged":Z
    if-eqz v1, :cond_1

    .line 1020
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v2

    .line 1021
    .local v5, "originIsSecureFolder":Z
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1022
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v2

    goto :goto_2

    :cond_2
    nop

    .line 1023
    .local v2, "targetIsSecureFolder":Z
    :goto_2
    if-nez v5, :cond_5

    if-eqz v2, :cond_3

    goto :goto_3

    .line 1025
    :cond_3
    if-eqz v3, :cond_4

    if-nez v4, :cond_4

    .line 1026
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getForwardToPersonalMsg()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessage:Ljava/lang/String;

    goto :goto_4

    .line 1027
    :cond_4
    if-nez v3, :cond_6

    if-eqz v4, :cond_6

    .line 1028
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getForwardToWorkMsg()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessage:Ljava/lang/String;

    goto :goto_4

    .line 1023
    :cond_5
    :goto_3
    return-void

    .line 1031
    .end local v0    # "userManager":Landroid/os/UserManager;
    .end local v1    # "originUserInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "targetIsSecureFolder":Z
    .end local v3    # "originIsManaged":Z
    .end local v4    # "targetIsManaged":Z
    .end local v5    # "originIsSecureFolder":Z
    :cond_6
    :goto_4
    return-void
.end method

.method private blacklist setupAdapterListView(Landroid/widget/ListView;Lcom/android/internal/app/ResolverActivity$ItemClickListener;)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "listener"    # Lcom/android/internal/app/ResolverActivity$ItemClickListener;

    .line 2320
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2321
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 2323
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v0, :cond_0

    .line 2324
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 2326
    :cond_0
    return-void
.end method

.method private blacklist setupProfileTabs()V
    .locals 9

    .line 2146
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->maybeHideDivider()V

    .line 2147
    const v0, 0x10204bc

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    .line 2148
    .local v0, "tabHost":Landroid/widget/TabHost;
    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 2149
    const v1, 0x10204bb

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager;

    .line 2150
    .local v2, "viewPager":Lcom/android/internal/widget/ViewPager;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ViewPager;->setSaveEnabled(Z)V

    .line 2152
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 2153
    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    .line 2152
    const v6, 0x109011a

    invoke-virtual {v4, v6, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 2154
    .local v4, "personalButton":Landroid/widget/Button;
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalTabLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2155
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalTabAccessibilityLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2157
    const-string/jumbo v5, "personal"

    invoke-virtual {v0, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 2158
    invoke-virtual {v5, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 2159
    invoke-virtual {v5, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 2160
    .local v5, "tabSpec":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v0, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 2162
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    .line 2163
    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v8

    .line 2162
    invoke-virtual {v7, v6, v8, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 2164
    .local v6, "workButton":Landroid/widget/Button;
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkTabLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2165
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkTabAccessibilityLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2167
    const-string/jumbo v7, "work"

    invoke-virtual {v0, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    .line 2168
    invoke-virtual {v7, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 2169
    invoke-virtual {v1, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 2170
    .end local v5    # "tabSpec":Landroid/widget/TabHost$TabSpec;
    .local v1, "tabSpec":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 2172
    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    .line 2173
    .local v5, "tabWidget":Landroid/widget/TabWidget;
    invoke-virtual {v5, v3}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 2174
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->updateActiveTabStyle(Landroid/widget/TabHost;)V

    .line 2176
    new-instance v7, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda9;

    invoke-direct {v7, p0, v0, v2}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/widget/TabHost;Lcom/android/internal/widget/ViewPager;)V

    invoke-virtual {v0, v7}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 2193
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ViewPager;->setVisibility(I)V

    .line 2194
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 2195
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    new-instance v7, Lcom/android/internal/app/ResolverActivity$3;

    invoke-direct {v7, p0, v0}, Lcom/android/internal/app/ResolverActivity$3;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/widget/TabHost;)V

    invoke-virtual {v3, v7}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->setOnProfileSelectedListener(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;)V

    .line 2209
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    new-instance v7, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda10;

    invoke-direct {v7, v0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda10;-><init>(Landroid/widget/TabHost;)V

    invoke-virtual {v3, v7}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->setOnSwitchOnWorkSelectedListener(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;)V

    .line 2216
    return-void
.end method

.method private blacklist setupViewVisibilities()V
    .locals 2

    .line 2291
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    .line 2292
    .local v0, "activeListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->shouldShowEmptyStateScreen(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2293
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->addUseDifferentAppLabelIfNecessary(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 2295
    :cond_0
    return-void
.end method

.method private blacklist shouldUseMiniResolver()Z
    .locals 8

    .line 1917
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1918
    return v1

    .line 1920
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1921
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 1924
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1925
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    .line 1926
    .local v0, "sameProfileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1927
    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    .line 1929
    .local v2, "otherProfileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-string v4, "ResolverActivity"

    if-eqz v3, :cond_2

    .line 1930
    const-string v3, "No targets in the current profile"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    return v1

    .line 1934
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_3

    .line 1935
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " resolvers in the other profile"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    return v1

    .line 1939
    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-boolean v3, v3, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v3, :cond_4

    .line 1940
    const-string v3, "Other profile is a web browser"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    return v1

    .line 1944
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1945
    .local v6, "info":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v6}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-boolean v7, v7, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-nez v7, :cond_5

    .line 1946
    const-string v3, "Non-browser found in this profile"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    return v1

    .line 1949
    .end local v6    # "info":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    :cond_5
    goto :goto_0

    .line 1951
    :cond_6
    return v5

    .line 1922
    .end local v0    # "sameProfileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    .end local v2    # "otherProfileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    :cond_7
    :goto_1
    return v1
.end method

.method private blacklist supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z
    .locals 4
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 1243
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1245
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 1246
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 1247
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private blacklist updateActiveTabStyle(Landroid/widget/TabHost;)V
    .locals 4
    .param p1, "tabHost"    # Landroid/widget/TabHost;

    .line 2283
    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 2284
    .local v0, "currentTab":I
    invoke-virtual {p1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2285
    .local v1, "selected":Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    rsub-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2286
    .local v2, "unselected":Landroid/widget/TextView;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2287
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2288
    return-void
.end method

.method private blacklist updateIntentPickerPaddings()V
    .locals 7

    .line 905
    const v0, 0x1020642

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 906
    .local v0, "titleCont":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 907
    nop

    .line 908
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 909
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 910
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 911
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050301

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 907
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 913
    :cond_0
    const v1, 0x1020235

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 914
    .local v1, "buttonBar":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 915
    nop

    .line 916
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 917
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10502f0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 918
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 919
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 915
    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 921
    :cond_1
    return-void
.end method


# virtual methods
.method protected blacklist addPreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/Intent;)V
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "bestMatch"    # I
    .param p4, "set"    # [Landroid/content/ComponentName;
    .param p5, "intent"    # Landroid/content/Intent;

    .line 1644
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/content/pm/PackageManager;->addUniquePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1645
    return-void
.end method

.method public blacklist addUseDifferentAppLabelIfNecessary(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 2303
    return-void
.end method

.method protected blacklist appliedThemeResId()I
    .locals 1

    .line 753
    const v0, 0x1030430

    return v0
.end method

.method protected blacklist applyFooterView(I)V
    .locals 0
    .param p1, "height"    # I

    .line 856
    return-void
.end method

.method protected blacklist createListController(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListController;
    .locals 8
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 1789
    new-instance v7, Lcom/android/internal/app/ResolverListController;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 1792
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1793
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/ResolverListController;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1789
    return-object v7
.end method

.method protected blacklist createMultiProfilePagerAdapter([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
    .locals 2
    .param p1, "initialIntents"    # [Landroid/content/Intent;
    .param p3, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)",
            "Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;"
        }
    .end annotation

    .line 670
    .local p2, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 671
    .local v0, "resolverMultiProfilePagerAdapter":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 672
    nop

    .line 673
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->createResolverMultiProfilePagerAdapterForTwoProfiles([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    move-result-object v0

    goto :goto_0

    .line 676
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->createResolverMultiProfilePagerAdapterForOneProfile([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    move-result-object v0

    .line 679
    :goto_0
    return-object v0
.end method

.method protected blacklist createPackageMonitor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/content/PackageMonitor;
    .locals 1
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 424
    new-instance v0, Lcom/android/internal/app/ResolverActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ResolverActivity$1;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverListAdapter;)V

    return-object v0
.end method

.method protected blacklist createResolverListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "filterLastUsed"    # Z
    .param p6, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z",
            "Landroid/os/UserHandle;",
            ")",
            "Lcom/android/internal/app/ResolverListAdapter;"
        }
    .end annotation

    .line 1779
    .local p2, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1780
    .local v0, "startIntent":Landroid/content/Intent;
    nop

    .line 1781
    const-string v1, "is_audio_capture_device"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1782
    .local v1, "isAudioCaptureDevice":Z
    new-instance v2, Lcom/android/internal/app/ResolverListAdapter;

    .line 1783
    move-object v12, p0

    move-object/from16 v13, p6

    invoke-virtual {p0, v13}, Lcom/android/internal/app/ResolverActivity;->createListController(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListController;

    move-result-object v9

    move-object v3, v2

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object v10, p0

    move v11, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/internal/app/ResolverListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLcom/android/internal/app/ResolverListController;Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;Z)V

    .line 1782
    return-object v2
.end method

.method blacklist dismiss()V
    .locals 1

    .line 1085
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1086
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1088
    :cond_0
    return-void
.end method

.method protected blacklist fetchWorkProfileUserProfile()Landroid/os/UserHandle;
    .locals 4

    .line 787
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    .line 788
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 789
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 793
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v3

    if-nez v3, :cond_0

    .line 795
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    .line 797
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    goto :goto_0

    .line 798
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    return-object v1
.end method

.method public whitelist finish()V
    .locals 1

    .line 2886
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 2887
    return-void

    .line 2890
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2892
    const/4 v0, 0x1

    invoke-direct {p0, p0, v0}, Lcom/android/internal/app/ResolverActivity;->semTransitionOverride(Landroid/content/Context;I)V

    .line 2893
    return-void
.end method

.method protected blacklist getCurrentProfile()I
    .locals 1

    .line 776
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method blacklist getFontScale()F
    .locals 2

    .line 3043
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 3044
    .local v0, "fontScale":F
    const v1, 0x3f99999a    # 1.2f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 3045
    const v0, 0x3f99999a    # 1.2f

    .line 3047
    :cond_0
    return v0
.end method

.method public blacklist getLayoutResource()I
    .locals 1

    .line 982
    const v0, 0x1090172

    return v0
.end method

.method protected blacklist getMetricsCategory()Ljava/lang/String;
    .locals 1

    .line 2524
    const-string v0, "intent_resolver"

    return-object v0
.end method

.method protected blacklist getPersonalProfileUserHandle()Landroid/os/UserHandle;
    .locals 1

    .line 780
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getReferrerPackageName()Ljava/lang/String;
    .locals 4

    .line 965
    const/4 v0, 0x0

    .line 967
    .local v0, "referrer":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrer()Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 970
    goto :goto_0

    .line 968
    :catch_0
    move-exception v1

    .line 969
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getReferrer error!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResolverActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android-app"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 973
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 975
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "defIntent"    # Landroid/content/Intent;

    .line 1364
    return-object p2
.end method

.method blacklist getSelectedProfileExtra()I
    .locals 4

    .line 763
    const/4 v0, -0x1

    .line 764
    .local v0, "selectedProfile":I
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.internal.app.ResolverActivity.EXTRA_SELECTED_PROFILE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 765
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 766
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 767
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.android.internal.app.ResolverActivity.EXTRA_SELECTED_PROFILE has invalid value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Must be either ResolverActivity.PROFILE_PERSONAL or ResolverActivity.PROFILE_WORK."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 772
    :cond_1
    :goto_0
    return v0
.end method

.method public blacklist getTargetIntent()Landroid/content/Intent;
    .locals 2

    .line 961
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :goto_0
    return-object v0
.end method

.method protected blacklist getTitleForAction(Landroid/content/Intent;I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "defaultTitleRes"    # I

    .line 1062
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v0, :cond_0

    .line 1063
    sget-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    goto :goto_0

    .line 1064
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v0

    :goto_0
    nop

    .line 1068
    .local v0, "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1069
    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->getFilteredPosition()I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1070
    .local v1, "named":Z
    :goto_1
    sget-object v2, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    if-ne v0, v2, :cond_2

    if-eqz p2, :cond_2

    .line 1071
    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1074
    :cond_2
    iget v2, v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->titleRes:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected blacklist getWorkProfileUserHandle()Landroid/os/UserHandle;
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method protected blacklist isTablet()Z
    .locals 2

    .line 3209
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3211
    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method synthetic blacklist lambda$configureMiniResolverContent$4$com-android-internal-app-ResolverActivity(Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/view/View;)V
    .locals 0
    .param p1, "sameProfileResolveInfo"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p2, "v"    # Landroid/view/View;

    .line 1898
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1899
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1900
    return-void
.end method

.method synthetic blacklist lambda$configureMiniResolverContent$5$com-android-internal-app-ResolverActivity(Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter;Landroid/view/View;)V
    .locals 2
    .param p1, "otherProfileResolveInfo"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p2, "inactiveAdapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p3, "v"    # Landroid/view/View;

    .line 1903
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1904
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p2, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    .line 1905
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListController;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 1904
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivityAsUser(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V

    .line 1906
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1907
    return-void
.end method

.method synthetic blacklist lambda$getForwardToPersonalMsg$1$com-android-internal-app-ResolverActivity()Ljava/lang/String;
    .locals 1

    .line 1036
    const v0, 0x1040564

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getForwardToWorkMsg$2$com-android-internal-app-ResolverActivity()Ljava/lang/String;
    .locals 1

    .line 1042
    const v0, 0x1040565

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getPersonalTabAccessibilityLabel$10$com-android-internal-app-ResolverActivity()Ljava/lang/String;
    .locals 1

    .line 2266
    const v0, 0x1040b8f

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getPersonalTabLabel$8$com-android-internal-app-ResolverActivity()Ljava/lang/String;
    .locals 1

    .line 2220
    const v0, 0x1040b8e

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getWorkProfileNotSupportedMsg$3$com-android-internal-app-ResolverActivity(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "launcherName"    # Ljava/lang/String;

    .line 1353
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const v1, 0x1040186

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ResolverActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getWorkTabAccessibilityLabel$11$com-android-internal-app-ResolverActivity()Ljava/lang/String;
    .locals 1

    .line 2272
    const v0, 0x1040b93

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getWorkTabLabel$9$com-android-internal-app-ResolverActivity()Ljava/lang/String;
    .locals 1

    .line 2225
    const v0, 0x1040b92

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$onCreate$0$com-android-internal-app-ResolverActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 656
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    goto :goto_0

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mTipsIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->semCreateAndShowTipsPopup(Landroid/view/View;)V

    .line 661
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$setupProfileTabs$6$com-android-internal-app-ResolverActivity(Landroid/widget/TabHost;Lcom/android/internal/widget/ViewPager;Ljava/lang/String;)V
    .locals 4
    .param p1, "tabHost"    # Landroid/widget/TabHost;
    .param p2, "viewPager"    # Lcom/android/internal/widget/ViewPager;
    .param p3, "tabId"    # Ljava/lang/String;

    .line 2177
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->updateActiveTabStyle(Landroid/widget/TabHost;)V

    .line 2178
    const-string/jumbo v0, "personal"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2179
    invoke-virtual {p2, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 2181
    :cond_0
    invoke-virtual {p2, v2}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    .line 2183
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->setupViewVisibilities()V

    .line 2184
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->maybeLogProfileChange()V

    .line 2185
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->onProfileTabSelected()V

    .line 2186
    const/16 v0, 0x9c

    .line 2187
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 2188
    invoke-virtual {p2}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyEventLogger;->setInt(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    .line 2189
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMetricsCategory()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 2190
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 2191
    return-void
.end method

.method protected blacklist maybeLogProfileChange()V
    .locals 0

    .line 2876
    return-void
.end method

.method public blacklist onActivityStarted(Lcom/android/internal/app/chooser/TargetInfo;)V
    .locals 0
    .param p1, "cti"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 1748
    return-void
.end method

.method protected blacklist onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .line 859
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    .line 861
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    iget v0, v0, Landroid/graphics/Insets;->left:I

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->top:I

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->right:I

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->setPadding(IIII)V

    .line 864
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->resetButtonBar()V

    .line 866
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->shouldUseMiniResolver()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    const v0, 0x1020236

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 868
    .local v0, "buttonContainer":Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    .line 869
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10502f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 868
    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 873
    .end local v0    # "buttonContainer":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldAddFooterView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 874
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->applyFooterView(I)V

    .line 877
    :cond_1
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onBackPressed()V
    .locals 0

    .line 2897
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->semFinishAfterAnimation()V

    .line 2898
    return-void
.end method

.method public blacklist onButtonClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .line 1297
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1302
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView;

    .line 1304
    .local v1, "listView":Landroid/widget/AbsListView;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    .line 1305
    .local v2, "currentListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1306
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->getFilteredPosition()I

    move-result v3

    goto :goto_0

    .line 1307
    :cond_0
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v3

    :goto_0
    nop

    .line 1308
    .local v3, "which":I
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 1309
    .local v4, "hasIndexBeenFiltered":Z
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v6

    const v7, 0x1020234

    if-ne v0, v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {p0, v6, v5, v4}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    .line 1310
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 882
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 884
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mOrientation:I

    .line 885
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 886
    .local v0, "width":I
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->semSetMaxWidth(I)V

    .line 888
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->handlePackagesChanged()V

    .line 889
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v1

    if-nez v1, :cond_0

    .line 890
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->shouldUseMiniResolver()Z

    move-result v1

    if-nez v1, :cond_0

    .line 891
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->updateIntentPickerPaddings()V

    .line 894
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 895
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    iget v1, v1, Landroid/graphics/Insets;->left:I

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->top:I

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v5, v5, Landroid/graphics/Insets;->right:I

    invoke-virtual {v3, v1, v4, v5, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->setPadding(IIII)V

    .line 899
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 900
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    .line 902
    :cond_2
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 464
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v8

    .line 465
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v9

    .line 466
    .local v9, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eqz v9, :cond_0

    .line 468
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 469
    const-string v0, "android.intent.category.HOME"

    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    .line 474
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->setSafeForwardingMode(Z)V

    .line 476
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v8

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 477
    return-void
.end method

.method protected blacklist onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 16
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "defaultTitleRes"    # I
    .param p5, "initialIntents"    # [Landroid/content/Intent;
    .param p7, "supportsAlwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "I[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 494
    .local p6, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->appliedThemeResId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->setTheme(I)V

    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 497
    .local v2, "config":Landroid/content/res/Configuration;
    iget v3, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x20

    if-ne v3, v6, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    iput-boolean v3, v0, Lcom/android/internal/app/ResolverActivity;->mIsNight:Z

    .line 500
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 503
    if-nez v1, :cond_2

    .line 504
    const-string/jumbo v3, "true"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 505
    .local v3, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 506
    .local v6, "action":Ljava/lang/String;
    if-eqz v6, :cond_2

    const-string v7, "android.intent.action.SEND"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 507
    const-string v7, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 508
    const-string v7, "android.intent.action.SENDTO"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "UNLIMITED_SHARE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 509
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v9, "isShareListAllowed"

    invoke-direct {v0, v7, v8, v9, v3}, Lcom/android/internal/app/ResolverActivity;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    .line 512
    .local v7, "isShareListAllowed":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "action - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ResolverActivity"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onCreate(): isShareListAllowed("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    if-nez v7, :cond_2

    .line 515
    const-string/jumbo v4, "onCreate(): ShareList is not allowed"

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 517
    return-void

    .line 526
    .end local v3    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "isShareListAllowed":Z
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getContentUserHint()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/android/internal/app/ResolverActivity;->setProfileSwitchMessage(I)V

    .line 529
    iget v3, v2, Landroid/content/res/Configuration;->orientation:I

    iput v3, v0, Lcom/android/internal/app/ResolverActivity;->mOrientation:I

    .line 530
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10e00c6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    .line 531
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "current_sec_appicon_theme_package"

    invoke-static {v3, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAppIconTheme:Ljava/lang/String;

    .line 532
    iget v3, v2, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne v3, v4, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_1
    iput-boolean v3, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeskTopMode:Z

    .line 536
    iget-object v3, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/internal/app/ResolverActivity;->mIsPopOver:Z

    .line 539
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getLaunchedFromUid()I

    move-result v3

    iput v3, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    .line 540
    if-ltz v3, :cond_14

    invoke-static {v3}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v7, p2

    move-object/from16 v3, p3

    move/from16 v6, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    goto/16 :goto_7

    .line 546
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 548
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mReferrerPackage:Ljava/lang/String;

    .line 551
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    new-instance v6, Landroid/content/Intent;

    move-object/from16 v7, p2

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v3, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 552
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    .line 553
    move/from16 v6, p4

    iput v6, v0, Lcom/android/internal/app/ResolverActivity;->mDefaultTitleResId:I

    .line 555
    iput-boolean v1, v0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    .line 556
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->fetchWorkProfileUserProfile()Landroid/os/UserHandle;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    .line 563
    iget-boolean v8, v0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v8, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v8

    if-nez v8, :cond_5

    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v8

    if-nez v8, :cond_5

    move v8, v4

    goto :goto_2

    :cond_5
    move v8, v5

    .line 565
    .local v8, "filterLastUsed":Z
    :goto_2
    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual {v0, v9, v10, v8}, Lcom/android/internal/app/ResolverActivity;->createMultiProfilePagerAdapter([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    move-result-object v11

    iput-object v11, v0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 566
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->configureContentView()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 567
    return-void

    .line 570
    :cond_6
    iget-object v11, v0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 571
    invoke-virtual {v11}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getPersonalListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v11

    .line 570
    invoke-virtual {v0, v11}, Lcom/android/internal/app/ResolverActivity;->createPackageMonitor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/content/PackageMonitor;

    move-result-object v11

    iput-object v11, v0, Lcom/android/internal/app/ResolverActivity;->mPersonalPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 572
    nop

    .line 573
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v13

    .line 572
    invoke-virtual {v11, v0, v12, v13, v5}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 575
    iget-object v11, v0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 576
    invoke-virtual {v11}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getWorkListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v11

    .line 575
    invoke-virtual {v0, v11}, Lcom/android/internal/app/ResolverActivity;->createPackageMonitor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/content/PackageMonitor;

    move-result-object v11

    iput-object v11, v0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 577
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v13

    invoke-virtual {v11, v0, v12, v13, v5}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 580
    :cond_7
    iput-boolean v4, v0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 582
    const v11, 0x1020270

    invoke-virtual {v0, v11}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 583
    .local v11, "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    if-eqz v11, :cond_a

    .line 584
    new-instance v12, Lcom/android/internal/app/ResolverActivity$2;

    invoke-direct {v12, v0}, Lcom/android/internal/app/ResolverActivity$2;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v11, v12}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnDismissedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V

    .line 595
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 596
    const-string v13, "android.hardware.touchscreen"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    .line 598
    .local v12, "hasTouchScreen":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v13

    if-nez v13, :cond_8

    if-nez v12, :cond_9

    .line 599
    :cond_8
    invoke-virtual {v11, v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapsed(Z)V

    .line 608
    :cond_9
    iput-object v11, v0, Lcom/android/internal/app/ResolverActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 610
    const v13, 0x102054a

    invoke-virtual {v0, v13}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    iput-object v13, v0, Lcom/android/internal/app/ResolverActivity;->mMultiParent:Landroid/widget/FrameLayout;

    .line 611
    const v13, 0x102055b

    invoke-virtual {v0, v13}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/RecyclerView;

    iput-object v13, v0, Lcom/android/internal/app/ResolverActivity;->mGalleryRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 615
    .end local v12    # "hasTouchScreen":Z
    :cond_a
    const v12, 0x10204ba

    invoke-virtual {v0, v12}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, v0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    .line 616
    if-eqz v12, :cond_b

    .line 617
    new-instance v13, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda2;

    invoke-direct {v13, v0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 618
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->updateProfileViewButton()V

    .line 621
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v12

    .line 622
    .local v12, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v13, v0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v13}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 623
    const/16 v13, 0x1c3

    goto :goto_3

    .line 624
    :cond_c
    const/16 v13, 0x1c5

    :goto_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 625
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 626
    if-eqz v12, :cond_d

    invoke-interface {v12}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    :cond_d
    const-string v14, ""

    :goto_4
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 622
    invoke-static {v0, v13, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 629
    invoke-direct {v0, v0, v5}, Lcom/android/internal/app/ResolverActivity;->semTransitionOverride(Landroid/content/Context;I)V

    .line 630
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 632
    .local v4, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-boolean v13, v0, Lcom/android/internal/app/ResolverActivity;->mIsPopOver:Z

    if-eqz v13, :cond_f

    .line 633
    iget v13, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v13, v13, -0x401

    iput v13, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 634
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 635
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/internal/policy/DecorView;

    .line 636
    .local v13, "dv":Lcom/android/internal/policy/DecorView;
    invoke-virtual {v13}, Lcom/android/internal/policy/DecorView;->isDexEnabled()Z

    move-result v14

    if-nez v14, :cond_f

    instance-of v14, v0, Lcom/android/internal/app/ChooserActivity;

    if-eqz v14, :cond_e

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_f

    .line 637
    :cond_e
    invoke-virtual {v13}, Lcom/android/internal/policy/DecorView;->preventPopOverElevation()V

    .line 640
    .end local v13    # "dv":Lcom/android/internal/policy/DecorView;
    :cond_f
    iget v13, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v14, 0x1000000

    or-int/2addr v13, v14

    iput v13, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 641
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 643
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "accessibility_reduce_transparency"

    invoke-static {v13, v14, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_10

    goto :goto_5

    :cond_10
    move v14, v5

    :goto_5
    iput-boolean v14, v0, Lcom/android/internal/app/ResolverActivity;->mIsReduceTransparency:Z

    .line 645
    if-eqz v14, :cond_12

    .line 646
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v13

    iget-boolean v14, v0, Lcom/android/internal/app/ResolverActivity;->mIsNight:Z

    if-eqz v14, :cond_11

    const v14, 0x3f266666    # 0.65f

    goto :goto_6

    :cond_11
    const v14, 0x3eb33333    # 0.35f

    :goto_6
    invoke-virtual {v13, v14}, Landroid/view/Window;->setDimAmount(F)V

    .line 650
    .end local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_12
    iget-boolean v4, v0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v4, :cond_13

    .line 651
    const v4, 0x1020585

    invoke-virtual {v0, v4}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mTipsIcon:Landroid/widget/ImageView;

    .line 652
    if-eqz v4, :cond_13

    .line 653
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 654
    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mTipsIcon:Landroid/widget/ImageView;

    const v5, 0x1020234

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAccessibilityTraversalAfter(I)V

    .line 655
    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mTipsIcon:Landroid/widget/ImageView;

    new-instance v5, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda3;

    invoke-direct {v5, v0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 664
    :cond_13
    return-void

    .line 540
    .end local v8    # "filterLastUsed":Z
    .end local v11    # "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    .end local v12    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_14
    move-object/from16 v7, p2

    move-object/from16 v3, p3

    move/from16 v6, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 542
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 543
    return-void
.end method

.method protected greylist onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "supportsAlwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 487
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 489
    return-void
.end method

.method protected whitelist onDestroy()V
    .locals 1

    .line 1193
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1194
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    if-eqz v0, :cond_0

    .line 1195
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;->cancel()V

    .line 1197
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1198
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->onDestroy()V

    .line 1200
    :cond_1
    return-void
.end method

.method public blacklist onHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 6
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 2539
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 2540
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 2541
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->isWaitingToEnableWorkProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2546
    return-void

    .line 2550
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_appicon_theme_package"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAppIconTheme:Ljava/lang/String;

    .line 2552
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getPlaceholderCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mOldItemCount:I

    .line 2555
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildActiveTab(Z)Z

    move-result v0

    .line 2556
    .local v0, "listRebuilt":Z
    if-eqz v0, :cond_2

    .line 2557
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 2558
    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    .line 2559
    .local v1, "activeListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->notifyDataSetChanged()V

    .line 2560
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->inactiveListAdapterHasItems()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2562
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 2566
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v2

    .line 2567
    .local v2, "adapterView":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/GridView;

    if-eqz v3, :cond_2

    .line 2568
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v3

    .line 2569
    .local v3, "itemCount":I
    move-object v4, v2

    check-cast v4, Landroid/widget/GridView;

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 2573
    .end local v0    # "listRebuilt":Z
    .end local v1    # "activeListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    .end local v2    # "adapterView":Landroid/view/View;
    .end local v3    # "itemCount":I
    :cond_2
    goto :goto_0

    .line 2574
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->clearInactiveProfileCache()V

    .line 2576
    :goto_0
    return-void
.end method

.method blacklist onHorizontalSwipeStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 2228
    return-void
.end method

.method protected blacklist onListRebuilt(Lcom/android/internal/app/ResolverListAdapter;Z)V
    .locals 7
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p2, "rebuildCompleted"    # Z

    .line 1402
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$ItemClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    .line 1404
    .local v0, "listener":Lcom/android/internal/app/ResolverActivity$ItemClickListener;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/app/ResolverActivity;->semSetupAdapterListView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ItemClickListener;)V

    .line 1408
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    if-eqz v1, :cond_1

    .line 1409
    const v1, 0x1020270

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 1410
    .local v1, "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    if-eqz v1, :cond_1

    .line 1411
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1412
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1413
    const v3, 0x10502fb

    goto :goto_0

    .line 1414
    :cond_0
    const v3, 0x10502fc

    .line 1412
    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1411
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->setMaxCollapsedHeight(I)V

    .line 1419
    .end local v1    # "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    if-eqz v1, :cond_5

    .line 1420
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1421
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 1422
    .local v1, "v":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/AbsListView;

    if-eqz v2, :cond_5

    .line 1423
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView;

    .line 1424
    .local v2, "adapterView":Landroid/widget/AbsListView;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1425
    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->getFilteredPosition()I

    move-result v3

    .line 1424
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 1427
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v3

    .line 1428
    .local v3, "checkedPos":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 1429
    .local v5, "hasValidSelection":Z
    :goto_1
    iget-boolean v6, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v6, :cond_5

    if-eqz v5, :cond_3

    iget v6, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    if-eq v6, v3, :cond_5

    :cond_3
    iget-boolean v6, p0, Lcom/android/internal/app/ResolverActivity;->mSupportButtons:Z

    if-eqz v6, :cond_5

    .line 1431
    invoke-direct {p0, v5, v3, v4}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    .line 1432
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1433
    if-eqz v5, :cond_4

    .line 1434
    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 1436
    :cond_4
    iput v3, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    .line 1441
    .end local v1    # "v":Landroid/view/View;
    .end local v2    # "adapterView":Landroid/widget/AbsListView;
    .end local v3    # "checkedPos":I
    .end local v5    # "hasValidSelection":Z
    :cond_5
    return-void
.end method

.method public whitelist onMultiWindowModeChanged(Z)V
    .locals 1
    .param p1, "isInMultiWindowMode"    # Z

    .line 2902
    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    .line 2903
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->semForceHandlePackagesChanged()V

    .line 2904
    return-void
.end method

.method public final blacklist onPostListReady(Lcom/android/internal/app/ResolverListAdapter;ZZZ)V
    .locals 3
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p2, "doPostProcessing"    # Z
    .param p3, "rebuildCompleted"    # Z
    .param p4, "skipAutoLaunch"    # Z

    .line 1370
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isAutolaunching()Z

    move-result v0

    const-string v1, "ResolverActivity"

    if-eqz v0, :cond_0

    .line 1371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPostListReady return isAutolaunching() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isAutolaunching()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    return-void

    .line 1374
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    if-eqz v0, :cond_1

    .line 1375
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    check-cast v0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    .line 1376
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->setUseLayoutWithDefault(Z)V

    .line 1378
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->shouldShowEmptyStateScreen(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1379
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->showEmptyResolverListEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V

    goto :goto_0

    .line 1381
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->showListView(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 1385
    :goto_0
    if-nez p4, :cond_3

    if-eqz p3, :cond_3

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->maybeAutolaunchActivity()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPostListReady return skipAutoLaunch = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", rebuildComplete = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    return-void

    .line 1390
    :cond_3
    if-eqz p2, :cond_4

    .line 1391
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->maybeCreateHeader(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 1392
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->resetButtonBar()V

    .line 1394
    if-eqz p3, :cond_4

    .line 1396
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/app/ResolverActivity;->onListRebuilt(Lcom/android/internal/app/ResolverListAdapter;Z)V

    .line 1399
    :cond_4
    return-void
.end method

.method protected blacklist onProfileClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 815
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 816
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    .line 817
    .local v0, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    if-nez v0, :cond_0

    .line 818
    return-void

    .line 822
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessage:Ljava/lang/String;

    .line 824
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z

    .line 825
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 826
    return-void
.end method

.method protected blacklist onProfileTabSelected()V
    .locals 0

    .line 2245
    return-void
.end method

.method protected whitelist onRestart()V
    .locals 4

    .line 1092
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 1093
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-nez v0, :cond_2

    .line 1094
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 1095
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 1094
    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 1096
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1097
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    if-nez v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1099
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getWorkListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    .line 1098
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->createPackageMonitor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/content/PackageMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 1102
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 1101
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 1104
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 1106
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->isWaitingToEnableWorkProfile()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1107
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1108
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->markWorkProfileEnabledBroadcastReceived()V

    .line 1111
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->handlePackagesChanged()V

    .line 1112
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->updateProfileViewButton()V

    .line 1113
    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1213
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1214
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->resetButtonBar()V

    .line 1215
    const v0, 0x10204bb

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewPager;

    .line 1216
    .local v0, "viewPager":Lcom/android/internal/widget/ViewPager;
    if-eqz v0, :cond_0

    .line 1217
    const-string/jumbo v1, "last_shown_tab_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    .line 1219
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->clearInactiveProfileCache()V

    .line 1220
    return-void
.end method

.method protected whitelist onResume()V
    .locals 0

    .line 2881
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2882
    return-void
.end method

.method protected whitelist onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 1204
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1205
    const v0, 0x10204bb

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewPager;

    .line 1206
    .local v0, "viewPager":Lcom/android/internal/widget/ViewPager;
    if-eqz v0, :cond_0

    .line 1207
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v1

    const-string/jumbo v2, "last_shown_tab_key"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1209
    :cond_0
    return-void
.end method

.method protected whitelist onStart()V
    .locals 2

    .line 1117
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1119
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addSystemFlags(I)V

    .line 1120
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1121
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->createWorkProfileStateReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1122
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->registerWorkProfileStateReceiver()V

    .line 1124
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isWorkProfileEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileHasBeenEnabled:Z

    .line 1126
    :cond_0
    return-void
.end method

.method protected whitelist onStop()V
    .locals 7

    .line 1146
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1148
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1149
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1150
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v3, -0x80001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1151
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1153
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-eqz v2, :cond_1

    .line 1154
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v2}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 1155
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    if-eqz v2, :cond_0

    .line 1156
    invoke-virtual {v2}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 1158
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 1160
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1161
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x10000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mRetainInOnStop:Z

    if-nez v3, :cond_3

    .line 1170
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1173
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    .line 1174
    .local v3, "context":Landroid/content/Context;
    iget v4, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    const/16 v5, 0x3e9

    if-ne v4, v5, :cond_2

    .line 1175
    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    .line 1176
    .local v4, "km":Landroid/app/KeyguardManager;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1177
    const-string v5, "ResolverActivity"

    const-string/jumbo v6, "we don\'t finish resolver for this exceptional case"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    return-void

    .line 1182
    .end local v3    # "context":Landroid/content/Context;
    .end local v4    # "km":Landroid/app/KeyguardManager;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1185
    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    if-eqz v3, :cond_4

    .line 1186
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1187
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 1189
    :cond_4
    return-void
.end method

.method protected blacklist onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z
    .locals 1
    .param p1, "target"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "always"    # Z

    .line 1445
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;ZZ)Z

    move-result v0

    return v0
.end method

.method protected blacklist onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;ZZ)Z
    .locals 21
    .param p1, "target"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "always"    # Z
    .param p3, "noAnim"    # Z

    .line 1450
    move-object/from16 v7, p0

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v8, v0

    .line 1451
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move-object v9, v0

    .line 1453
    .local v9, "intent":Landroid/content/Intent;
    if-eqz v9, :cond_1b

    iget-boolean v0, v7, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-nez v0, :cond_2

    iget-object v0, v7, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1454
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_2
    iget-object v0, v7, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1455
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredResolveList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1457
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v0

    .line 1460
    .local v2, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v9}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1461
    invoke-virtual {v9}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    move-object v12, v0

    .local v0, "filterIntent":Landroid/content/Intent;
    goto :goto_2

    .line 1463
    .end local v0    # "filterIntent":Landroid/content/Intent;
    :cond_3
    move-object v0, v9

    move-object v12, v0

    .line 1466
    .local v12, "filterIntent":Landroid/content/Intent;
    :goto_2
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 1467
    .local v13, "action":Ljava/lang/String;
    if-eqz v13, :cond_4

    .line 1468
    invoke-virtual {v2, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1470
    :cond_4
    invoke-virtual {v12}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v14

    .line 1471
    .local v14, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v14, :cond_5

    .line 1472
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1473
    .local v3, "cat":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1474
    .end local v3    # "cat":Ljava/lang/String;
    goto :goto_3

    .line 1476
    :cond_5
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1478
    iget v0, v8, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v3, 0xfff0000

    and-int v15, v0, v3

    .line 1479
    .local v15, "cat":I
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 1480
    .local v6, "data":Landroid/net/Uri;
    const/high16 v3, 0x600000

    const-string v4, "ResolverActivity"

    if-ne v15, v3, :cond_6

    .line 1481
    invoke-virtual {v12, v7}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 1482
    .local v5, "mimeType":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 1484
    :try_start_0
    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1488
    goto :goto_4

    .line 1485
    :catch_0
    move-exception v0

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    .line 1486
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1487
    const/4 v2, 0x0

    move-object v5, v2

    goto :goto_5

    .line 1491
    .end local v0    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v5    # "mimeType":Ljava/lang/String;
    :cond_6
    :goto_4
    move-object v5, v2

    .end local v2    # "filter":Landroid/content/IntentFilter;
    .local v5, "filter":Landroid/content/IntentFilter;
    :goto_5
    if-eqz v6, :cond_e

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    if-eqz v5, :cond_e

    .line 1495
    if-ne v15, v3, :cond_7

    .line 1496
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "file"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1497
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1498
    :cond_7
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1502
    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1503
    .local v0, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v0, :cond_9

    .line 1504
    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 1505
    .local v2, "ssp":Ljava/lang/String;
    :goto_6
    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1506
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PatternMatcher;

    .line 1507
    .local v3, "p":Landroid/os/PatternMatcher;
    invoke-virtual {v3, v2}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 1508
    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getType()I

    move-result v11

    invoke-virtual {v5, v1, v11}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 1509
    goto :goto_7

    .line 1511
    .end local v3    # "p":Landroid/os/PatternMatcher;
    :cond_8
    goto :goto_6

    .line 1513
    .end local v2    # "ssp":Ljava/lang/String;
    :cond_9
    :goto_7
    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v1}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1514
    .local v1, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v1, :cond_c

    .line 1515
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1516
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter$AuthorityEntry;

    .line 1517
    .local v2, "a":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v2, v6}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v3

    if-ltz v3, :cond_b

    .line 1518
    invoke-virtual {v2}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v3

    .line 1519
    .local v3, "port":I
    invoke-virtual {v2}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v11

    .line 1520
    if-ltz v3, :cond_a

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v10, v16

    goto :goto_9

    :cond_a
    const/4 v10, 0x0

    .line 1519
    :goto_9
    invoke-virtual {v5, v11, v10}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    goto :goto_a

    .line 1523
    .end local v2    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v3    # "port":I
    :cond_b
    goto :goto_8

    .line 1525
    :cond_c
    :goto_a
    iget-object v2, v8, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1526
    if-eqz v0, :cond_e

    .line 1527
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1528
    .local v2, "path":Ljava/lang/String;
    :goto_b
    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1529
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PatternMatcher;

    .line 1530
    .local v3, "p":Landroid/os/PatternMatcher;
    invoke-virtual {v3, v2}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1531
    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getType()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 1532
    goto :goto_c

    .line 1534
    .end local v3    # "p":Landroid/os/PatternMatcher;
    :cond_d
    goto :goto_b

    .line 1539
    .end local v0    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v1    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v2    # "path":Ljava/lang/String;
    :cond_e
    :goto_c
    if-eqz v5, :cond_1a

    .line 1540
    iget-object v0, v7, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    .line 1541
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredResolveList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .line 1546
    .local v10, "N":I
    iget-object v0, v7, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1547
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_d

    :cond_f
    const/4 v0, 0x0

    :goto_d
    move v11, v0

    .line 1548
    .local v11, "needToAddBackProfileForwardingComponent":Z
    if-nez v11, :cond_10

    .line 1549
    new-array v0, v10, [Landroid/content/ComponentName;

    move-object/from16 v16, v0

    .local v0, "set":[Landroid/content/ComponentName;
    goto :goto_e

    .line 1551
    .end local v0    # "set":[Landroid/content/ComponentName;
    :cond_10
    add-int/lit8 v0, v10, 0x1

    new-array v0, v0, [Landroid/content/ComponentName;

    move-object/from16 v16, v0

    .line 1554
    .local v16, "set":[Landroid/content/ComponentName;
    :goto_e
    const/4 v0, 0x0

    .line 1555
    .local v0, "bestMatch":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v10, :cond_12

    .line 1556
    iget-object v2, v7, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    .line 1557
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredResolveList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1558
    .local v2, "r":Landroid/content/pm/ResolveInfo;
    new-instance v3, Landroid/content/ComponentName;

    move-object/from16 v17, v6

    .end local v6    # "data":Landroid/net/Uri;
    .local v17, "data":Landroid/net/Uri;
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v12

    .end local v12    # "filterIntent":Landroid/content/Intent;
    .local v18, "filterIntent":Landroid/content/Intent;
    iget-object v12, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v6, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v16, v1

    .line 1560
    iget v3, v2, Landroid/content/pm/ResolveInfo;->match:I

    if-le v3, v0, :cond_11

    iget v0, v2, Landroid/content/pm/ResolveInfo;->match:I

    .line 1561
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "preferred : set = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v6, v16, v1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    .end local v2    # "r":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v6, v17

    move-object/from16 v12, v18

    goto :goto_f

    .end local v17    # "data":Landroid/net/Uri;
    .end local v18    # "filterIntent":Landroid/content/Intent;
    .restart local v6    # "data":Landroid/net/Uri;
    .restart local v12    # "filterIntent":Landroid/content/Intent;
    :cond_12
    move-object/from16 v17, v6

    move-object/from16 v18, v12

    .line 1564
    .end local v1    # "i":I
    .end local v6    # "data":Landroid/net/Uri;
    .end local v12    # "filterIntent":Landroid/content/Intent;
    .restart local v17    # "data":Landroid/net/Uri;
    .restart local v18    # "filterIntent":Landroid/content/Intent;
    if-eqz v11, :cond_14

    .line 1565
    iget-object v1, v7, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    .line 1566
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v1

    aput-object v1, v16, v10

    .line 1567
    iget-object v1, v7, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    .line 1568
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ResolveInfo;->match:I

    .line 1569
    .local v1, "otherProfileMatch":I
    if-le v1, v0, :cond_13

    move v0, v1

    .line 1570
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preferred : otherProfileMatch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", set = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v16, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v0

    goto :goto_10

    .line 1564
    .end local v1    # "otherProfileMatch":I
    :cond_14
    move v12, v0

    .line 1573
    .end local v0    # "bestMatch":I
    .local v12, "bestMatch":I
    :goto_10
    iget-boolean v0, v7, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v0, :cond_17

    iget-object v0, v7, Lcom/android/internal/app/ResolverActivity;->mSemShareLogging:Lcom/samsung/android/share/SemShareLogging;

    if-eqz v0, :cond_17

    .line 1574
    invoke-virtual {v0}, Lcom/samsung/android/share/SemShareLogging;->isSupportDMA()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1575
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1576
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_15
    const-string v1, ""

    .line 1578
    .local v1, "packageName":Ljava/lang/String;
    :goto_11
    iget-object v2, v7, Lcom/android/internal/app/ResolverActivity;->mSemShareLogging:Lcom/samsung/android/share/SemShareLogging;

    const-string v3, "RVAP"

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/share/SemShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    const-string v2, "RVOA"

    if-eqz p2, :cond_16

    .line 1582
    iget-object v3, v7, Lcom/android/internal/app/ResolverActivity;->mSemShareLogging:Lcom/samsung/android/share/SemShareLogging;

    const-string v6, "0"

    invoke-virtual {v3, v2, v6}, Lcom/samsung/android/share/SemShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 1585
    :cond_16
    iget-object v3, v7, Lcom/android/internal/app/ResolverActivity;->mSemShareLogging:Lcom/samsung/android/share/SemShareLogging;

    const-string v6, "1"

    invoke-virtual {v3, v2, v6}, Lcom/samsung/android/share/SemShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_17
    :goto_12
    if-eqz p2, :cond_19

    .line 1592
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v0

    .line 1593
    .local v0, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1595
    .local v6, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "preferred : bestMatch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", comp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v5

    move v4, v12

    move/from16 v19, v10

    move-object v10, v5

    .end local v5    # "filter":Landroid/content/IntentFilter;
    .local v10, "filter":Landroid/content/IntentFilter;
    .local v19, "N":I
    move-object/from16 v5, v16

    move/from16 v20, v11

    move-object v11, v6

    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .local v11, "pm":Landroid/content/pm/PackageManager;
    .local v20, "needToAddBackProfileForwardingComponent":Z
    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/ResolverActivity;->addPreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/Intent;)V

    .line 1606
    iget-boolean v1, v8, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v1, :cond_18

    .line 1608
    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object v1

    .line 1609
    .restart local v1    # "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1610
    iget-object v2, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v2, v0}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    .line 1613
    .end local v0    # "userId":I
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    :cond_18
    goto :goto_13

    .line 1615
    .end local v19    # "N":I
    .end local v20    # "needToAddBackProfileForwardingComponent":Z
    .restart local v5    # "filter":Landroid/content/IntentFilter;
    .local v10, "N":I
    .local v11, "needToAddBackProfileForwardingComponent":Z
    :cond_19
    move/from16 v19, v10

    move/from16 v20, v11

    move-object v10, v5

    .end local v5    # "filter":Landroid/content/IntentFilter;
    .end local v11    # "needToAddBackProfileForwardingComponent":Z
    .local v10, "filter":Landroid/content/IntentFilter;
    .restart local v19    # "N":I
    .restart local v20    # "needToAddBackProfileForwardingComponent":Z
    :try_start_1
    iget-object v0, v7, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    .line 1616
    invoke-virtual {v0, v9, v10, v12}, Lcom/android/internal/app/ResolverListController;->setLastChosen(Landroid/content/Intent;Landroid/content/IntentFilter;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1619
    goto :goto_13

    .line 1617
    :catch_1
    move-exception v0

    .line 1618
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling setLastChosenActivity\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 1539
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v10    # "filter":Landroid/content/IntentFilter;
    .end local v16    # "set":[Landroid/content/ComponentName;
    .end local v17    # "data":Landroid/net/Uri;
    .end local v18    # "filterIntent":Landroid/content/Intent;
    .end local v19    # "N":I
    .end local v20    # "needToAddBackProfileForwardingComponent":Z
    .restart local v5    # "filter":Landroid/content/IntentFilter;
    .local v6, "data":Landroid/net/Uri;
    .local v12, "filterIntent":Landroid/content/Intent;
    :cond_1a
    move-object v10, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v12

    .line 1624
    .end local v5    # "filter":Landroid/content/IntentFilter;
    .end local v6    # "data":Landroid/net/Uri;
    .end local v12    # "filterIntent":Landroid/content/Intent;
    .end local v13    # "action":Ljava/lang/String;
    .end local v14    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "cat":I
    :cond_1b
    :goto_13
    if-eqz p1, :cond_1d

    .line 1625
    if-nez p3, :cond_1c

    .line 1626
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/ResolverActivity;->semSafelyStartActivtyAfterAnimation(Lcom/android/internal/app/chooser/TargetInfo;)V

    goto :goto_14

    .line 1628
    :cond_1c
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1633
    :goto_14
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/chooser/TargetInfo;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1634
    const/4 v1, 0x0

    return v1

    .line 1638
    :cond_1d
    const/4 v1, 0x1

    return v1
.end method

.method blacklist optionForChooserTarget(Lcom/android/internal/app/chooser/TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .locals 2
    .param p1, "target"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "index"    # I

    .line 948
    new-instance v0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;-><init>(Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method protected blacklist postRebuildList(Z)Z
    .locals 1
    .param p1, "rebuildCompleted"    # Z

    .line 1961
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->postRebuildListInternal(Z)Z

    move-result v0

    return v0
.end method

.method final blacklist postRebuildListInternal(Z)Z
    .locals 2
    .param p1, "rebuildCompleted"    # Z

    .line 1970
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v0

    .line 1974
    .local v0, "count":I
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->maybeAutolaunchActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1975
    const/4 v1, 0x1

    return v1

    .line 1978
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->setupViewVisibilities()V

    .line 1980
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1981
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->setupProfileTabs()V

    .line 1984
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method protected blacklist resetButtonBar()V
    .locals 10

    .line 2378
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-nez v0, :cond_0

    .line 2379
    return-void

    .line 2381
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportButtons:Z

    if-nez v0, :cond_1

    .line 2382
    return-void

    .line 2384
    :cond_1
    const v0, 0x1020235

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2385
    .local v0, "buttonLayout":Landroid/view/ViewGroup;
    if-nez v0, :cond_2

    .line 2386
    const-string v1, "ResolverActivity"

    const-string v2, "Layout unexpectedly does not have a button bar"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    return-void

    .line 2389
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 2390
    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    .line 2391
    .local v1, "activeListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    const v2, 0x10204e2

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2392
    .local v2, "buttonBarDivider":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    .line 2393
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    if-eqz v3, :cond_3

    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    goto :goto_0

    :cond_3
    move v3, v4

    .line 2394
    .local v3, "inset":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    .line 2395
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10502f0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v8, v3

    .line 2394
    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2398
    .end local v3    # "inset":I
    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->isTabLoaded()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 2399
    invoke-virtual {v3, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->shouldShowEmptyStateScreen(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2400
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v3

    if-nez v3, :cond_6

    .line 2401
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2402
    if-eqz v2, :cond_5

    .line 2403
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2405
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivity;->setButtonBarIgnoreOffset(Z)V

    .line 2406
    return-void

    .line 2408
    :cond_6
    if-eqz v2, :cond_7

    .line 2409
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2411
    :cond_7
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2412
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/internal/app/ResolverActivity;->setButtonBarIgnoreOffset(Z)V

    .line 2414
    const v3, 0x1020237

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    .line 2415
    const v3, 0x1020234

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    .line 2417
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    if-eqz v4, :cond_8

    if-eqz v3, :cond_8

    .line 2418
    const v3, 0x1040d13

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2419
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    const v4, 0x1040d12

    invoke-virtual {p0, v4}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2421
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->resetAlwaysOrOnceButtonBar()V

    .line 2422
    return-void
.end method

.method public blacklist resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
    .locals 4
    .param p1, "lhs"    # Landroid/content/pm/ResolveInfo;
    .param p2, "rhs"    # Landroid/content/pm/ResolveInfo;

    .line 2517
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 2518
    :cond_1
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_3

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 2520
    :cond_3
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2519
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2520
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    .line 2517
    :goto_0
    return v0
.end method

.method public blacklist safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V
    .locals 1
    .param p1, "cti"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 1652
    invoke-static {}, Landroid/os/StrictMode;->disableDeathOnFileUriExposure()V

    .line 1654
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 1655
    .local v0, "currentUserHandle":Landroid/os/UserHandle;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivityInternal(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1657
    .end local v0    # "currentUserHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 1658
    nop

    .line 1659
    return-void

    .line 1657
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 1658
    throw v0
.end method

.method public blacklist safelyStartActivityAsUser(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "cti"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1670
    invoke-static {}, Landroid/os/StrictMode;->disableDeathOnFileUriExposure()V

    .line 1672
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivityInternal(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1674
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 1675
    nop

    .line 1676
    return-void

    .line 1674
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 1675
    throw v0
.end method

.method public blacklist semGetAppIconTheme()Ljava/lang/String;
    .locals 1

    .line 2965
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAppIconTheme:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist semGetChooserAllSetFromProvider()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;",
            ">;"
        }
    .end annotation

    .line 2935
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAllChooserSetFromProvider:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist semGetOldItemCount()I
    .locals 1

    .line 2960
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mOldItemCount:I

    return v0
.end method

.method public blacklist semGetShareCommon()Lcom/samsung/android/share/SemShareCommon;
    .locals 1

    .line 2950
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSemShareCommon:Lcom/samsung/android/share/SemShareCommon;

    return-object v0
.end method

.method public blacklist semIsDestroyed()Z
    .locals 1

    .line 2529
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method public blacklist semIsFinishing()Z
    .locals 1

    .line 2534
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public blacklist semIsNeedCopyButton()Z
    .locals 1

    .line 3003
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semIsNeedSortingInRebuildList()Z
    .locals 1

    .line 2998
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->semIsNeedSortingInRebuildList()Z

    move-result v0

    return v0
.end method

.method public blacklist semIsNightMode()Z
    .locals 1

    .line 2929
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsNight:Z

    return v0
.end method

.method public blacklist semIsOverlayThemesEnabled()Z
    .locals 1

    .line 2970
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist semIsSendAction(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .line 2975
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2976
    return v0

    .line 2979
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2980
    .local v1, "action":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 2981
    return v0

    .line 2984
    :cond_1
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 2988
    :cond_2
    return v0

    .line 2985
    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist semIsSupportsAlwaysUseOption()Z
    .locals 1

    .line 2955
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    return v0
.end method

.method public blacklist semNeedSortAfterPinned()Z
    .locals 1

    .line 2940
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mNeedUpdateAfterPinned:Z

    return v0
.end method

.method public blacklist semOnForceHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 6
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 2908
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2909
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildActiveTab(Z)Z

    move-result v0

    .line 2910
    .local v0, "listRebuilt":Z
    if-eqz v0, :cond_0

    .line 2911
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 2912
    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    .line 2913
    .local v1, "activeListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->notifyDataSetChanged()V

    .line 2915
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v2

    .line 2916
    .local v2, "adapterView":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/GridView;

    if-eqz v3, :cond_0

    .line 2917
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v3

    .line 2918
    .local v3, "itemCount":I
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00c6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    .line 2919
    move-object v5, v2

    check-cast v5, Landroid/widget/GridView;

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 2922
    .end local v0    # "listRebuilt":Z
    .end local v1    # "activeListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    .end local v2    # "adapterView":Landroid/view/View;
    .end local v3    # "itemCount":I
    :cond_0
    goto :goto_0

    .line 2923
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->clearInactiveProfileCache()V

    .line 2925
    :goto_0
    return-void
.end method

.method public blacklist semSStarIsShowLinkShareChip()Z
    .locals 1

    .line 3023
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semSStarIsShowNearbyChip()Z
    .locals 1

    .line 3018
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semSStarIsShowNearbyPanel()Z
    .locals 1

    .line 3008
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semSStarIsShowShareLivePanel()Z
    .locals 1

    .line 3013
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist semSetForceTitleHide(Z)V
    .locals 2
    .param p1, "hide"    # Z

    .line 3199
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mForceTitleHide:Z

    .line 3200
    if-eqz p1, :cond_0

    .line 3201
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3202
    .local v0, "titleView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 3203
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3206
    .end local v0    # "titleView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public blacklist semSetNeedSortAfterPinned(Z)V
    .locals 0
    .param p1, "needUpdate"    # Z

    .line 2945
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mNeedUpdateAfterPinned:Z

    .line 2946
    return-void
.end method

.method public blacklist semSetNeedSortingInRebuildList(Z)V
    .locals 1
    .param p1, "needSort"    # Z

    .line 2993
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->semSetNeedSortingInRebuildList(Z)V

    .line 2994
    return-void
.end method

.method blacklist semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V
    .locals 4
    .param p1, "textview"    # Landroid/widget/TextView;
    .param p2, "resId"    # I

    .line 3036
    if-eqz p1, :cond_0

    .line 3037
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 3038
    .local v0, "defaultTextSize":I
    const/4 v1, 0x0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3040
    .end local v0    # "defaultTextSize":I
    :cond_0
    return-void
.end method

.method protected blacklist semStartActivtyAsUserAfterAnimation(Lcom/android/internal/app/chooser/TargetInfo;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 9
    .param p1, "cti"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 3104
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiParent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 3105
    const v0, 0x1020270

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, "v":Landroid/view/View;
    goto :goto_0

    .line 3107
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiParent:Landroid/widget/FrameLayout;

    .line 3110
    .restart local v0    # "v":Landroid/view/View;
    :goto_0
    if-nez v0, :cond_1

    .line 3112
    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Lcom/android/internal/app/chooser/TargetInfo;->startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3115
    goto :goto_1

    .line 3113
    :catch_0
    move-exception v1

    .line 3114
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "ResolverActivity"

    const-string/jumbo v3, "startActivity failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3116
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    return-void

    .line 3119
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->createExitAnimation(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    .line 3120
    new-instance v8, Lcom/android/internal/app/ResolverActivity$6;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/ResolverActivity$6;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/chooser/TargetInfo;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    invoke-virtual {v1, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3145
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 3146
    return-void
.end method

.method public blacklist sendVoiceChoicesIfNeeded()V
    .locals 6

    .line 925
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 927
    return-void

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v0

    .line 931
    .local v0, "count":I
    new-array v1, v0, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    .line 932
    .local v1, "options":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v1

    .local v3, "N":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 933
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v4

    .line 934
    .local v4, "target":Lcom/android/internal/app/chooser/TargetInfo;
    if-nez v4, :cond_1

    .line 937
    return-void

    .line 939
    :cond_1
    invoke-virtual {p0, v4, v2}, Lcom/android/internal/app/ResolverActivity;->optionForChooserTarget(Lcom/android/internal/app/chooser/TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    move-result-object v5

    aput-object v5, v1, v2

    .line 932
    .end local v4    # "target":Lcom/android/internal/app/chooser/TargetInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 942
    .end local v2    # "i":I
    .end local v3    # "N":I
    :cond_2
    new-instance v2, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    new-instance v3, Landroid/app/VoiceInteractor$Prompt;

    .line 943
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/VoiceInteractor$Prompt;-><init>(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    .line 944
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {v2, v3}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    .line 945
    return-void
.end method

.method protected final blacklist setAdditionalTargets([Landroid/content/Intent;)V
    .locals 4
    .param p1, "intents"    # [Landroid/content/Intent;

    .line 952
    if-eqz p1, :cond_0

    .line 953
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 954
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    .end local v2    # "intent":Landroid/content/Intent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 957
    :cond_0
    return-void
.end method

.method protected blacklist setRetainInOnStop(Z)V
    .locals 0
    .param p1, "retainInOnStop"    # Z

    .line 2509
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mRetainInOnStop:Z

    .line 2510
    return-void
.end method

.method public blacklist setSafeForwardingMode(Z)V
    .locals 0
    .param p1, "safeForwarding"    # Z

    .line 1058
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    .line 1059
    return-void
.end method

.method protected blacklist shouldAddFooterView()Z
    .locals 4

    .line 834
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 836
    :cond_0
    const v0, 0x1020235

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 837
    .local v0, "buttonBar":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 839
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 837
    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist shouldAutoLaunchSingleChoice(Lcom/android/internal/app/chooser/TargetInfo;)Z
    .locals 1
    .param p1, "target"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 1760
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->isSuspended()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist shouldGetActivityMetadata()Z
    .locals 1

    .line 1753
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist shouldShowTabs()Z
    .locals 2

    .line 806
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->hasWorkProfile()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/app/ResolverActivity;->ENABLE_TABBED_VIEW:Z

    if-eqz v0, :cond_0

    .line 808
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 809
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 810
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 806
    :goto_0
    return v1
.end method

.method blacklist showTargetDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 4
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .line 1765
    if-nez p1, :cond_0

    .line 1766
    return-void

    .line 1769
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    .line 1770
    const-string/jumbo v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x80000

    .line 1771
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1772
    .local v0, "in":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1773
    return-void
.end method

.method public blacklist startSelected(IZZ)V
    .locals 3
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "hasIndexBeenFiltered"    # Z

    .line 1313
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1314
    return-void

    .line 1316
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    .line 1317
    invoke-virtual {v0, p1, p3}, Lcom/android/internal/app/ResolverListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1318
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->hasManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1319
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1321
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1320
    invoke-direct {p0, v1}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileNotSupportedMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 1319
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1322
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1323
    return-void

    .line 1326
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    .line 1327
    invoke-virtual {v1, p1, p3}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v1

    .line 1328
    .local v1, "target":Lcom/android/internal/app/chooser/TargetInfo;
    if-nez v1, :cond_2

    .line 1329
    return-void

    .line 1331
    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1332
    if-eqz p2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v2, :cond_3

    .line 1333
    const/16 v2, 0x1c7

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_0

    .line 1335
    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v2, :cond_4

    .line 1336
    const/16 v2, 0x1c8

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_0

    .line 1339
    :cond_4
    const/16 v2, 0x1c9

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1342
    :goto_0
    nop

    .line 1343
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1344
    const/16 v2, 0x1c4

    goto :goto_1

    .line 1345
    :cond_5
    const/16 v2, 0x1c6

    .line 1342
    :goto_1
    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1346
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1348
    :cond_6
    return-void
.end method

.method protected blacklist super_onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 458
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 459
    return-void
.end method

.method public blacklist updateProfileViewButton()V
    .locals 4

    .line 988
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 989
    return-void

    .line 992
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 993
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    .line 994
    .local v0, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v1

    if-nez v1, :cond_2

    .line 995
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 996
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const v2, 0x10204ba

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 997
    .local v1, "text":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 998
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1000
    :cond_1
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1003
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x105046e

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/ResolverActivity;->semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V

    .line 1005
    .end local v1    # "text":Landroid/view/View;
    goto :goto_0

    .line 1006
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1008
    :goto_0
    return-void
.end method

.method public blacklist useLayoutWithDefault()Z
    .locals 1

    .line 2488
    const/4 v0, 0x0

    return v0
.end method
