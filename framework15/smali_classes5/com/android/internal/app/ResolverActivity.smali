.class public Lcom/android/internal/app/ResolverActivity;
.super Landroid/app/Activity;
.source "ResolverActivity.java"

# interfaces
.implements Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivity$ActionTitle;,
        Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;,
        Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;,
        Lcom/android/internal/app/ResolverActivity$ItemClickListener;,
        Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    }
.end annotation


# static fields
.field public static blacklist ENABLE_TABBED_VIEW:Z = false

.field static final blacklist EXTRA_CALLING_USER:Ljava/lang/String; = "com.android.internal.app.ResolverActivity.EXTRA_CALLING_USER"

.field private static final blacklist EXTRA_FRAGMENT_ARG_KEY:Ljava/lang/String; = ":settings:fragment_args_key"

.field public static final blacklist EXTRA_IS_AUDIO_CAPTURE_DEVICE:Ljava/lang/String; = "is_audio_capture_device"

.field protected static final blacklist EXTRA_RESTRICT_TO_SINGLE_USER:Ljava/lang/String; = "com.android.internal.app.ResolverActivity.EXTRA_RESTRICT_TO_SINGLE_USER"

.field protected static final blacklist EXTRA_SELECTED_PROFILE:Ljava/lang/String; = "com.android.internal.app.ResolverActivity.EXTRA_SELECTED_PROFILE"

.field private static final blacklist EXTRA_SHOW_FRAGMENT_ARGS:Ljava/lang/String; = ":settings:show_fragment_args"

.field private static final blacklist IS_OVERLAY_THEMES_ENABLED:Z = true

.field private static final blacklist LAST_SHOWN_TAB_KEY:Ljava/lang/String; = "last_shown_tab_key"

.field protected static final blacklist METRICS_CATEGORY_CHOOSER:Ljava/lang/String; = "intent_chooser"

.field protected static final blacklist METRICS_CATEGORY_RESOLVER:Ljava/lang/String; = "intent_resolver"

.field private static final blacklist OPEN_LINKS_COMPONENT_KEY:Ljava/lang/String; = "app_link_state"

.field protected static final blacklist PROFILE_PERSONAL:I = 0x0

.field protected static final blacklist PROFILE_WORK:I = 0x1

.field public static final blacklist SAVE_STATE_RECREATE_FROM_ALT_AI:Ljava/lang/String; = "recreate_from_alt_ai"

.field private static final blacklist SEM_INTENT_ACTION_AI_ASSIST:Ljava/lang/String; = "com.samsung.android.intent.action.AI_ASSIST"

.field private static final blacklist SEM_INTENT_EXTRA_AI_ALT_PRESS:Ljava/lang/String; = "is_alt_press"

.field private static final blacklist SEM_RESOLVER_REDUCE_TRANSPARENCY_DIM_AMOUNT_DARK:F = 0.65f

.field private static final blacklist SEM_RESOLVER_REDUCE_TRANSPARENCY_DIM_AMOUNT_LIGHT:F = 0.35f

.field private static final blacklist TAB_TAG_PERSONAL:Ljava/lang/String; = "personal"

.field private static final blacklist TAB_TAG_WORK:Ljava/lang/String; = "work"

.field private static final blacklist TAG:Ljava/lang/String; = "ResolverActivity"


# instance fields
.field private blacklist mAlwaysButton:Landroid/widget/Button;

.field private final blacklist mAnimDuration:I

.field private blacklist mAppIconTheme:Ljava/lang/String;

.field private blacklist mCloneProfileUserHandle:Landroid/os/UserHandle;

.field private blacklist mContext:Landroid/content/Context;

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

.field private blacklist mHasSubclassSpecifiedResolutions:Z

.field private blacklist mHeaderCreatorUser:Landroid/os/UserHandle;

.field protected final blacklist mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mIsAiAssist:Z

.field protected blacklist mIsAltAiPressed:Z

.field protected blacklist mIsDeskTopMode:Z

.field protected blacklist mIsDeviceDefault:Z

.field private final blacklist mIsIntentPicker:Z

.field private blacklist mIsKeyDownPressed:Z

.field protected blacklist mIsNight:Z

.field protected blacklist mIsPopOver:Z

.field protected blacklist mIsReduceTransparency:Z

.field private blacklist mLastSelected:I

.field protected final blacklist mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field protected blacklist mLaunchedFromUid:I

.field private blacklist mLaunchedFromUserHandle:Landroid/os/UserHandle;

.field private blacklist mLayoutId:I

.field protected blacklist mMaxColumns:I

.field protected blacklist mMultiParent:Landroid/widget/FrameLayout;

.field protected blacklist mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

.field protected blacklist mNeedUpdateAfterPinned:Z

.field private blacklist mOldItemCount:I

.field private blacklist mOnSwitchOnWorkSelectedListener:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;

.field private blacklist mOnceButton:Landroid/widget/Button;

.field protected blacklist mOrientation:I

.field private blacklist mPersonalPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private blacklist mPersonalProfileUserHandle:Landroid/os/UserHandle;

.field private blacklist mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

.field protected greylist mPm:Landroid/content/pm/PackageManager;

.field private blacklist mPrivateProfileUserHandle:Landroid/os/UserHandle;

.field private blacklist mProfileSwitchMessage:Ljava/lang/String;

.field protected blacklist mProfileView:Landroid/view/View;

.field protected blacklist mQuietModeManager:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

.field private blacklist mRecreatedFromAltAi:Z

.field private blacklist mReferrerPackage:Ljava/lang/String;

.field private blacklist mRegistered:Z

.field protected blacklist mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

.field private blacklist mResolvingHome:Z

.field private blacklist mRetainInOnStop:Z

.field private blacklist mSafeForwardingMode:Z

.field private blacklist mSecondDepth:Z

.field private blacklist mSelectTaskRecyclerView:Lcom/android/internal/widget/RecyclerView;

.field private blacklist mSemSelectTaskListAdapter:Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;

.field protected blacklist mSemShareCommon:Lcom/samsung/android/share/SemShareCommon;

.field protected blacklist mSemShareLogging:Lcom/samsung/android/share/SemShareLogging;

.field protected blacklist mSupportButtons:Z

.field protected blacklist mSupportsAlwaysUseOption:Z

.field protected blacklist mSystemWindowInsets:Landroid/graphics/Insets;

.field private blacklist mTabOwnerUserHandleForLaunch:Landroid/os/UserHandle;

.field private blacklist mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

.field private blacklist mTipsIcon:Landroid/widget/ImageView;

.field private blacklist mTitle:Ljava/lang/CharSequence;

.field private blacklist mWindowManager:Landroid/view/IWindowManager;

.field private blacklist mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private blacklist mWorkProfileHasBeenEnabled:Z

.field private blacklist mWorkProfileStateReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mWorkProfileUserHandle:Landroid/os/UserHandle;


# direct methods
.method public static synthetic blacklist $r8$lambda$0SyqK2eKxA-R6zW_x3Lk_0lBwpY(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->lambda$getWorkTabLabel$14()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$8c2LVgUbHYshmDsinldShgBb-lo(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->lambda$getPersonalTabAccessibilityLabel$15()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$9zGnN8vtbUHRfG1tWyMMgaEdHP4(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->lambda$createEmptyStateProvider$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BsRdF7-ohGJWTX1OmPSfg_gb1gE(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->lambda$getPersonalTabLabel$13()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$HhXfkpcQgehIgy0M8LfGrQ9bnr8(Lcom/android/internal/app/ResolverActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Mp2ynxI8ZXV20yZYBOEVprgh8yM(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity;->lambda$configureMiniResolverContent$9(Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$NtLzdjTRjDLHxBcZJ59hOPzj-FQ(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->lambda$configureMiniResolverContent$7(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$SYY3OylgXkyPrvOgTMW_RZ8v1OU(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->lambda$getWorkTabAccessibilityLabel$16()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$VFQtkDc-zbNWdMRapPyeyu18mUc(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->lambda$getForwardToPersonalMsg$2()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$VI4cWlrcxzy0mxBWzxCqRQRK44w(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->lambda$configureMiniResolverContent$10(Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cWbPekSjjdxhcaPNSDuzNhAV5HI(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->lambda$getForwardToWorkMsg$3()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$g8UVkgKXxgQjXS4AvPY_Yj3d_Xk(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->lambda$configureMiniResolverContent$5(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$gRYwsi53sb0rLxT_s_mBIboZKpQ(Lcom/android/internal/app/ResolverActivity;Landroid/widget/TabHost;Lcom/android/internal/widget/ViewPager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->lambda$setupProfileTabs$11(Landroid/widget/TabHost;Lcom/android/internal/widget/ViewPager;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qKg0eh4LdfiwgxEK5iWF4DxkhNE(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->lambda$configureMiniResolverContent$8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$sfmRPAMuauV4UKE6ASXt5vKmopM(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->lambda$configureMiniResolverContent$6()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$sk8No3Cw9x_IEIj2Aeq22UK7M4U(Lcom/android/internal/app/ResolverActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->lambda$getWorkProfileNotSupportedMsg$4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAlwaysButton(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/app/ResolverActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

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

.method static bridge synthetic blacklist -$$Nest$fgetmSelectTaskRecyclerView(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ResolverActivity;->mSelectTaskRecyclerView:Lcom/android/internal/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSemSelectTaskListAdapter(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ResolverActivity;->mSemSelectTaskListAdapter:Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;

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

.method static bridge synthetic blacklist -$$Nest$fputmSecondDepth(Lcom/android/internal/app/ResolverActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mSecondDepth:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSelectTaskRecyclerView(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mSelectTaskRecyclerView:Lcom/android/internal/widget/RecyclerView;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSemSelectTaskListAdapter(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mSemSelectTaskListAdapter:Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;

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

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/app/ResolverActivity;->ENABLE_TABBED_VIEW:Z

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mFooterSpacer:Landroid/widget/Space;

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileHasBeenEnabled:Z

    const/16 v1, 0x14a

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mAnimDuration:I

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mOldItemCount:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mExtraIntentList:Ljava/util/List;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeskTopMode:Z

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mForceTitleHide:Z

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mNeedUpdateAfterPinned:Z

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsReduceTransparency:Z

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSecondDepth:Z

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsPopOver:Z

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsAiAssist:Z

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsAltAiPressed:Z

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecreatedFromAltAi:Z

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsKeyDownPressed:Z

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getLatencyTracker()Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    return-void
.end method

.method protected constructor blacklist <init>(Z)V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mFooterSpacer:Landroid/widget/Space;

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileHasBeenEnabled:Z

    const/16 v1, 0x14a

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mAnimDuration:I

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mOldItemCount:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mExtraIntentList:Ljava/util/List;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeskTopMode:Z

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mForceTitleHide:Z

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mNeedUpdateAfterPinned:Z

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsReduceTransparency:Z

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSecondDepth:Z

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsPopOver:Z

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsAiAssist:Z

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsAltAiPressed:Z

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecreatedFromAltAi:Z

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsKeyDownPressed:Z

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getLatencyTracker()Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    return-void
.end method

.method private blacklist canAppInteractCrossProfiles(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-boolean v2, v1, Landroid/content/pm/ApplicationInfo;->crossProfile:Z

    if-nez v2, :cond_0

    return v0

    :cond_0
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-direct {p0, v3, v2}, Lcom/android/internal/app/ResolverActivity;->isPermissionGranted(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    return v4

    :cond_1
    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-direct {p0, v3, v2}, Lcom/android/internal/app/ResolverActivity;->isPermissionGranted(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    return v4

    :cond_2
    const-string v3, "android.permission.INTERACT_ACROSS_PROFILES"

    const/4 v5, -0x1

    invoke-static {p0, v3, v5, v2, p1}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    return v4

    :cond_3
    return v0

    :catch_0
    move-exception v1

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

    return v0
.end method

.method private blacklist checkIfNeedFRPWorkaround()Z
    .locals 5

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

    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    if-nez v0, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v1, "ResolverActivity"

    const-string v4, "Blocked for security reason!! Setup is not completed!!"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    return v1
.end method

.method private blacklist configureContentView()Z
    .locals 13

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v0, "configureContentView"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->checkIfNeedFRPWorkaround()Z

    move-result v0

    const v1, 0x10204c1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->showEmptyResolverListEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutResource()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->setupViewPager(Lcom/android/internal/widget/ViewPager;)V

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->maybeCreateHeader(Lcom/android/internal/app/ResolverListAdapter;)V

    return v2

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

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v9

    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    iget-object v11, p0, Lcom/android/internal/app/ResolverActivity;->mExtraIntentList:Ljava/util/List;

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/samsung/android/share/SemShareCommon;-><init>(Landroid/content/Context;Landroid/content/Intent;ZZZILjava/util/List;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSemShareCommon:Lcom/samsung/android/share/SemShareCommon;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSemShareCommon:Lcom/samsung/android/share/SemShareCommon;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSemShareCommon:Lcom/samsung/android/share/SemShareCommon;

    sget v3, Lcom/samsung/android/share/SemShareConstants;->SUPPORT_LOGGING:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/share/SemShareCommon;->isFeatureSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/share/SemShareLogging;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/samsung/android/share/SemShareLogging;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSemShareLogging:Lcom/samsung/android/share/SemShareLogging;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportButtons:Z

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildActiveTab(Z)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

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

    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildInactiveTab(Z)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

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

    :goto_3
    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    move v0, v2

    :goto_4
    move v3, v0

    :cond_7
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->shouldUseMiniResolver()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->configureMiniResolverContent()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v2

    :cond_8
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getPlaceholderCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mOldItemCount:I

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x1090121

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutId:I

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutResource()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutId:I

    :goto_5
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0, v4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->setupViewPager(Lcom/android/internal/widget/ViewPager;)V

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->postRebuildList(Z)Z

    move-result v0

    iget-boolean v4, p0, Lcom/android/internal/app/ResolverActivity;->mIsAiAssist:Z

    if-eqz v4, :cond_c

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    :cond_a
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->setVisibilityBlurEffect()V

    iget-boolean v4, p0, Lcom/android/internal/app/ResolverActivity;->mIsAltAiPressed:Z

    if-nez v4, :cond_c

    const v4, 0x1020590

    invoke-virtual {p0, v4}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_c

    const/16 v5, 0x450

    invoke-static {v5}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v5

    if-eqz v5, :cond_b

    nop

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040c9b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    nop

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040c99

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v8

    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1080990

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/16 v12, 0x32

    invoke-virtual {v11, v2, v2, v12, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v2, Landroid/text/style/ImageSpan;

    const/4 v12, 0x2

    invoke-direct {v2, v11, v12}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/16 v12, 0x21

    invoke-virtual {v10, v2, v8, v9, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_b
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_c
    :goto_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "mMultiProfilePagerAdapter.getCurrentListAdapter() cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist configureMiniResolverContent()V
    .locals 13

    const v0, 0x10900c1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutId:I

    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getCurrentProfile()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    move v2, v3

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    iget-object v4, v3, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    const v4, 0x1020006

    invoke-virtual {p0, v4}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/widget/ImageView;

    new-instance v12, Lcom/android/internal/app/ResolverActivity$5;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v12

    move-object v5, p0

    move-object v6, v3

    move-object v7, v10

    move-object v8, v10

    move-object v9, v11

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/app/ResolverActivity$5;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/widget/ImageView;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v12, v1}, Lcom/android/internal/app/ResolverActivity$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {v10}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    const-class v4, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v4}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v4

    const v5, 0x1020474

    const-string v6, "Core.MINIRESOLVER_OPEN_IN_PERSONAL"

    const v7, 0x10206a1

    if-eqz v2, :cond_1

    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v8, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda4;

    invoke-direct {v8, p0, v1}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v6, v8, v9}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v7}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    new-instance v8, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda5;

    invoke-direct {v8, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v4, v6, v8}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v8, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda6;

    invoke-direct {v8, p0, v1}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v9

    const-string v12, "Core.MINIRESOLVER_OPEN_IN_WORK"

    invoke-virtual {v4, v12, v8, v9}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v7}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    new-instance v8, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda7;

    invoke-direct {v8, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v4, v6, v8}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p0, v7}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda8;

    invoke-direct {v6, p0, v0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x1020241

    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda9;

    invoke-direct {v6, p0, v10, v3}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private blacklist createBlurInfoBuilder()Landroid/view/SemBlurInfo$Builder;
    .locals 5

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x11200f0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    const v1, 0x10603c6

    goto :goto_0

    :cond_0
    const v1, 0x10603c5

    :goto_0
    nop

    new-instance v2, Landroid/view/SemBlurInfo$Builder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v2

    return-object v2
.end method

.method private blacklist createExitAnimation(Landroid/view/View;)Landroid/animation/Animator;
    .locals 7

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    const-string/jumbo v1, "translationY"

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3ea8f5c3    # 0.33f

    invoke-direct {v2, v6, v4, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x14a

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    return-object v1
.end method

.method private blacklist createResolverMultiProfilePagerAdapterForOneProfile([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;
    .locals 10
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

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    move-object v0, p0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->createResolverListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->createQuietModeManager()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

    move-result-object v8

    new-instance v9, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->createEmptyStateProvider(Landroid/os/UserHandle;)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getCloneProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    const/4 v5, 0x0

    move-object v0, v9

    move-object v2, v7

    move-object v4, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;-><init>(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;Landroid/os/UserHandle;Landroid/os/UserHandle;)V

    return-object v9
.end method

.method private blacklist createResolverMultiProfilePagerAdapterForTwoProfiles([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;
    .locals 17
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

    move-object/from16 v9, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getCurrentProfile()I

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getIntentUser()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getTabOwnerUserHandleForLaunch()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    move v11, v0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    move v11, v0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getSelectedProfileExtra()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    move v0, v1

    move v11, v0

    goto :goto_0

    :cond_2
    move v11, v0

    :goto_0
    iget-object v2, v9, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    const/4 v7, 0x0

    if-nez v11, :cond_3

    move-object/from16 v3, p1

    goto :goto_1

    :cond_3
    move-object v3, v7

    :goto_1
    const/4 v8, 0x0

    const/4 v12, 0x1

    if-eqz p3, :cond_4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne v0, v1, :cond_4

    move v5, v12

    goto :goto_2

    :cond_4
    move v5, v8

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->createResolverListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v14

    iget-object v2, v9, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    if-ne v11, v12, :cond_5

    move-object/from16 v3, p1

    goto :goto_3

    :cond_5
    move-object v3, v7

    :goto_3
    if-eqz p3, :cond_6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {v14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne v0, v1, :cond_6

    move v5, v12

    goto :goto_4

    :cond_6
    move v5, v8

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->createResolverListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->createQuietModeManager()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

    move-result-object v15

    new-instance v16, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/internal/app/ResolverActivity;->createEmptyStateProvider(Landroid/os/UserHandle;)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getCloneProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    move-object/from16 v0, v16

    move-object v2, v13

    move-object v3, v12

    move-object v5, v15

    move v6, v11

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;-><init>(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V

    return-object v16
.end method

.method private blacklist createWorkProfileStateReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    new-instance v0, Lcom/android/internal/app/ResolverActivity$7;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$7;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    return-object v0
.end method

.method private blacklist fetchTabOwnerUserHandleForLaunch()Landroid/os/UserHandle;
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->privateSpaceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isLaunchedAsPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateProfileUserHandle:Landroid/os/UserHandle;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalProfileUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method private static blacklist getAttrColor(Landroid/content/Context;I)I
    .locals 2

    filled-new-array {p1}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v1
.end method

.method private blacklist getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, v6

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

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

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "ResolverActivity"

    const-string v3, "Exception at getEnterprisePolicyEnabled "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    :goto_1
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist getForwardToPersonalMsg()Ljava/lang/String;
    .locals 3

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    const-string v2, "Core.FORWARD_INTENT_TO_PERSONAL"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getForwardToWorkMsg()Ljava/lang/String;
    .locals 3

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    const-string v2, "Core.FORWARD_INTENT_TO_WORK"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getIntentUser()Landroid/os/UserHandle;
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.internal.app.ResolverActivity.EXTRA_CALLING_USER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v2, Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static blacklist getLabelRes(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->labelRes:I

    return v0
.end method

.method private blacklist getLatencyTracker()Lcom/android/internal/util/LatencyTracker;
    .locals 1

    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getPersonalTabAccessibilityLabel()Ljava/lang/String;
    .locals 3

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda11;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    const-string v2, "Core.RESOLVER_PERSONAL_TAB_ACCESSIBILITY"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getPersonalTabLabel()Ljava/lang/String;
    .locals 3

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    const-string v2, "Core.RESOLVER_PERSONAL_TAB"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getResolveInfoUserHandle(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;)Landroid/os/UserHandle;
    .locals 2

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResolveInfo with null UserHandle found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResolverActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method private blacklist getWorkProfileNotSupportedMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda12;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/String;)V

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Core.RESOLVER_WORK_PROFILE_NOT_SUPPORTED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getWorkTabAccessibilityLabel()Ljava/lang/String;
    .locals 3

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda16;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    const-string v2, "Core.RESOLVER_WORK_TAB_ACCESSIBILITY"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getWorkTabLabel()Ljava/lang/String;
    .locals 3

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    const-string v2, "Core.RESOLVER_WORK_TAB"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist hasCloneProfile()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getCloneProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist hasManagedProfile()Z
    .locals 6

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    goto :goto_0

    :cond_2
    nop

    return v1

    :catch_0
    move-exception v2

    return v1
.end method

.method private blacklist hasWorkProfile()Z
    .locals 1

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

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

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

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    return v0
.end method

.method static final blacklist isSpecificUriMatch(I)Z
    .locals 1

    const/high16 v0, 0xfff0000

    and-int/2addr p0, v0

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

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private synthetic blacklist lambda$configureMiniResolverContent$10(Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter;Landroid/view/View;)V
    .locals 1

    iget-object v0, p2, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListController;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivityAsUser(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    return-void
.end method

.method private synthetic blacklist lambda$configureMiniResolverContent$5(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    const v0, 0x104086d

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$configureMiniResolverContent$6()Ljava/lang/String;
    .locals 1

    const v0, 0x1040876

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$configureMiniResolverContent$7(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    const v0, 0x104086e

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$configureMiniResolverContent$8()Ljava/lang/String;
    .locals 1

    const v0, 0x1040875

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$configureMiniResolverContent$9(Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    return-void
.end method

.method private synthetic blacklist lambda$createEmptyStateProvider$1()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mOnSwitchOnWorkSelectedListener:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mOnSwitchOnWorkSelectedListener:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;

    invoke-interface {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;->onSwitchOnWorkSelected()V

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$getForwardToPersonalMsg$2()Ljava/lang/String;
    .locals 1

    const v0, 0x10405aa

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getForwardToWorkMsg$3()Ljava/lang/String;
    .locals 1

    const v0, 0x10405ab

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getPersonalTabAccessibilityLabel$15()Ljava/lang/String;
    .locals 1

    const v0, 0x1040c98

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getPersonalTabLabel$13()Ljava/lang/String;
    .locals 1

    const v0, 0x1040c97

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getWorkProfileNotSupportedMsg$4(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const v0, 0x1040195

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getWorkTabAccessibilityLabel$16()Ljava/lang/String;
    .locals 1

    const v0, 0x1040c9f

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getWorkTabLabel$14()Ljava/lang/String;
    .locals 1

    const v0, 0x1040c9e

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$onCreate$0(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mTipsIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->semCreateAndShowTipsPopup(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$setupProfileTabs$11(Landroid/widget/TabHost;Lcom/android/internal/widget/ViewPager;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->updateActiveTabStyle(Landroid/widget/TabHost;)V

    const-string/jumbo v0, "personal"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->setupViewVisibilities()V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->maybeLogProfileChange()V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->onProfileTabSelected()V

    nop

    const/16 v0, 0x9c

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setInt(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMetricsCategory()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    return-void
.end method

.method static synthetic blacklist lambda$setupProfileTabs$12(Landroid/widget/TabHost;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private blacklist makeMyIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, -0x1001

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method private blacklist makeResolverComparator(Landroid/os/UserHandle;)Lcom/android/internal/app/AbstractResolverComparator;
    .locals 10

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mHasSubclassSpecifiedResolutions:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/app/NoOpResolverComparator;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->getResolverRankerServiceUserHandleList(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/app/NoOpResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->getResolverRankerServiceUserHandleList(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;Lcom/android/internal/app/ChooserActivityLogger;Ljava/util/List;)V

    return-object v0
.end method

.method private blacklist maybeAutolaunchActivity()Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->maybeAutolaunchIfSingleTarget()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->isTabLoaded()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->isTabLoaded()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->maybeAutolaunchIfNoAppsOnInactiveTab()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->maybeAutolaunchIfCrossProfileSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist maybeAutolaunchIfCrossProfileSupported()Z
    .locals 10

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    return v2

    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v5

    if-eq v5, v3, :cond_1

    return v2

    :cond_1
    nop

    invoke-virtual {v0, v2, v2}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v5

    invoke-virtual {v4, v2, v2}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v6

    invoke-interface {v5}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-interface {v6}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverActivity;->shouldAutoLaunchSingleChoice(Lcom/android/internal/app/chooser/TargetInfo;)Z

    move-result v7

    if-nez v7, :cond_3

    return v2

    :cond_3
    invoke-interface {v5}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->canAppInteractCrossProfiles(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    return v2

    :cond_4
    nop

    const/16 v2, 0xa1

    invoke-static {v2}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v2, v8}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMetricsCategory()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    return v3
.end method

.method private blacklist maybeAutolaunchIfNoAppsOnInactiveTab()Z
    .locals 5

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v4

    invoke-virtual {v4, v1, v1}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    return v2
.end method

.method private blacklist maybeAutolaunchIfSingleTarget()Z
    .locals 5

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ResolverListAdapter;->getDisplayResolveInfo(I)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getSimilarList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_2

    return v1

    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3, v1, v1}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->shouldAutoLaunchSingleChoice(Lcom/android/internal/app/chooser/TargetInfo;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    return v2

    :cond_3
    return v1
.end method

.method private blacklist maybeCreateHeader(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mHeaderCreatorUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mHeaderCreatorUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v0

    const/16 v1, 0x8

    const v2, 0x1020016

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getPlaceholderCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mForceTitleHide:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/ResolverActivity;->mDefaultTitleResId:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->getTitleForAction(Landroid/content/Intent;I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    nop

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setTitle(Ljava/lang/CharSequence;)V

    const v2, 0x10504f8

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/ResolverActivity;->semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V

    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mHeaderCreatorUser:Landroid/os/UserHandle;

    return-void
.end method

.method private blacklist maybeHideDivider()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x10202c8

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private blacklist maybeLogCrossProfileTargetLaunch(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->hasWorkProfile()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    nop

    const/16 v0, 0x9b

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMetricsCategory()Ljava/lang/String;

    move-result-object v1

    instance-of v2, p1, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    if-eqz v2, :cond_1

    const-string v2, "direct_share"

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "other_target"

    :goto_0
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private blacklist privateSpaceEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/multiuser/Flags;->allowResolverSheetForPrivateSpace()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist registerWorkProfileStateReceiver()V
    .locals 7

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileStateReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/ResolverActivity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private blacklist resetAlwaysOrOnceButtonBar()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050439

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    int-to-float v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/app/ResolverActivity;->semCheckMaxFontScale(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    int-to-float v2, v0

    invoke-virtual {v1, v3, v2}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/app/ResolverActivity;->semCheckMaxFontScale(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSemShareCommon:Lcom/samsung/android/share/SemShareCommon;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSemShareCommon:Lcom/samsung/android/share/SemShareCommon;

    sget v4, Lcom/samsung/android/share/SemShareConstants;->SUPPORT_SHOW_BUTTON_SHAPES:I

    invoke-virtual {v1, v4}, Lcom/samsung/android/share/SemShareCommon;->isFeatureSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, v3, v0, v3}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->getFilteredPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eq v1, v0, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/app/ResolverActivity;->mSupportButtons:Z

    if-eqz v4, :cond_1

    invoke-direct {p0, v2, v1, v3}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView;

    if-eqz v3, :cond_2

    iget-boolean v4, p0, Lcom/android/internal/app/ResolverActivity;->mSupportButtons:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v4

    if-eq v4, v0, :cond_2

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v0

    invoke-direct {p0, v2, v0, v2}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private blacklist resetCheckedItem()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    :cond_1
    return-void
.end method

.method private blacklist semCheckMaxFontScale(Landroid/widget/TextView;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const v1, 0x3f99999a    # 1.2f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    int-to-float v2, p2

    div-float/2addr v2, v0

    const/4 v3, 0x0

    mul-float/2addr v1, v2

    invoke-virtual {p1, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method private blacklist semCreateAndShowTipsPopup(Landroid/view/View;)V
    .locals 7

    new-instance v0, Lcom/samsung/android/widget/SemTipPopup;

    invoke-direct {v0, p1}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    const v2, 0x1040e20

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    new-array v2, v0, [I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v4, 0x0

    aget v4, v2, v4

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mTipsIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    div-int/2addr v5, v0

    add-int/2addr v4, v5

    aget v1, v2, v1

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mTipsIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    add-int/2addr v1, v5

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10504fe

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v1, v5

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    return-void
.end method

.method private blacklist semFinishAfterAnimation()V
    .locals 3

    const v0, 0x1020278

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiParent:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGalleryRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiParent:Landroid/widget/FrameLayout;

    goto :goto_1

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

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->createExitAnimation(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    new-instance v2, Lcom/android/internal/app/ResolverActivity$9;

    invoke-direct {v2, p0}, Lcom/android/internal/app/ResolverActivity$9;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    return-void

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    return-void
.end method

.method private blacklist semSafelyStartActivtyAfterAnimation(Lcom/android/internal/app/chooser/TargetInfo;)V
    .locals 3

    const v0, 0x1020278

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiParent:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGalleryRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiParent:Landroid/widget/FrameLayout;

    goto :goto_1

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

    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->createExitAnimation(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    new-instance v2, Lcom/android/internal/app/ResolverActivity$8;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/app/ResolverActivity$8;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/chooser/TargetInfo;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    return-void

    :cond_3
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    return-void
.end method

.method private blacklist semSetupAdapterListView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ItemClickListener;)V
    .locals 5

    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    instance-of v0, p1, Landroid/widget/GridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActiveProfile : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "itemCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResolverActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p1

    check-cast v2, Landroid/widget/GridView;

    iget v4, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    :cond_1
    return-void
.end method

.method private blacklist semTransitionOverride(Landroid/content/Context;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsPopOver:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeskTopMode:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const v0, 0x10a012c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->overridePendingTransition(II)V

    goto :goto_1

    :cond_2
    const v0, 0x10a012b

    const v1, 0x10a0128

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->overridePendingTransition(II)V

    goto :goto_1

    :cond_3
    :goto_0
    const v0, 0x10a0129

    const v1, 0x10a012a

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->overridePendingTransition(II)V

    :goto_1
    return-void
.end method

.method private blacklist setAlwaysButtonEnabled(ZIZ)V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lcom/android/internal/app/ResolverListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    const-string v3, "ResolverActivity"

    if-nez v2, :cond_1

    const-string v1, "Invalid position supplied to setAlwaysButtonEnabled"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v4, v2, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_2

    const-string v4, "Attempted to set selection to resolve info for another user"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040193

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    if-eqz v2, :cond_5

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v6, "android.permission.RECORD_AUDIO"

    invoke-virtual {v4, v6, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    move v4, v1

    :goto_1
    if-nez v4, :cond_5

    nop

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "is_audio_capture_device"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/lit8 v5, v1, 0x1

    move v0, v5

    :cond_5
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private blacklist setButtonBarIgnoreOffset(Z)V
    .locals 2

    const v0, 0x102023f

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    nop

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    iput-boolean p1, v1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private blacklist setProfileSwitchMessage(I)V
    .locals 7

    const/4 v0, -0x2

    if-eq p1, v0, :cond_6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p1, v0, :cond_6

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    nop

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v4

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v2

    goto :goto_2

    :cond_2
    nop

    :goto_2
    if-nez v5, :cond_5

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v3, :cond_4

    if-nez v4, :cond_4

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getForwardToPersonalMsg()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessage:Ljava/lang/String;

    goto :goto_4

    :cond_4
    if-nez v3, :cond_6

    if-eqz v4, :cond_6

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getForwardToWorkMsg()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessage:Ljava/lang/String;

    goto :goto_4

    :cond_5
    :goto_3
    return-void

    :cond_6
    :goto_4
    return-void
.end method

.method private blacklist setVisibilityBlurEffect()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_reduce_transparency"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10504c3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10603d0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const v6, 0x1020591

    invoke-virtual {v0, v6}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x10204c2

    invoke-virtual {v0, v7}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x102023f

    invoke-virtual {v0, v8}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x1020011

    invoke-virtual {v0, v9}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    invoke-virtual {v7, v3}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v9, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    iget-boolean v10, v0, Lcom/android/internal/app/ResolverActivity;->mIsAltAiPressed:Z

    const/16 v11, 0x8

    if-eqz v10, :cond_3

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    :cond_1
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float v10, v4

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v7, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez v1, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->createBlurInfoBuilder()Landroid/view/SemBlurInfo$Builder;

    move-result-object v10

    int-to-float v11, v4

    int-to-float v12, v4

    int-to-float v13, v4

    int-to-float v14, v4

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(FFFF)Landroid/view/SemBlurInfo$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    :cond_2
    goto/16 :goto_1

    :cond_3
    new-instance v10, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v10, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float v12, v4

    int-to-float v13, v4

    int-to-float v14, v4

    int-to-float v15, v4

    new-array v0, v11, [F

    aput v12, v0, v3

    aput v13, v0, v2

    const/4 v12, 0x2

    aput v14, v0, v12

    const/4 v13, 0x3

    aput v15, v0, v13

    const/4 v14, 0x4

    const/4 v15, 0x0

    aput v15, v0, v14

    const/16 v16, 0x5

    aput v15, v0, v16

    const/16 v17, 0x6

    aput v15, v0, v17

    const/16 v18, 0x7

    aput v15, v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float v14, v4

    int-to-float v13, v4

    int-to-float v12, v4

    int-to-float v2, v4

    new-array v11, v11, [F

    aput v15, v11, v3

    const/4 v3, 0x1

    aput v15, v11, v3

    const/4 v3, 0x2

    aput v15, v11, v3

    const/4 v3, 0x3

    aput v15, v11, v3

    const/4 v3, 0x4

    aput v14, v11, v3

    aput v13, v11, v16

    aput v12, v11, v17

    aput v2, v11, v18

    invoke-virtual {v0, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez v1, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->createBlurInfoBuilder()Landroid/view/SemBlurInfo$Builder;

    move-result-object v2

    int-to-float v3, v4

    int-to-float v11, v4

    invoke-virtual {v2, v3, v11, v15, v15}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(FFFF)Landroid/view/SemBlurInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->createBlurInfoBuilder()Landroid/view/SemBlurInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->createBlurInfoBuilder()Landroid/view/SemBlurInfo$Builder;

    move-result-object v2

    int-to-float v3, v4

    int-to-float v11, v4

    invoke-virtual {v2, v15, v15, v3, v11}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(FFFF)Landroid/view/SemBlurInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private blacklist setupAdapterListView(Landroid/widget/ListView;Lcom/android/internal/app/ResolverActivity$ItemClickListener;)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    :cond_0
    return-void
.end method

.method private blacklist setupProfileTabs()V
    .locals 9

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->maybeHideDivider()V

    const v0, 0x10204c2

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    const v1, 0x10204c1

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ViewPager;->setSaveEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    const v6, 0x109017f

    invoke-virtual {v4, v6, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalTabLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalTabAccessibilityLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string/jumbo v5, "personal"

    invoke-virtual {v0, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v8

    invoke-virtual {v7, v6, v8, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkTabLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkTabAccessibilityLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string/jumbo v7, "work"

    invoke-virtual {v0, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TabWidget;->setVisibility(I)V

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->updateActiveTabStyle(Landroid/widget/TabHost;)V

    new-instance v7, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda17;

    invoke-direct {v7, p0, v0, v2}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda17;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/widget/TabHost;Lcom/android/internal/widget/ViewPager;)V

    invoke-virtual {v0, v7}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ViewPager;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    new-instance v7, Lcom/android/internal/app/ResolverActivity$6;

    invoke-direct {v7, p0, v0}, Lcom/android/internal/app/ResolverActivity$6;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/widget/TabHost;)V

    invoke-virtual {v3, v7}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->setOnProfileSelectedListener(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;)V

    new-instance v3, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda18;

    invoke-direct {v3, v0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda18;-><init>(Landroid/widget/TabHost;)V

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mOnSwitchOnWorkSelectedListener:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;

    return-void
.end method

.method private blacklist setupViewVisibilities()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->shouldShowEmptyStateScreen(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->addUseDifferentAppLabelIfNecessary(Lcom/android/internal/app/ResolverListAdapter;)V

    :cond_0
    return-void
.end method

.method private blacklist shouldUseMiniResolver()Z
    .locals 8

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-string v4, "ResolverActivity"

    if-eqz v3, :cond_2

    const-string v3, "No targets in the current profile"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_3

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

    return v1

    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-boolean v3, v3, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v3, :cond_4

    const-string v3, "Other profile is a web browser"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

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

    invoke-virtual {v6}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-boolean v7, v7, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-nez v7, :cond_5

    const-string v3, "Non-browser found in this profile"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    goto :goto_0

    :cond_6
    return v5

    :cond_7
    :goto_1
    return v1
.end method

.method private blacklist supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method private blacklist updateActiveTabStyle(Landroid/widget/TabHost;)V
    .locals 4

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    rsub-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method private blacklist updateIntentPickerPaddings()V
    .locals 7

    const v0, 0x1020658

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    nop

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050395

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    const v1, 0x102023e

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    nop

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050384

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected blacklist addPreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/content/pm/PackageManager;->addUniquePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    return-void
.end method

.method public blacklist addUseDifferentAppLabelIfNecessary(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 0

    return-void
.end method

.method protected blacklist appliedThemeResId()I
    .locals 1

    const v0, 0x1030444

    return v0
.end method

.method protected blacklist applyFooterView(I)V
    .locals 0

    return-void
.end method

.method protected blacklist createBlockerEmptyStateProvider()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getIntentUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/internal/app/ResolverActivity$4;

    move-object/from16 v10, p0

    invoke-direct {v1, v10}, Lcom/android/internal/app/ResolverActivity$4;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    return-object v1

    :cond_0
    move-object/from16 v10, p0

    new-instance v13, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;

    const/16 v8, 0x9e

    const-string/jumbo v9, "intent_resolver"

    const-string v4, "Core.RESOLVER_CROSS_PROFILE_BLOCKED_TITLE"

    const v5, 0x1040c94

    const-string v6, "Core.RESOLVER_CANT_ACCESS_PERSONAL"

    const v7, 0x1040c90

    move-object v2, v13

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    new-instance v14, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;

    const/16 v8, 0x9f

    const-string/jumbo v9, "intent_resolver"

    const-string v4, "Core.RESOLVER_CROSS_PROFILE_BLOCKED_TITLE"

    const-string v6, "Core.RESOLVER_CANT_ACCESS_WORK"

    const v7, 0x1040c91

    move-object v2, v14

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    new-instance v1, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->createCrossProfileIntentsChecker()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getTabOwnerUserHandleForLaunch()Landroid/os/UserHandle;

    move-result-object v16

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider;-><init>(Landroid/os/UserHandle;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;Landroid/os/UserHandle;)V

    return-object v1
.end method

.method protected blacklist createCrossProfileIntentsChecker()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;
    .locals 2

    new-instance v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;-><init>(Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method protected blacklist createEmptyStateProvider(Landroid/os/UserHandle;)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->createBlockerEmptyStateProvider()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;

    move-result-object v0

    new-instance v7, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mQuietModeManager:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

    new-instance v5, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda13;

    invoke-direct {v5, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda13;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMetricsCategory()Ljava/lang/String;

    move-result-object v6

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;Ljava/lang/String;)V

    new-instance v8, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMetricsCategory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTabOwnerUserHandleForLaunch()Landroid/os/UserHandle;

    move-result-object v7

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/UserHandle;)V

    new-instance v3, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CompositeEmptyStateProvider;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    invoke-direct {v3, v4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CompositeEmptyStateProvider;-><init>([Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;)V

    return-object v3
.end method

.method protected blacklist createListController(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListController;
    .locals 12

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->getQueryIntentsUser(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object v9

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->makeResolverComparator(Landroid/os/UserHandle;)Lcom/android/internal/app/AbstractResolverComparator;

    move-result-object v10

    new-instance v11, Lcom/android/internal/app/ResolverListController;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move-object v0, v11

    move-object v1, p0

    move-object v6, p1

    move-object v7, v10

    move-object v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/ResolverListController;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;Lcom/android/internal/app/AbstractResolverComparator;Landroid/os/UserHandle;)V

    return-object v11
.end method

.method protected blacklist createMultiProfilePagerAdapter([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
    .locals 2
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

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v1

    if-eqz v1, :cond_0

    nop

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->createResolverMultiProfilePagerAdapterForTwoProfiles([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->createResolverMultiProfilePagerAdapterForOneProfile([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected blacklist createMyUserIdProvider()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$MyUserIdProvider;
    .locals 1

    new-instance v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$MyUserIdProvider;

    invoke-direct {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$MyUserIdProvider;-><init>()V

    return-object v0
.end method

.method protected blacklist createPackageMonitor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/content/PackageMonitor;
    .locals 1

    new-instance v0, Lcom/android/internal/app/ResolverActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ResolverActivity$1;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverListAdapter;)V

    return-object v0
.end method

.method protected blacklist createQuietModeManager()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;
    .locals 2

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    new-instance v1, Lcom/android/internal/app/ResolverActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/app/ResolverActivity$3;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/os/UserManager;)V

    return-object v1
.end method

.method protected blacklist createResolverListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;
    .locals 15
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

    move-object/from16 v0, p6

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    nop

    const-string/jumbo v2, "is_audio_capture_device"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    nop

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isLaunchedAsCloneProfile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getCloneProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    move-object v13, v3

    goto :goto_0

    :cond_0
    move-object v13, v0

    :goto_0
    new-instance v3, Lcom/android/internal/app/ResolverListAdapter;

    move-object v14, p0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->createListController(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListController;

    move-result-object v10

    move-object v4, v3

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object v11, p0

    move v12, v2

    invoke-direct/range {v4 .. v13}, Lcom/android/internal/app/ResolverListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLcom/android/internal/app/ResolverListController;Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;ZLandroid/os/UserHandle;)V

    return-object v3
.end method

.method blacklist dismiss()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected blacklist fetchCloneProfileUserHandle()Landroid/os/UserHandle;
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mCloneProfileUserHandle:Landroid/os/UserHandle;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalProfileUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

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

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mCloneProfileUserHandle:Landroid/os/UserHandle;

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mCloneProfileUserHandle:Landroid/os/UserHandle;

    return-object v1
.end method

.method protected blacklist fetchPersonalProfileUserHandle()Landroid/os/UserHandle;
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalProfileUserHandle:Landroid/os/UserHandle;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalProfileUserHandle:Landroid/os/UserHandle;

    :goto_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalProfileUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method protected blacklist fetchPrivateProfileUserHandle()Landroid/os/UserHandle;
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateProfileUserHandle:Landroid/os/UserHandle;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalProfileUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

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

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateProfileUserHandle:Landroid/os/UserHandle;

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateProfileUserHandle:Landroid/os/UserHandle;

    return-object v1
.end method

.method protected blacklist fetchWorkProfileUserProfile()Landroid/os/UserHandle;
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsAiAssist:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    return-object v0

    :cond_0
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalProfileUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    return-object v1
.end method

.method public whitelist finish()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    invoke-direct {p0, p0, v0}, Lcom/android/internal/app/ResolverActivity;->semTransitionOverride(Landroid/content/Context;I)V

    return-void
.end method

.method protected blacklist getCloneProfileUserHandle()Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mCloneProfileUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method protected blacklist getCurrentProfile()I
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method blacklist getFontScale()F
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const v1, 0x3f99999a    # 1.2f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const v0, 0x3f99999a    # 1.2f

    :cond_0
    return v0
.end method

.method public blacklist getLayoutResource()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsAiAssist:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsAltAiPressed:Z

    if-eqz v0, :cond_0

    const v0, 0x1090176

    return v0

    :cond_0
    const v0, 0x1090175

    return v0

    :cond_1
    const v0, 0x109017b

    return v0
.end method

.method protected blacklist getMetricsCategory()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "intent_resolver"

    return-object v0
.end method

.method protected blacklist getPersonalProfileUserHandle()Landroid/os/UserHandle;
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->privateSpaceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isLaunchedInSingleUserMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTabOwnerUserHandleForLaunch()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalProfileUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method protected blacklist getPrivateProfileUserHandle()Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateProfileUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method protected final blacklist getQueryIntentsUser(Landroid/os/UserHandle;)Landroid/os/UserHandle;
    .locals 2

    move-object v0, p1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isLaunchedAsCloneProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getCloneProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected blacklist getReferrerPackageName()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrer()Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getReferrer error!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResolverActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "android-app"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    return-object p2
.end method

.method public final blacklist getResolverRankerServiceUserHandleList(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->getResolverRankerServiceUserHandleListInternal(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getResolverRankerServiceUserHandleListInternal(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getCloneProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getCloneProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method blacklist getSelectedProfileExtra()I
    .locals 4

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.internal.app.ResolverActivity.EXTRA_SELECTED_PROFILE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

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

    :cond_1
    :goto_0
    return v0
.end method

.method protected blacklist getTabOwnerUserHandleForLaunch()Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mTabOwnerUserHandleForLaunch:Landroid/os/UserHandle;

    return-object v0
.end method

.method public blacklist getTargetIntent()Landroid/content/Intent;
    .locals 2

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

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v0

    :goto_0
    nop

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->getFilteredPosition()I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    if-ne v0, v2, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    iget v2, v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->titleRes:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected blacklist getWorkProfileUserHandle()Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method protected final blacklist isLaunchedAsCloneProfile()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->hasCloneProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getCloneProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final blacklist isLaunchedAsPrivateProfile()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPrivateProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPrivateProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final blacklist isLaunchedInSingleUserMode()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isLaunchedAsPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.internal.app.ResolverActivity.EXTRA_RESTRICT_TO_SINGLE_USER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected blacklist maybeLogProfileChange()V
    .locals 0

    return-void
.end method

.method public blacklist onActivityStarted(Lcom/android/internal/app/chooser/TargetInfo;)V
    .locals 0

    return-void
.end method

.method protected blacklist onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->left:I

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->top:I

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->right:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->resetButtonBar()V

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->shouldUseMiniResolver()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x102023f

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050384

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldAddFooterView()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->applyFooterView(I)V

    :cond_1
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onBackPressed()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSecondDepth:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSecondDepth:Z

    const v1, 0x10204c1

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager;

    const v2, 0x1020594

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ViewPager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x10204f6

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ViewPager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mDefaultTitleResId:I

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/app/ResolverActivity;->getTitleForAction(Landroid/content/Intent;I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    nop

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x1020016

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->semFinishAfterAnimation()V

    :goto_1
    return-void
.end method

.method public blacklist onButtonClick(Landroid/view/View;)V
    .locals 10

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mSecondDepth:Z

    const/4 v2, 0x0

    const v3, 0x102023d

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSemSelectTaskListAdapter:Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;

    iget v1, v1, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->mSelectedItem:I

    if-ne v0, v3, :cond_0

    move v2, v4

    :cond_0
    invoke-virtual {p0, v1, v2, v4}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v5}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverListAdapter;->getFilteredPosition()I

    move-result v6

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v6

    :goto_0
    nop

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v7

    xor-int/2addr v7, v4

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    return-void

    :cond_3
    if-ne v0, v3, :cond_4

    move v2, v4

    :cond_4
    invoke-virtual {p0, v8, v2, v7}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    :goto_1
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mOrientation:I

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsAiAssist:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050391

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->semSetMaxWidth(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->handlePackagesChanged()V

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->shouldUseMiniResolver()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->updateIntentPickerPaddings()V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->left:I

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->top:I

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->right:I

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setPadding(IIII)V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    :cond_3
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 10

    iput-object p0, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v9

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "android.intent.category.HOME"

    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->setSafeForwardingMode(Z)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v8

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    return-void
.end method

.method protected blacklist onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 16
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    move/from16 v4, p7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->appliedThemeResId()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/internal/app/ResolverActivity;->setTheme(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v6, v5, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0x30

    const/16 v7, 0x20

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v6, v7, :cond_0

    move v6, v8

    goto :goto_0

    :cond_0
    move v6, v9

    :goto_0
    iput-boolean v6, v0, Lcom/android/internal/app/ResolverActivity;->mIsNight:Z

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v6, "ResolverActivity"

    if-nez v4, :cond_2

    const-string/jumbo v7, "true"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    const-string v11, "android.intent.action.SEND"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "android.intent.action.SENDTO"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "UNLIMITED_SHARE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v13, "isShareListAllowed"

    invoke-direct {v0, v11, v12, v13, v7}, Lcom/android/internal/app/ResolverActivity;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "action - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onCreate(): isShareListAllowed("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v11, :cond_2

    const-string/jumbo v8, "onCreate(): ShareList is not allowed"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    return-void

    :cond_2
    if-eqz v3, :cond_3

    move v7, v8

    goto :goto_1

    :cond_3
    move v7, v9

    :goto_1
    iput-boolean v7, v0, Lcom/android/internal/app/ResolverActivity;->mHasSubclassSpecifiedResolutions:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->createQuietModeManager()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/ResolverActivity;->mQuietModeManager:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getContentUserHint()I

    move-result v7

    invoke-direct {v0, v7}, Lcom/android/internal/app/ResolverActivity;->setProfileSwitchMessage(I)V

    iget v7, v5, Landroid/content/res/Configuration;->orientation:I

    iput v7, v0, Lcom/android/internal/app/ResolverActivity;->mOrientation:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x10e00db

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, v0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "current_sec_appicon_theme_package"

    invoke-static {v7, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/ResolverActivity;->mAppIconTheme:Ljava/lang/String;

    iget v7, v5, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne v7, v8, :cond_4

    move v7, v8

    goto :goto_2

    :cond_4
    move v7, v9

    :goto_2
    iput-boolean v7, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeskTopMode:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getLaunchedFromUid()I

    move-result v7

    iput v7, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    iget v7, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUserHandle:Landroid/os/UserHandle;

    iget v7, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    if-ltz v7, :cond_19

    iget v7, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v11, p5

    goto/16 :goto_9

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/ResolverActivity;->mReferrerPackage:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v10, "com.samsung.android.intent.action.AI_ASSIST"

    invoke-static {v7, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    iput-boolean v10, v0, Lcom/android/internal/app/ResolverActivity;->mIsAiAssist:Z

    iget-boolean v10, v0, Lcom/android/internal/app/ResolverActivity;->mIsAiAssist:Z

    if-eqz v10, :cond_6

    const-string v10, "android"

    iget-object v11, v0, Lcom/android/internal/app/ResolverActivity;->mReferrerPackage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v8, "[AI Key] It was not executed with AI key."

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    return-void

    :cond_6
    const-string/jumbo v10, "is_alt_press"

    invoke-virtual {v2, v10, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v0, Lcom/android/internal/app/ResolverActivity;->mIsAltAiPressed:Z

    iput-boolean v9, v0, Lcom/android/internal/app/ResolverActivity;->mIsKeyDownPressed:Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[AI Key] mIsAiAssist : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v0, Lcom/android/internal/app/ResolverActivity;->mIsAiAssist:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mIsAltAiPressed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v0, Lcom/android/internal/app/ResolverActivity;->mIsAltAiPressed:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_7

    const-string/jumbo v6, "recreate_from_alt_ai"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/internal/app/ResolverActivity;->mRecreatedFromAltAi:Z

    iget-boolean v6, v0, Lcom/android/internal/app/ResolverActivity;->mRecreatedFromAltAi:Z

    if-eqz v6, :cond_7

    iput-boolean v8, v0, Lcom/android/internal/app/ResolverActivity;->mIsAiAssist:Z

    iput-boolean v8, v0, Lcom/android/internal/app/ResolverActivity;->mIsAltAiPressed:Z

    iput-boolean v9, v0, Lcom/android/internal/app/ResolverActivity;->mRecreatedFromAltAi:Z

    :cond_7
    iget-object v6, v0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v6, v9, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object/from16 v6, p3

    iput-object v6, v0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    move/from16 v7, p4

    iput v7, v0, Lcom/android/internal/app/ResolverActivity;->mDefaultTitleResId:I

    iput-boolean v4, v0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->fetchPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    iput-object v10, v0, Lcom/android/internal/app/ResolverActivity;->mPersonalProfileUserHandle:Landroid/os/UserHandle;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->fetchWorkProfileUserProfile()Landroid/os/UserHandle;

    move-result-object v10

    iput-object v10, v0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->fetchCloneProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    iput-object v10, v0, Lcom/android/internal/app/ResolverActivity;->mCloneProfileUserHandle:Landroid/os/UserHandle;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->fetchPrivateProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    iput-object v10, v0, Lcom/android/internal/app/ResolverActivity;->mPrivateProfileUserHandle:Landroid/os/UserHandle;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->fetchTabOwnerUserHandleForLaunch()Landroid/os/UserHandle;

    move-result-object v10

    iput-object v10, v0, Lcom/android/internal/app/ResolverActivity;->mTabOwnerUserHandleForLaunch:Landroid/os/UserHandle;

    iget-boolean v10, v0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v10, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v10

    if-nez v10, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->hasCloneProfile()Z

    move-result v10

    if-nez v10, :cond_8

    move v10, v8

    goto :goto_3

    :cond_8
    move v10, v9

    :goto_3
    move-object/from16 v11, p5

    invoke-virtual {v0, v11, v3, v10}, Lcom/android/internal/app/ResolverActivity;->createMultiProfilePagerAdapter([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    move-result-object v12

    iput-object v12, v0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->configureContentView()Z

    move-result v12

    if-eqz v12, :cond_9

    return-void

    :cond_9
    iget-object v12, v0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v12}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getPersonalListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/android/internal/app/ResolverActivity;->createPackageMonitor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/content/PackageMonitor;

    move-result-object v12

    iput-object v12, v0, Lcom/android/internal/app/ResolverActivity;->mPersonalPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v12, v0, Lcom/android/internal/app/ResolverActivity;->mPersonalPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v14

    invoke-virtual {v12, v0, v13, v14, v9}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v12

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v12}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getWorkListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/android/internal/app/ResolverActivity;->createPackageMonitor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/content/PackageMonitor;

    move-result-object v12

    iput-object v12, v0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v12, v0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v14

    invoke-virtual {v12, v0, v13, v14, v9}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    :cond_a
    iput-boolean v8, v0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    const v12, 0x1020278

    invoke-virtual {v0, v12}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz v12, :cond_f

    new-instance v13, Lcom/android/internal/app/ResolverActivity$2;

    invoke-direct {v13, v0}, Lcom/android/internal/app/ResolverActivity$2;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v12, v13}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnDismissedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string v14, "android.hardware.touchscreen"

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v14

    if-nez v14, :cond_b

    if-nez v13, :cond_c

    :cond_b
    invoke-virtual {v12, v9}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapsed(Z)V

    :cond_c
    iput-object v12, v0, Lcom/android/internal/app/ResolverActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    iget-boolean v14, v0, Lcom/android/internal/app/ResolverActivity;->mIsAiAssist:Z

    if-eqz v14, :cond_d

    invoke-virtual {v12, v8}, Lcom/android/internal/widget/ResolverDrawerLayout;->semDisableDrag(Z)V

    :cond_d
    const/4 v14, 0x0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v15}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCount()I

    move-result v15

    :goto_4
    if-ge v14, v15, :cond_f

    iget-object v8, v0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v8, v14}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    const v9, 0x10204f6

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_e

    new-instance v9, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;

    invoke-direct {v9, v12}, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_e
    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_4

    :cond_f
    const v8, 0x10204c0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    iget-object v8, v0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    if-eqz v8, :cond_10

    iget-object v8, v0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    new-instance v9, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda14;

    invoke-direct {v9, v0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda14;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->updateProfileViewButton()V

    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    iget-object v9, v0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v9}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v9

    if-eqz v9, :cond_11

    const/16 v9, 0x1c3

    goto :goto_5

    :cond_11
    const/16 v9, 0x1c5

    :goto_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v8, :cond_12

    invoke-interface {v8}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_6

    :cond_12
    const-string v14, ""

    :goto_6
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v9, v13}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    const/4 v9, 0x0

    invoke-direct {v0, v0, v9}, Lcom/android/internal/app/ResolverActivity;->semTransitionOverride(Landroid/content/Context;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget-boolean v13, v0, Lcom/android/internal/app/ResolverActivity;->mIsPopOver:Z

    if-eqz v13, :cond_13

    iget v13, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v13, v13, -0x401

    iput v13, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_13
    iget v13, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v14, 0x1000000

    or-int/2addr v13, v14

    iput v13, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "accessibility_reduce_transparency"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_14

    goto :goto_7

    :cond_14
    const/4 v14, 0x0

    :goto_7
    iput-boolean v14, v0, Lcom/android/internal/app/ResolverActivity;->mIsReduceTransparency:Z

    iget-boolean v13, v0, Lcom/android/internal/app/ResolverActivity;->mIsReduceTransparency:Z

    if-eqz v13, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v13

    iget-boolean v14, v0, Lcom/android/internal/app/ResolverActivity;->mIsNight:Z

    if-eqz v14, :cond_15

    const v14, 0x3f266666    # 0.65f

    goto :goto_8

    :cond_15
    const v14, 0x3eb33333    # 0.35f

    :goto_8
    invoke-virtual {v13, v14}, Landroid/view/Window;->setDimAmount(F)V

    :cond_16
    iget-boolean v9, v0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v9, :cond_17

    const v9, 0x1020595

    invoke-virtual {v0, v9}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v0, Lcom/android/internal/app/ResolverActivity;->mTipsIcon:Landroid/widget/ImageView;

    iget-object v9, v0, Lcom/android/internal/app/ResolverActivity;->mTipsIcon:Landroid/widget/ImageView;

    if-eqz v9, :cond_17

    iget-object v9, v0, Lcom/android/internal/app/ResolverActivity;->mTipsIcon:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v9, v0, Lcom/android/internal/app/ResolverActivity;->mTipsIcon:Landroid/widget/ImageView;

    const v13, 0x102023d

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setAccessibilityTraversalAfter(I)V

    iget-object v9, v0, Lcom/android/internal/app/ResolverActivity;->mTipsIcon:Landroid/widget/ImageView;

    new-instance v13, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda15;

    invoke-direct {v13, v0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda15;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_17
    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/core/CompatSandbox;->isAppCompatOverrideEnabled(Landroid/content/res/Configuration;)Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/view/Window;->setElevation(F)V

    :cond_18
    return-void

    :cond_19
    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v11, p5

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    return-void
.end method

.method protected greylist onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 8
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

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    return-void
.end method

.method protected whitelist onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->onDestroy()V

    :cond_1
    invoke-static {}, Landroid/service/chooser/Flags;->fixResolverMemoryLeak()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->onDestroy()V

    :cond_2
    return-void
.end method

.method public blacklist onHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    if-ne p1, v0, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mQuietModeManager:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

    invoke-interface {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;->isWaitingToEnableWorkProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_appicon_theme_package"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAppIconTheme:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getPlaceholderCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mOldItemCount:I

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildActiveTab(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->notifyDataSetChanged()V

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->inactiveListAdapterHasItems()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/GridView;

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v3

    move-object v4, v2

    check-cast v4, Landroid/widget/GridView;

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    :cond_2
    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->clearInactiveProfileCache()V

    :goto_0
    return-void
.end method

.method blacklist onHorizontalSwipeStateChanged(I)V
    .locals 0

    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsKeyDownPressed:Z

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsAiAssist:Z

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AI Key] KeyDown : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isAltPressed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResolverActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsAltAiPressed:Z

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x450

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    add-int/lit8 v5, v3, 0x1

    rem-int/2addr v5, v4

    invoke-virtual {v1, v5, v0}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->notifyDataSetChanged()V

    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsAiAssist:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AI Key] KeyUp : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isAltPressed : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ResolverActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsAltAiPressed:Z

    const/16 v2, 0x450

    const/4 v3, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p1, v2, :cond_0

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsKeyDownPressed:Z

    iput-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mRecreatedFromAltAi:Z

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->recreate()V

    return v3

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsAltAiPressed:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x39

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a

    if-ne p1, v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    if-eqz v4, :cond_3

    invoke-virtual {p0, v2, v3, v3}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    :cond_3
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsKeyDownPressed:Z

    return v3

    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsAltAiPressed:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsKeyDownPressed:Z

    if-eqz v0, :cond_5

    if-ne p1, v2, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsKeyDownPressed:Z

    return v3

    :cond_5
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsKeyDownPressed:Z

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_6
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsKeyDownPressed:Z

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected blacklist onListRebuilt(Lcom/android/internal/app/ResolverListAdapter;Z)V
    .locals 12

    new-instance v0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$ItemClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/app/ResolverActivity;->semSetupAdapterListView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ItemClickListener;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    if-eqz v1, :cond_1

    const v1, 0x1020278

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x105038f

    goto :goto_0

    :cond_0
    const v3, 0x1050390

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->setMaxCollapsedHeight(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsAiAssist:Z

    if-eqz v1, :cond_c

    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/AbsListView;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView;

    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mIsAiAssist:Z

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mIsAltAiPressed:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2, v5, v6}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v4}, Landroid/widget/AbsListView;->setSelectionForcely(I)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->getFilteredPosition()I

    move-result v3

    invoke-virtual {v2, v3, v6}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    :goto_1
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v3

    if-eq v3, v4, :cond_5

    move v4, v6

    goto :goto_2

    :cond_5
    move v4, v5

    :goto_2
    iget-boolean v7, p0, Lcom/android/internal/app/ResolverActivity;->mIsAiAssist:Z

    if-eqz v7, :cond_9

    iget-boolean v7, p0, Lcom/android/internal/app/ResolverActivity;->mIsAltAiPressed:Z

    if-eqz v7, :cond_9

    :try_start_0
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v7}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v8

    if-lez v8, :cond_8

    if-eqz v4, :cond_6

    invoke-virtual {v7}, Lcom/android/internal/app/ResolverListAdapter;->getFilteredPosition()I

    move-result v5

    add-int/2addr v5, v6

    rem-int/2addr v5, v8

    invoke-virtual {v2, v5, v6}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    goto :goto_4

    :cond_6
    iget-object v9, v7, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v9}, Lcom/android/internal/app/ResolverListController;->getLastChosen()Landroid/content/pm/ResolveInfo;

    move-result-object v9

    const/4 v10, 0x0

    :goto_3
    invoke-virtual {v7}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredResolveList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_8

    invoke-virtual {v7}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredResolveList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v11, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    invoke-virtual {v7, v11, v9}, Lcom/android/internal/app/ResolverListAdapter;->semIsComponentEqual(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v11

    if-eqz v11, :cond_7

    add-int/lit8 v5, v10, 0x1

    rem-int/2addr v5, v8

    invoke-virtual {v2, v5, v6}, Landroid/widget/AbsListView;->setItemChecked(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    goto :goto_5

    :catch_0
    move-exception v5

    :cond_9
    :goto_5
    iget-boolean v5, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v5, :cond_c

    if-eqz v4, :cond_a

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    if-eq v5, v3, :cond_c

    :cond_a
    iget-boolean v5, p0, Lcom/android/internal/app/ResolverActivity;->mSupportButtons:Z

    if-eqz v5, :cond_c

    invoke-direct {p0, v4, v3, v6}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz v4, :cond_b

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    :cond_b
    iput v3, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    :cond_c
    return-void
.end method

.method public whitelist onMultiWindowModeChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->semForceHandlePackagesChanged()V

    return-void
.end method

.method protected whitelist onPause()V
    .locals 4

    const-string v0, "ResolverActivity"

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsAiAssist:Z

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mWindowManager:Landroid/view/IWindowManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x450

    invoke-interface {v1, v3, v2}, Landroid/view/IWindowManager;->unregisterSystemKeyEvent(ILandroid/content/ComponentName;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AI Key] unregisterSystemKeyEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AI Key] failed to unregisterSystemKeyEvent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final blacklist onPostListReady(Lcom/android/internal/app/ResolverListAdapter;ZZZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isAutolaunching()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    check-cast v0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->setUseLayoutWithDefault(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->shouldShowEmptyStateScreen(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->showEmptyResolverListEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->showListView(Lcom/android/internal/app/ResolverListAdapter;)V

    :goto_0
    if-nez p4, :cond_4

    if-eqz p3, :cond_4

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->maybeAutolaunchActivity()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPostListReady return skipAutoLaunch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rebuildComplete = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResolverActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    if-eqz p2, :cond_5

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->maybeCreateHeader(Lcom/android/internal/app/ResolverListAdapter;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->resetButtonBar()V

    if-eqz p3, :cond_5

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/app/ResolverActivity;->onListRebuilt(Lcom/android/internal/app/ResolverListAdapter;Z)V

    :cond_5
    return-void
.end method

.method protected blacklist onProfileClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessage:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    return-void
.end method

.method protected blacklist onProfileTabSelected()V
    .locals 0

    return-void
.end method

.method protected whitelist onRestart()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getWorkListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->createPackageMonitor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/content/PackageMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mQuietModeManager:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

    invoke-interface {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;->isWaitingToEnableWorkProfile()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mQuietModeManager:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mQuietModeManager:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

    invoke-interface {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;->markWorkProfileEnabledBroadcastReceived()V

    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->handlePackagesChanged()V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->updateProfileViewButton()V

    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->resetButtonBar()V

    const v0, 0x10204c1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewPager;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "last_shown_tab_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->clearInactiveProfileCache()V

    return-void
.end method

.method protected whitelist onResume()V
    .locals 5

    const-string v0, "ResolverActivity"

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsAiAssist:Z

    if-eqz v1, :cond_1

    :try_start_0
    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mWindowManager:Landroid/view/IWindowManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x450

    const/4 v4, 0x3

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->registerSystemKeyEvent(ILandroid/content/ComponentName;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AI Key] registerSystemKeyEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AI Key] failed to registerSystemKeyEvent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method protected whitelist onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const v0, 0x10204c1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewPager;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "last_shown_tab_key"

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsAiAssist:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "recreate_from_alt_ai"

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mRecreatedFromAltAi:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method protected whitelist onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addSystemFlags(I)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->createWorkProfileStateReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->registerWorkProfileStateReceiver()V

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isWorkProfileEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileHasBeenEnabled:Z

    :cond_0
    return-void
.end method

.method protected whitelist onStop()V
    .locals 7

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v3, -0x80001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v2}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v2}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

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

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    const/16 v5, 0x3e9

    if-ne v4, v5, :cond_2

    const-string/jumbo v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "ResolverActivity"

    const-string/jumbo v6, "we don\'t finish resolver for this exceptional case"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    :cond_4
    return-void
.end method

.method protected blacklist onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;ZZ)Z

    move-result v0

    return v0
.end method

.method protected blacklist onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;ZZ)Z
    .locals 24

    move-object/from16 v7, p0

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v8, v0

    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move-object v9, v0

    const/4 v10, 0x0

    if-eqz v9, :cond_1a

    iget-boolean v0, v7, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-nez v0, :cond_2

    iget-object v0, v7, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_2
    iget-object v0, v7, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredResolveList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1a

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v0

    invoke-virtual {v9}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v9}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    move-object v12, v0

    goto :goto_2

    :cond_3
    move-object v0, v9

    move-object v12, v0

    :goto_2
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v12}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v19

    if-eqz v19, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget v0, v8, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v3, 0xfff0000

    and-int v5, v0, v3

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    const/high16 v3, 0x600000

    const-string v14, "ResolverActivity"

    if-ne v5, v3, :cond_6

    invoke-virtual {v12, v7}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_6

    :try_start_0
    invoke-virtual {v2, v13}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v15, v0

    move-object v0, v15

    invoke-static {v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    :cond_6
    :goto_4
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    if-eqz v2, :cond_e

    if-ne v5, v3, :cond_7

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "file"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v3, "content"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_7
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    :goto_5
    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PatternMatcher;

    invoke-virtual {v13, v3}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual {v13}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13}, Landroid/os/PatternMatcher;->getType()I

    move-result v1

    invoke-virtual {v2, v15, v1}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_6

    :cond_8
    goto :goto_5

    :cond_9
    :goto_6
    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v1}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v1

    if-eqz v1, :cond_c

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter$AuthorityEntry;

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v13

    if-ltz v13, :cond_b

    invoke-virtual {v3}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v13

    invoke-virtual {v3}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v15

    if-ltz v13, :cond_a

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v11, v16

    goto :goto_8

    :cond_a
    const/4 v11, 0x0

    :goto_8
    invoke-virtual {v2, v15, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_b
    goto :goto_7

    :cond_c
    :goto_9
    iget-object v3, v8, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    :goto_a
    if-eqz v3, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PatternMatcher;

    invoke-virtual {v11, v3}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-virtual {v11}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Landroid/os/PatternMatcher;->getType()I

    move-result v15

    invoke-virtual {v2, v13, v15}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    goto :goto_b

    :cond_d
    goto :goto_a

    :cond_e
    :goto_b
    if-eqz v2, :cond_19

    iget-object v0, v7, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredResolveList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    iget-object v0, v7, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_c

    :cond_f
    move v0, v10

    :goto_c
    move/from16 v20, v0

    if-nez v20, :cond_10

    new-array v0, v11, [Landroid/content/ComponentName;

    move-object/from16 v21, v0

    goto :goto_d

    :cond_10
    add-int/lit8 v0, v11, 0x1

    new-array v0, v0, [Landroid/content/ComponentName;

    move-object/from16 v21, v0

    :goto_d
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v11, :cond_12

    iget-object v3, v7, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredResolveList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v3, v10}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    new-instance v13, Landroid/content/ComponentName;

    iget-object v15, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v13, v15, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v13, v21, v1

    iget v10, v3, Landroid/content/pm/ResolveInfo;->match:I

    if-le v10, v0, :cond_11

    iget v0, v3, Landroid/content/pm/ResolveInfo;->match:I

    :cond_11
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "preferred : set = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v13, v21, v1

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    const/4 v10, 0x0

    goto :goto_e

    :cond_12
    if-eqz v20, :cond_14

    iget-object v1, v7, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v1

    aput-object v1, v21, v11

    iget-object v1, v7, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ResolveInfo;->match:I

    if-le v1, v0, :cond_13

    move v0, v1

    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "preferred : otherProfileMatch = "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ", set = "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v10, v21, v11

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v0

    goto :goto_f

    :cond_14
    move v10, v0

    :goto_f
    iget-boolean v0, v7, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v0, :cond_16

    iget-object v0, v7, Lcom/android/internal/app/ResolverActivity;->mSemShareLogging:Lcom/samsung/android/share/SemShareLogging;

    if-eqz v0, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_10

    :cond_15
    iget-object v3, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    :goto_10
    move-object v15, v3

    invoke-virtual {v12, v7}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v9, v7}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v22, v13

    check-cast v22, Ljava/lang/String;

    iget-object v13, v7, Lcom/android/internal/app/ResolverActivity;->mSemShareLogging:Lcom/samsung/android/share/SemShareLogging;

    move-object/from16 v23, v1

    move-object v1, v14

    move-object v14, v0

    move-object/from16 v16, v22

    move-object/from16 v17, v6

    move/from16 v18, p2

    invoke-virtual/range {v13 .. v18}, Lcom/samsung/android/share/SemShareLogging;->semInsertStartSelectLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_11

    :cond_16
    move-object v1, v14

    :goto_11
    if-eqz p2, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "preferred : bestMatch = "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, ", comp = "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p0

    move-object v14, v2

    move-object v2, v13

    move-object v3, v14

    move-object v15, v4

    move v4, v10

    move/from16 v16, v5

    move-object/from16 v5, v21

    move-object/from16 v17, v6

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/ResolverActivity;->addPreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/Intent;)V

    iget-boolean v1, v8, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v1, :cond_17

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v2, v0}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    :cond_17
    goto :goto_12

    :cond_18
    move-object v14, v2

    move-object v15, v4

    move/from16 v16, v5

    move-object/from16 v17, v6

    :try_start_1
    iget-object v0, v7, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0, v9, v14, v10}, Lcom/android/internal/app/ResolverListController;->setLastChosen(Landroid/content/Intent;Landroid/content/IntentFilter;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_12

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling setLastChosenActivity\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_19
    move-object v14, v2

    move-object v15, v4

    move/from16 v16, v5

    move-object/from16 v17, v6

    :cond_1a
    :goto_12
    if-eqz p1, :cond_1c

    if-nez p3, :cond_1b

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/ResolverActivity;->semSafelyStartActivtyAfterAnimation(Lcom/android/internal/app/chooser/TargetInfo;)V

    goto :goto_13

    :cond_1b
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    :goto_13
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/chooser/TargetInfo;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x0

    return v1

    :cond_1c
    const/4 v1, 0x1

    return v1
.end method

.method blacklist optionForChooserTarget(Lcom/android/internal/app/chooser/TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .locals 2

    new-instance v0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;-><init>(Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method protected blacklist postRebuildList(Z)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->postRebuildListInternal(Z)Z

    move-result v0

    return v0
.end method

.method final blacklist postRebuildListInternal(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->maybeAutolaunchActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->setupViewVisibilities()V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->setupProfileTabs()V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist resetButtonBar()V
    .locals 10

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportButtons:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const v0, 0x102023e

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    const-string v1, "ResolverActivity"

    const-string v2, "Layout unexpectedly does not have a button bar"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    const v2, 0x10204ee

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    goto :goto_0

    :cond_3
    move v3, v4

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1050384

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->isTabLoaded()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->shouldShowEmptyStateScreen(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivity;->setButtonBarIgnoreOffset(Z)V

    return-void

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/internal/app/ResolverActivity;->setButtonBarIgnoreOffset(Z)V

    const v3, 0x1020240

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    const v3, 0x102023d

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    const v4, 0x1040e1e

    invoke-virtual {p0, v4}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    const v4, 0x1040e1d

    invoke-virtual {p0, v4}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_8
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->resetAlwaysOrOnceButtonBar()V

    return-void
.end method

.method public blacklist resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_3

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/internal/app/ResolverActivity;->getResolveInfoUserHandle(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/android/internal/app/ResolverActivity;->getResolveInfoUserHandle(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0
.end method

.method public blacklist safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V
    .locals 2

    nop

    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/app/ResolverActivity;->getResolveInfoUserHandle(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivityAsUser(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;Landroid/os/Bundle;)V

    return-void
.end method

.method public final blacklist safelyStartActivityAsUser(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivityAsUser(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;Landroid/os/Bundle;)V

    return-void
.end method

.method protected final blacklist safelyStartActivityAsUser(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Landroid/os/StrictMode;->disableDeathOnFileUriExposure()V

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivityInternal(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    throw v0
.end method

.method protected blacklist safelyStartActivityInternal(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;Landroid/os/Bundle;)V
    .locals 5

    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->isSuspended()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsAiAssist:Z

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ai_launch_mode"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    new-instance v1, Landroid/graphics/Rect;

    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ai_hot_key_launch_bounds"

    const-class v4, Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p3

    :cond_3
    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    nop

    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ai_launch_split_ratio"

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->startAssistantActivityToSplit(Landroid/content/Intent;F)V

    return-void

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessage:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessage:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_6
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    if-nez v0, :cond_8

    invoke-interface {p1, p0, p3, p2}, Lcom/android/internal/app/chooser/TargetInfo;->startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/chooser/TargetInfo;)V

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity;->maybeLogCrossProfileTargetLaunch(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V

    :cond_7
    return-void

    :cond_8
    :try_start_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-interface {p1, p0, p3, v0}, Lcom/android/internal/app/chooser/TargetInfo;->startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/chooser/TargetInfo;)V

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity;->maybeLogCrossProfileTargetLaunch(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to launch as uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLaunchedFromPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", while running in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResolverActivity"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public blacklist semGetAppIconTheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAppIconTheme:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist semGetOldItemCount()I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mOldItemCount:I

    return v0
.end method

.method public blacklist semIsDestroyed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method public blacklist semIsFinishing()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public blacklist semIsNeedSortingInRebuildList()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->semIsNeedSortingInRebuildList()Z

    move-result v0

    return v0
.end method

.method public blacklist semIsOverlayThemesEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist semIsSupportsAlwaysUseOption()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    return v0
.end method

.method public blacklist semNeedSortAfterPinned()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mNeedUpdateAfterPinned:Z

    return v0
.end method

.method public blacklist semOnForceHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildActiveTab(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/GridView;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00db

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    move-object v4, v2

    check-cast v4, Landroid/widget/GridView;

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->clearInactiveProfileCache()V

    :goto_0
    return-void
.end method

.method public blacklist semSetNeedSortAfterPinned(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mNeedUpdateAfterPinned:Z

    return-void
.end method

.method public blacklist semSetNeedSortingInRebuildList(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->semSetNeedSortingInRebuildList(Z)V

    return-void
.end method

.method blacklist semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getFontScale()F

    move-result v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public blacklist sendVoiceChoicesIfNeeded()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v0

    new-array v1, v0, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_2

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v4, v2}, Lcom/android/internal/app/ResolverActivity;->optionForChooserTarget(Lcom/android/internal/app/chooser/TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    move-result-object v5

    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    new-instance v3, Landroid/app/VoiceInteractor$Prompt;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/VoiceInteractor$Prompt;-><init>(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {v2, v3}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    return-void
.end method

.method protected final blacklist setAdditionalTargets([Landroid/content/Intent;)V
    .locals 4

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected blacklist setRetainInOnStop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mRetainInOnStop:Z

    return-void
.end method

.method public blacklist setSafeForwardingMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    return-void
.end method

.method protected blacklist shouldAddFooterView()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const v0, 0x102023e

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist shouldAutoLaunchSingleChoice(Lcom/android/internal/app/chooser/TargetInfo;)Z
    .locals 1

    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->isSuspended()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist shouldGetActivityMetadata()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist shouldShowTabs()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->privateSpaceEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isLaunchedInSingleUserMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->hasWorkProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/internal/app/ResolverActivity;->ENABLE_TABBED_VIEW:Z

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method blacklist showTargetDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public blacklist startSelected(IZZ)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mSecondDepth:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSemSelectTaskListAdapter:Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;

    invoke-virtual {v1, p1, p3}, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lcom/android/internal/app/ResolverListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->hasManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileNotSupportedMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSecondDepth:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mSemSelectTaskListAdapter:Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;

    invoke-virtual {v2, p1, p3}, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v1

    goto/16 :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->getLastChosenActivityIndex()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/app/ResolverListAdapter;->getDisplayResolveInfo(I)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverListAdapter;->getLastChosenActivity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    nop

    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_1

    :cond_4
    goto :goto_1

    :cond_5
    nop

    :goto_1
    move v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "lastChosenIndex : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", lastChosenActivity"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ResolverActivity"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v2, :cond_6

    if-eqz v5, :cond_6

    new-instance v6, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getSimilarList()Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    new-instance v9, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-direct {v6, v7, v8, v9}, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;-><init>(Ljava/util/List;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ActivityCallback;)V

    iput-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mSemSelectTaskListAdapter:Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mSemSelectTaskListAdapter:Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;

    invoke-virtual {v6, v2, p3}, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v1

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v6}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v6

    invoke-virtual {v6, p1, p3}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz p2, :cond_8

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v2, :cond_8

    const/16 v2, 0x1c7

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_3

    :cond_8
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v2, :cond_9

    const/16 v2, 0x1c8

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_3

    :cond_9
    const/16 v2, 0x1c9

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    :goto_3
    nop

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v2, 0x1c4

    goto :goto_4

    :cond_a
    const/16 v2, 0x1c6

    :goto_4
    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    :cond_b
    return-void
.end method

.method protected blacklist super_onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public blacklist updateProfileViewButton()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const v2, 0x10204c0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/TextView;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :cond_1
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x10504f8

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/ResolverActivity;->semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public blacklist useLayoutWithDefault()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
