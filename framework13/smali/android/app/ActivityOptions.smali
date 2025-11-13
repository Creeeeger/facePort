.class public Landroid/app/ActivityOptions;
.super Landroid/app/ComponentOptions;
.source "ActivityOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityOptions$SourceInfo;,
        Landroid/app/ActivityOptions$OnAnimationFinishedListener;,
        Landroid/app/ActivityOptions$OnAnimationStartedListener;
    }
.end annotation


# static fields
.field public static final greylist-max-o ANIM_CLIP_REVEAL:I = 0xb

.field public static final greylist-max-o ANIM_CUSTOM:I = 0x1

.field public static final blacklist ANIM_CUSTOM_DISPLAY_CHANGE:I = 0xf

.field public static final greylist-max-o ANIM_CUSTOM_IN_PLACE:I = 0xa

.field public static final greylist-max-o ANIM_DEFAULT:I = 0x6

.field public static final blacklist ANIM_FROM_STYLE:I = 0xe

.field public static final greylist-max-o ANIM_LAUNCH_TASK_BEHIND:I = 0x7

.field public static final greylist-max-o ANIM_NONE:I = 0x0

.field public static final greylist-max-o ANIM_OPEN_CROSS_PROFILE_APPS:I = 0xc

.field public static final greylist-max-o ANIM_REMOTE_ANIMATION:I = 0xd

.field public static final greylist-max-o ANIM_SCALE_UP:I = 0x2

.field public static final greylist-max-o ANIM_SCENE_TRANSITION:I = 0x5

.field public static final greylist-max-o ANIM_THUMBNAIL_ASPECT_SCALE_DOWN:I = 0x9

.field public static final greylist-max-o ANIM_THUMBNAIL_ASPECT_SCALE_UP:I = 0x8

.field public static final greylist-max-o ANIM_THUMBNAIL_SCALE_DOWN:I = 0x4

.field public static final greylist-max-o ANIM_THUMBNAIL_SCALE_UP:I = 0x3

.field public static final blacklist ANIM_UNDEFINED:I = -0x1

.field private static final blacklist END:I = 0x2

.field public static final whitelist EXTRA_USAGE_TIME_REPORT:Ljava/lang/String; = "android.activity.usage_time"

.field public static final whitelist EXTRA_USAGE_TIME_REPORT_PACKAGES:Ljava/lang/String; = "android.usage_time_packages"

.field public static final blacklist INVALID_ML_TYPE:I = -0x1

.field private static final blacklist KEY_ACTIVE_LAUNCH_HINT:Ljava/lang/String; = "android:activity.isActiveLaunch"

.field private static final blacklist KEY_ACTIVITY_EMBEDDED_PLACEHOLDER:Ljava/lang/String; = "android:activity.activityEmbeddedPlaceholder"

.field private static final greylist-max-o KEY_ANIMATION_FINISHED_LISTENER:Ljava/lang/String; = "android:activity.animationFinishedListener"

.field public static final blacklist KEY_ANIM_BACKGROUND_COLOR:Ljava/lang/String; = "android:activity.backgroundColor"

.field public static final greylist-max-o KEY_ANIM_ENTER_RES_ID:Ljava/lang/String; = "android:activity.animEnterRes"

.field public static final greylist-max-o KEY_ANIM_EXIT_RES_ID:Ljava/lang/String; = "android:activity.animExitRes"

.field public static final greylist-max-o KEY_ANIM_HEIGHT:Ljava/lang/String; = "android:activity.animHeight"

.field public static final greylist-max-o KEY_ANIM_IN_PLACE_RES_ID:Ljava/lang/String; = "android:activity.animInPlaceRes"

.field private static final greylist-max-o KEY_ANIM_SPECS:Ljava/lang/String; = "android:activity.animSpecs"

.field public static final greylist-max-o KEY_ANIM_START_LISTENER:Ljava/lang/String; = "android:activity.animStartListener"

.field public static final greylist-max-o KEY_ANIM_START_X:Ljava/lang/String; = "android:activity.animStartX"

.field public static final greylist-max-o KEY_ANIM_START_Y:Ljava/lang/String; = "android:activity.animStartY"

.field public static final greylist-max-o KEY_ANIM_THUMBNAIL:Ljava/lang/String; = "android:activity.animThumbnail"

.field public static final greylist-max-o KEY_ANIM_TYPE:Ljava/lang/String; = "android:activity.animType"

.field public static final greylist-max-o KEY_ANIM_WIDTH:Ljava/lang/String; = "android:activity.animWidth"

.field private static final blacklist KEY_APPLY_ACTIVITY_FLAGS_FOR_BUBBLES:Ljava/lang/String; = "android:activity.applyActivityFlagsForBubbles"

.field private static final blacklist KEY_APPLY_BIG_FREEFORM_SIZE:Ljava/lang/String; = "android:activity.applyBigFreeformSize"

.field private static final greylist-max-o KEY_AVOID_MOVE_TO_FRONT:Ljava/lang/String; = "android.activity.avoidMoveToFront"

.field private static final blacklist KEY_CALLER_DISPLAY_ID:Ljava/lang/String; = "android.activity.callerDisplayId"

.field private static final greylist-max-o KEY_DISALLOW_ENTER_PICTURE_IN_PICTURE_WHILE_LAUNCHING:Ljava/lang/String; = "android:activity.disallowEnterPictureInPictureWhileLaunching"

.field private static final blacklist KEY_DISMISS_KEYGUARD_IF_INSECURE:Ljava/lang/String; = "android.activity.dismissKeyguardIfInsecure"

.field private static final blacklist KEY_DISMISS_SPLIT_BEFORE_LAUNCH:Ljava/lang/String; = "android:activity.dismissSplitBeforeLaunch"

.field private static final blacklist KEY_ENTER_SPLIT_SIDE_WITH_ADJACENT_FLAG:Ljava/lang/String; = "android:activity.enterSplitSideWithAdjacentFlag"

.field private static final greylist-max-o KEY_EXIT_COORDINATOR_INDEX:Ljava/lang/String; = "android:activity.exitCoordinatorIndex"

.field private static final blacklist KEY_FORCE_LAUNCH_WINDOWING_MODE:Ljava/lang/String; = "android.activity.forceWindowingMode"

.field private static final blacklist KEY_FREEZE_RECENT_TASKS_REORDERING:Ljava/lang/String; = "android.activity.freezeRecentTasksReordering"

.field private static final blacklist KEY_IGNORE_PENDING_INTENT_CREATOR_FOREGROUND_STATE:Ljava/lang/String; = "android.activity.ignorePendingIntentCreatorForegroundState"

.field private static final greylist-max-o KEY_INSTANT_APP_VERIFICATION_BUNDLE:Ljava/lang/String; = "android:instantapps.installerbundle"

.field private static final blacklist KEY_LAUNCHED_FROM_BUBBLE:Ljava/lang/String; = "android.activity.launchTypeBubble"

.field private static final blacklist KEY_LAUNCHED_FROM_DND:Ljava/lang/String; = "android.activity.launchTypeDnD"

.field private static final greylist-max-o KEY_LAUNCH_ACTIVITY_TYPE:Ljava/lang/String; = "android.activity.activityType"

.field public static final greylist-max-o KEY_LAUNCH_BOUNDS:Ljava/lang/String; = "android:activity.launchBounds"

.field public static final blacklist KEY_LAUNCH_COOKIE:Ljava/lang/String; = "android.activity.launchCookie"

.field private static final greylist-max-o KEY_LAUNCH_DISPLAY_ID:Ljava/lang/String; = "android.activity.launchDisplayId"

.field private static final blacklist KEY_LAUNCH_INTO_PIP_PARAMS:Ljava/lang/String; = "android.activity.launchIntoPipParams"

.field public static final blacklist KEY_LAUNCH_ROOT_TASK_TOKEN:Ljava/lang/String; = "android.activity.launchRootTaskToken"

.field private static final blacklist KEY_LAUNCH_TASK_DISPLAY_AREA_TOKEN:Ljava/lang/String; = "android.activity.launchTaskDisplayAreaToken"

.field public static final blacklist KEY_LAUNCH_TASK_FRAGMENT_TOKEN:Ljava/lang/String; = "android.activity.launchTaskFragmentToken"

.field private static final greylist-max-o KEY_LAUNCH_TASK_ID:Ljava/lang/String; = "android.activity.launchTaskId"

.field private static final greylist-max-o KEY_LAUNCH_WINDOWING_MODE:Ljava/lang/String; = "android.activity.windowingMode"

.field public static final blacklist KEY_LEGACY_PERMISSION_PROMPT_ELIGIBLE:Ljava/lang/String; = "android:activity.legacyPermissionPromptEligible"

.field private static final greylist-max-o KEY_LOCK_TASK_MODE:Ljava/lang/String; = "android:activity.lockTaskMode"

.field private static final blacklist KEY_ML_LAUNCH_HINT:Ljava/lang/String; = "android:activity.isMlLaunch"

.field private static final blacklist KEY_OVERRIDE_TASK_TRANSITION:Ljava/lang/String; = "android:activity.overrideTaskTransition"

.field public static final greylist-max-o KEY_PACKAGE_NAME:Ljava/lang/String; = "android:activity.packageName"

.field private static final blacklist KEY_PENDING_INTENT_LAUNCH_FLAGS:Ljava/lang/String; = "android.activity.pendingIntentLaunchFlags"

.field private static final blacklist KEY_POP_OVER:Ljava/lang/String; = "android:activity.popOver"

.field private static final blacklist KEY_POP_OVER_ALLOW_OUTSIDE_TOUCH:Ljava/lang/String; = "android:activity.popOverAllowOutsideTouch"

.field private static final blacklist KEY_POP_OVER_ANCHOR:Ljava/lang/String; = "android:activity.popOverAnchor"

.field private static final blacklist KEY_POP_OVER_ANCHOR_POSITION:Ljava/lang/String; = "android:activity.popOverAnchorPosition"

.field private static final blacklist KEY_POP_OVER_ANIMATION_PACKAGE_NAME:Ljava/lang/String; = "android:activity.popOverAnimationPackageName"

.field private static final blacklist KEY_POP_OVER_ENTER_RES_ID:Ljava/lang/String; = "android:activity.popOverEnterResId"

.field private static final blacklist KEY_POP_OVER_EXIT_RES_ID:Ljava/lang/String; = "android:activity.popOverExitResId"

.field private static final blacklist KEY_POP_OVER_HEIGHT:Ljava/lang/String; = "android:activity.popOverHeight"

.field private static final blacklist KEY_POP_OVER_HEIGHT_WEIGHT:Ljava/lang/String; = "android:activity.popOverHeightWeight"

.field private static final blacklist KEY_POP_OVER_INHERIT_CLOSE_ENTER_RES_ID:Ljava/lang/String; = "android:activity.popOverInheritCloseEnterResId"

.field private static final blacklist KEY_POP_OVER_INHERIT_CLOSE_EXIT_RES_ID:Ljava/lang/String; = "android:activity.popOverInheritCloseExitResId"

.field private static final blacklist KEY_POP_OVER_INHERIT_OPEN_ENTER_RES_ID:Ljava/lang/String; = "android:activity.popOverInheritOpenEnterResId"

.field private static final blacklist KEY_POP_OVER_INHERIT_OPEN_EXIT_RES_ID:Ljava/lang/String; = "android:activity.popOverInheritOpenExitResId"

.field private static final blacklist KEY_POP_OVER_INHERIT_OPTIONS:Ljava/lang/String; = "android:activity.popOverInheritOptions"

.field private static final blacklist KEY_POP_OVER_REMOVE_DEFAULT_MARGIN:Ljava/lang/String; = "android:activity.popOverRemoveDefaultMargin"

.field private static final blacklist KEY_POP_OVER_REMOVE_OUTLINE_EFFECT:Ljava/lang/String; = "android:activity.popOverRemoveOutlineEffect"

.field private static final blacklist KEY_POP_OVER_WIDTH:Ljava/lang/String; = "android:activity.popOverWidth"

.field private static final blacklist KEY_POP_OVER_WIDTH_WEIGHT:Ljava/lang/String; = "android:activity.popOverWidthWeight"

.field private static final blacklist KEY_PRESERVE_TASK_WINDOWING_MODE:Ljava/lang/String; = "android.activity.preserveTaskWindowingMode"

.field private static final greylist-max-o KEY_REMOTE_ANIMATION_ADAPTER:Ljava/lang/String; = "android:activity.remoteAnimationAdapter"

.field private static final blacklist KEY_REMOTE_TRANSITION:Ljava/lang/String; = "android:activity.remoteTransition"

.field private static final blacklist KEY_REMOVE_WITH_TASK_ORGANIZER:Ljava/lang/String; = "android.activity.removeWithTaskOrganizer"

.field private static final blacklist KEY_REPARENT_CELL:Ljava/lang/String; = "android:activity.reparentCell"

.field private static final greylist-max-o KEY_RESULT_CODE:Ljava/lang/String; = "android:activity.resultCode"

.field private static final greylist-max-o KEY_RESULT_DATA:Ljava/lang/String; = "android:activity.resultData"

.field private static final blacklist KEY_RESUMED_AFFORDANCE_ANIMATION_REQUESTED:Ljava/lang/String; = "android:activity.resumedAffordanceAnimationRequested"

.field private static final greylist-max-o KEY_ROTATION_ANIMATION_HINT:Ljava/lang/String; = "android:activity.rotationAnimationHint"

.field private static final blacklist KEY_SOURCE_INFO:Ljava/lang/String; = "android.activity.sourceInfo"

.field private static final greylist-max-o KEY_SPECS_FUTURE:Ljava/lang/String; = "android:activity.specsFuture"

.field private static final blacklist KEY_SPLASH_SCREEN_STYLE:Ljava/lang/String; = "android.activity.splashScreenStyle"

.field public static final blacklist KEY_SPLASH_SCREEN_THEME:Ljava/lang/String; = "android.activity.splashScreenTheme"

.field private static final blacklist KEY_SPLIT_POSITION:Ljava/lang/String; = "android.activity.splitPosition"

.field private static final greylist-max-o KEY_SPLIT_SCREEN_CREATE_MODE:Ljava/lang/String; = "android:activity.splitScreenCreateMode"

.field public static final blacklist KEY_STARTED_BY_MDM_ADMIN:Ljava/lang/String; = "edm:activity.startedByMDMAdmin"

.field public static final blacklist KEY_STARTED_FROM_WINDOW_TYPE_LAUNCHER:Ljava/lang/String; = "android:activity.startedFromWindowTypeLauncher"

.field private static final blacklist KEY_TASK_ALWAYS_ON_TOP:Ljava/lang/String; = "android.activity.alwaysOnTop"

.field private static final greylist-max-o KEY_TASK_OVERLAY:Ljava/lang/String; = "android.activity.taskOverlay"

.field private static final greylist-max-o KEY_TASK_OVERLAY_CAN_RESUME:Ljava/lang/String; = "android.activity.taskOverlayCanResume"

.field private static final blacklist KEY_TRANSIENT_LAUNCH:Ljava/lang/String; = "android.activity.transientLaunch"

.field private static final greylist-max-o KEY_TRANSITION_COMPLETE_LISTENER:Ljava/lang/String; = "android:activity.transitionCompleteListener"

.field private static final greylist-max-o KEY_TRANSITION_IS_RETURNING:Ljava/lang/String; = "android:activity.transitionIsReturning"

.field private static final greylist-max-o KEY_TRANSITION_SHARED_ELEMENTS:Ljava/lang/String; = "android:activity.sharedElementNames"

.field private static final greylist-max-o KEY_USAGE_TIME_REPORT:Ljava/lang/String; = "android:activity.usageTimeReport"

.field private static final blacklist LAND:I = 0x0

.field public static final blacklist ML_TYPE_EMPTY_PROCESS:I = 0x1

.field public static final blacklist ML_TYPE_NAP_PROCESS:I = 0x0

.field public static final blacklist ML_TYPE_SEEDBED_PROCESS:I = 0x2

.field public static final blacklist POP_OVER_ANCHOR_HORIZONTAL_MASK:I = 0x370

.field public static final blacklist POP_OVER_ANCHOR_POSITION_HORIZONTAL_END:I = 0x200

.field public static final blacklist POP_OVER_ANCHOR_POSITION_HORIZONTAL_START:I = 0x100

.field public static final blacklist POP_OVER_ANCHOR_VERTICAL_MASK:I = 0x7

.field private static final blacklist POP_OVER_CHOOSER_BOTTOM_MARGIN_DP:I = 0x2c

.field private static final blacklist POP_OVER_CHOOSER_HEIGHT_DP:I = 0x168

.field private static final blacklist POP_OVER_CHOOSER_WIDTH_DP:I = 0x168

.field public static final blacklist POP_OVER_HORIZONTAL_MASK:I = 0x70

.field public static final blacklist POP_OVER_VERTICAL_MASK:I = 0x7

.field private static final blacklist PORT:I = 0x1

.field public static final whitelist SEM_POP_OVER_ANCHOR_POSITION_HORIZONTAL_CENTER:I = 0x40

.field public static final whitelist SEM_POP_OVER_ANCHOR_POSITION_HORIZONTAL_LEFT:I = 0x10

.field public static final whitelist SEM_POP_OVER_ANCHOR_POSITION_HORIZONTAL_RIGHT:I = 0x20

.field public static final whitelist SEM_POP_OVER_ANCHOR_POSITION_VERTICAL_BOTTOM:I = 0x2

.field public static final whitelist SEM_POP_OVER_ANCHOR_POSITION_VERTICAL_CENTER:I = 0x4

.field public static final whitelist SEM_POP_OVER_ANCHOR_POSITION_VERTICAL_TOP:I = 0x1

.field public static final whitelist SEM_POP_OVER_POSITION_HORIZONTAL_CENTER:I = 0x40

.field public static final whitelist SEM_POP_OVER_POSITION_HORIZONTAL_LEFT:I = 0x10

.field public static final whitelist SEM_POP_OVER_POSITION_HORIZONTAL_RIGHT:I = 0x20

.field public static final whitelist SEM_POP_OVER_POSITION_VERTICAL_BOTTOM:I = 0x2

.field public static final whitelist SEM_POP_OVER_POSITION_VERTICAL_CENTER:I = 0x4

.field public static final whitelist SEM_POP_OVER_POSITION_VERTICAL_TOP:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ActivityOptions"


# instance fields
.field private greylist-max-o mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

.field private greylist-max-o mAnimationFinishedListener:Landroid/os/IRemoteCallback;

.field private greylist-max-o mAnimationStartedListener:Landroid/os/IRemoteCallback;

.field private greylist-max-o mAnimationType:I

.field private greylist-max-o mAppVerificationBundle:Landroid/os/Bundle;

.field private blacklist mApplyActivityFlagsForBubbles:Z

.field private blacklist mApplyBigFreeformSize:Z

.field private greylist-max-o mAvoidMoveToFront:Z

.field private blacklist mCallerDisplayId:I

.field private blacklist mCustomBackgroundColor:I

.field private greylist-max-o mCustomEnterResId:I

.field private greylist-max-o mCustomExitResId:I

.field private greylist-max-o mCustomInPlaceResId:I

.field private greylist-max-o mDisallowEnterPictureInPictureWhileLaunching:Z

.field private blacklist mDismissKeyguardIfInsecure:Z

.field private blacklist mDismissSplitBeforeLaunch:Z

.field private blacklist mEnterSplitSideWithAdjacentFlag:I

.field private greylist-max-o mExitCoordinatorIndex:I

.field private blacklist mForceLaunchWindowingMode:I

.field private blacklist mFreezeRecentTasksReordering:Z

.field private greylist-max-o mHeight:I

.field private blacklist mIgnorePendingIntentCreatorForegroundState:Z

.field private blacklist mIsActiveApplaunch:Z

.field private blacklist mIsActivityEmbeddedPlaceholder:Z

.field private blacklist mIsEligibleForLegacyPermissionPrompt:Z

.field private blacklist mIsMlLaunch:I

.field private blacklist mIsPopOver:Z

.field private greylist-max-o mIsReturning:Z

.field private blacklist mIsStartedFromWindowTypeLauncher:Z

.field private greylist-max-o mLaunchActivityType:I

.field private greylist-max-o mLaunchBounds:Landroid/graphics/Rect;

.field private blacklist mLaunchCookie:Landroid/os/IBinder;

.field private greylist-max-o mLaunchDisplayId:I

.field private blacklist mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

.field private blacklist mLaunchRootTask:Landroid/window/WindowContainerToken;

.field private blacklist mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

.field private blacklist mLaunchTaskFragmentToken:Landroid/os/IBinder;

.field private greylist-max-o mLaunchTaskId:I

.field private greylist-max-o mLaunchWindowingMode:I

.field private blacklist mLaunchedFromBubble:Z

.field private blacklist mLaunchedFromDnD:Z

.field private greylist-max-o mLockTaskMode:Z

.field private blacklist mNeedToReparentCell:Z

.field private blacklist mOverrideTaskTransition:Z

.field private greylist-max-o mPackageName:Ljava/lang/String;

.field private blacklist mPendingIntentLaunchFlags:I

.field public blacklist mPopOverAllowOutsideTouch:Z

.field public blacklist mPopOverAnchorMarginDp:[Landroid/graphics/Point;

.field public blacklist mPopOverAnchorPosition:[I

.field public blacklist mPopOverAnimationPackageName:Ljava/lang/String;

.field public blacklist mPopOverEnterResId:I

.field public blacklist mPopOverExitResId:I

.field public blacklist mPopOverHeightDp:[I

.field public blacklist mPopOverHeightWeight:[F

.field public blacklist mPopOverInheritCloseEnterResId:I

.field public blacklist mPopOverInheritCloseExitResId:I

.field public blacklist mPopOverInheritOpenEnterResId:I

.field public blacklist mPopOverInheritOpenExitResId:I

.field public blacklist mPopOverInheritOptions:Z

.field public blacklist mPopOverRemoveDefaultMargin:Z

.field public blacklist mPopOverRemoveOutlineEffect:Z

.field public blacklist mPopOverWidthDp:[I

.field public blacklist mPopOverWidthWeight:[F

.field private blacklist mPreserveTaskWindowingMode:Z

.field private greylist-max-o mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

.field private blacklist mRemoteTransition:Landroid/window/RemoteTransition;

.field private blacklist mRemoveWithTaskOrganizer:Z

.field private greylist-max-o mResultCode:I

.field private greylist-max-o mResultData:Landroid/content/Intent;

.field private blacklist mResumedAffordanceAnimationRequested:Z

.field private greylist-max-o mRotationAnimationHint:I

.field private greylist-max-o mSharedElementNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

.field private greylist-max-o mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

.field private blacklist mSplashScreenStyle:I

.field private blacklist mSplashScreenThemeResName:Ljava/lang/String;

.field private blacklist mSplitPosition:I

.field private greylist-max-o mSplitScreenCreateMode:I

.field private greylist-max-o mStartX:I

.field private greylist-max-o mStartY:I

.field private blacklist mStartedByMDMAdmin:Z

.field private blacklist mTaskAlwaysOnTop:Z

.field private greylist-max-o mTaskOverlay:Z

.field private greylist-max-o mTaskOverlayCanResume:Z

.field private greylist-max-o mThumbnail:Landroid/graphics/Bitmap;

.field private blacklist mTransientLaunch:Z

.field private greylist-max-o mTransitionReceiver:Landroid/os/ResultReceiver;

.field private greylist-max-o mUsageTimeReport:Landroid/app/PendingIntent;

.field private greylist-max-o mWidth:I


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 2

    .line 1318
    invoke-direct {p0}, Landroid/app/ComponentOptions;-><init>()V

    .line 511
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 527
    iput v0, p0, Landroid/app/ActivityOptions;->mIsMlLaunch:I

    .line 534
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    .line 535
    iput v0, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    .line 539
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    .line 541
    iput v1, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    .line 543
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 545
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 555
    iput v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    .line 563
    iput v0, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    .line 578
    iput v1, p0, Landroid/app/ActivityOptions;->mForceLaunchWindowingMode:I

    .line 595
    iput v1, p0, Landroid/app/ActivityOptions;->mSplitPosition:I

    .line 596
    iput v0, p0, Landroid/app/ActivityOptions;->mSplitScreenCreateMode:I

    .line 597
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mNeedToReparentCell:Z

    .line 601
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mLaunchedFromDnD:Z

    .line 605
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsActivityEmbeddedPlaceholder:Z

    .line 3057
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    .line 3059
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    .line 3061
    new-array v1, v0, [Landroid/graphics/Point;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    .line 3063
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    .line 3065
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mPopOverInheritOptions:Z

    .line 1319
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "opts"    # Landroid/os/Bundle;

    .line 1323
    invoke-direct {p0, p1}, Landroid/app/ComponentOptions;-><init>(Landroid/os/Bundle;)V

    .line 511
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 527
    iput v0, p0, Landroid/app/ActivityOptions;->mIsMlLaunch:I

    .line 534
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    .line 535
    iput v0, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    .line 539
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    .line 541
    iput v1, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    .line 543
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 545
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 555
    iput v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    .line 563
    iput v0, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    .line 578
    iput v1, p0, Landroid/app/ActivityOptions;->mForceLaunchWindowingMode:I

    .line 595
    iput v1, p0, Landroid/app/ActivityOptions;->mSplitPosition:I

    .line 596
    iput v0, p0, Landroid/app/ActivityOptions;->mSplitScreenCreateMode:I

    .line 597
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mNeedToReparentCell:Z

    .line 601
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mLaunchedFromDnD:Z

    .line 605
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsActivityEmbeddedPlaceholder:Z

    .line 3057
    const/4 v2, 0x2

    new-array v3, v2, [I

    iput-object v3, p0, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    .line 3059
    new-array v3, v2, [I

    iput-object v3, p0, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    .line 3061
    new-array v3, v2, [Landroid/graphics/Point;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    .line 3063
    new-array v2, v2, [I

    iput-object v2, p0, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    .line 3065
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mPopOverInheritOptions:Z

    .line 1325
    const-string v3, "android:activity.packageName"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 1327
    :try_start_0
    const-string v3, "android:activity.usageTimeReport"

    const-class v4, Landroid/app/PendingIntent;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1330
    goto :goto_0

    .line 1328
    :catch_0
    move-exception v3

    .line 1329
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string v4, "ActivityOptions"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1331
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_0
    const-string v3, "android:activity.launchBounds"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    .line 1332
    const-string v3, "android:activity.animType"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1333
    const-string v4, "android:activity.animHeight"

    const-string v5, "android:activity.animWidth"

    const-string v6, "android:activity.animStartY"

    const-string v7, "android:activity.animStartX"

    const-string v8, "android:activity.animStartListener"

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 1343
    :pswitch_1
    const-string v3, "android:activity.animInPlaceRes"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    .line 1344
    goto/16 :goto_1

    .line 1372
    :pswitch_2
    const-string v3, "android:activity.transitionCompleteListener"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 1373
    const-string v3, "android:activity.transitionIsReturning"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 1374
    const-string v3, "android:activity.sharedElementNames"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 1375
    const-string v3, "android:activity.resultData"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    .line 1376
    const-string v3, "android:activity.resultCode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mResultCode:I

    .line 1377
    const-string v3, "android:activity.exitCoordinatorIndex"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    goto :goto_1

    .line 1359
    :pswitch_3
    const-string v3, "android:activity.animThumbnail"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/hardware/HardwareBuffer;

    .line 1360
    .local v3, "buffer":Landroid/hardware/HardwareBuffer;
    if-eqz v3, :cond_0

    .line 1361
    const/4 v9, 0x0

    invoke-static {v3, v9}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 1363
    :cond_0
    invoke-virtual {p1, v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1364
    invoke-virtual {p1, v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1365
    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 1366
    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 1367
    nop

    .line 1368
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1367
    invoke-static {v4}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v4

    iput-object v4, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 1369
    goto :goto_1

    .line 1348
    .end local v3    # "buffer":Landroid/hardware/HardwareBuffer;
    :pswitch_4
    invoke-virtual {p1, v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1349
    invoke-virtual {p1, v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1350
    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 1351
    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 1352
    goto :goto_1

    .line 1335
    :pswitch_5
    const-string v3, "android:activity.animEnterRes"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    .line 1336
    const-string v3, "android:activity.animExitRes"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 1337
    const-string v3, "android:activity.backgroundColor"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    .line 1338
    nop

    .line 1339
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1338
    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 1340
    nop

    .line 1380
    :goto_1
    const-string v3, "android:activity.lockTaskMode"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 1381
    const-string v3, "android.activity.launchDisplayId"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    .line 1382
    const-string v3, "android.activity.callerDisplayId"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    .line 1383
    const-string v3, "android.activity.launchTaskDisplayAreaToken"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerToken;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    .line 1384
    const-string v3, "android.activity.launchRootTaskToken"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerToken;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    .line 1385
    const-string v3, "android.activity.launchTaskFragmentToken"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    .line 1386
    const-string v3, "android.activity.windowingMode"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    .line 1387
    const-string v3, "android.activity.activityType"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    .line 1388
    const-string v3, "android.activity.launchTaskId"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 1389
    const-string v3, "android.activity.pendingIntentLaunchFlags"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    .line 1390
    const-string v3, "android.activity.alwaysOnTop"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    .line 1391
    const-string v3, "android.activity.taskOverlay"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    .line 1392
    const-string v3, "android.activity.taskOverlayCanResume"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    .line 1393
    const-string v3, "android.activity.avoidMoveToFront"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    .line 1394
    const-string v3, "android.activity.freezeRecentTasksReordering"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    .line 1395
    const-string v3, "android:activity.disallowEnterPictureInPictureWhileLaunching"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    .line 1397
    const-string v3, "android:activity.applyActivityFlagsForBubbles"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    .line 1399
    const-string v3, "android:activity.animSpecs"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1400
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 1401
    .local v3, "specs":[Landroid/os/Parcelable;
    array-length v4, v3

    new-array v4, v4, [Landroid/view/AppTransitionAnimationSpec;

    iput-object v4, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    .line 1402
    array-length v4, v3

    sub-int/2addr v4, v2

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_1

    .line 1403
    iget-object v5, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    aget-object v6, v3, v4

    check-cast v6, Landroid/view/AppTransitionAnimationSpec;

    aput-object v6, v5, v4

    .line 1402
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1406
    .end local v3    # "specs":[Landroid/os/Parcelable;
    .end local v4    # "i":I
    :cond_1
    const-string v3, "android:activity.animationFinishedListener"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1407
    nop

    .line 1408
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1407
    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    .line 1410
    :cond_2
    const-string v3, "android.activity.sourceInfo"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityOptions$SourceInfo;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    .line 1411
    const-string v3, "android:activity.rotationAnimationHint"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    .line 1412
    const-string v3, "android:instantapps.installerbundle"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    .line 1413
    const-string v3, "android:activity.specsFuture"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1414
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1420
    :cond_3
    const-string v3, "android:activity.isActiveLaunch"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mIsActiveApplaunch:Z

    .line 1421
    const-string v3, "android:activity.isMlLaunch"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mIsMlLaunch:I

    .line 1427
    const-string v3, "edm:activity.startedByMDMAdmin"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mStartedByMDMAdmin:Z

    .line 1430
    const-string v3, "android:activity.remoteAnimationAdapter"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/view/RemoteAnimationAdapter;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 1431
    const-string v3, "android.activity.launchCookie"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    .line 1432
    const-string v3, "android:activity.remoteTransition"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/window/RemoteTransition;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 1433
    const-string v3, "android:activity.overrideTaskTransition"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    .line 1434
    const-string v3, "android.activity.splashScreenTheme"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    .line 1435
    const-string v3, "android.activity.removeWithTaskOrganizer"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    .line 1436
    const-string v3, "android.activity.launchTypeBubble"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    .line 1437
    const-string v3, "android.activity.transientLaunch"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    .line 1438
    const-string v3, "android.activity.splashScreenStyle"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    .line 1439
    const-string v3, "android.activity.launchIntoPipParams"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PictureInPictureParams;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    .line 1440
    nop

    .line 1441
    const-string v3, "android:activity.legacyPermissionPromptEligible"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    .line 1442
    const-string v3, "android.activity.dismissKeyguardIfInsecure"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mDismissKeyguardIfInsecure:Z

    .line 1443
    const-string v3, "android.activity.ignorePendingIntentCreatorForegroundState"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mIgnorePendingIntentCreatorForegroundState:Z

    .line 1447
    const-string v3, "android:activity.popOverWidth"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "android:activity.popOverInheritOptions"

    if-eqz v4, :cond_5

    .line 1448
    const-string v4, "android:activity.popOverHeight"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1449
    const-string v6, "android:activity.popOverAnchor"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1450
    const-string v7, "android:activity.popOverAnchorPosition"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1451
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    .line 1452
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    .line 1453
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 1454
    .local v3, "parcelables":[Landroid/os/Parcelable;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    array-length v6, v3

    if-ge v4, v6, :cond_4

    .line 1455
    iget-object v6, p0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    aget-object v8, v3, v4

    check-cast v8, Landroid/graphics/Point;

    aput-object v8, v6, v4

    .line 1454
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1457
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, p0, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    .line 1458
    const-string v4, "android:activity.popOver"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Landroid/app/ActivityOptions;->mIsPopOver:Z

    .line 1461
    const-string v4, "android:activity.popOverWidthWeight"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v4

    iput-object v4, p0, Landroid/app/ActivityOptions;->mPopOverWidthWeight:[F

    .line 1462
    const-string v4, "android:activity.popOverHeightWeight"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v4

    iput-object v4, p0, Landroid/app/ActivityOptions;->mPopOverHeightWeight:[F

    .line 1463
    const-string v4, "android:activity.popOverAllowOutsideTouch"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Landroid/app/ActivityOptions;->mPopOverAllowOutsideTouch:Z

    .line 1464
    const-string v4, "android:activity.popOverRemoveDefaultMargin"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Landroid/app/ActivityOptions;->mPopOverRemoveDefaultMargin:Z

    .line 1465
    const-string v4, "android:activity.popOverRemoveOutlineEffect"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Landroid/app/ActivityOptions;->mPopOverRemoveOutlineEffect:Z

    .line 1466
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Landroid/app/ActivityOptions;->mPopOverInheritOptions:Z

    .end local v3    # "parcelables":[Landroid/os/Parcelable;
    goto :goto_4

    .line 1468
    :cond_5
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1469
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mPopOverInheritOptions:Z

    goto :goto_5

    .line 1468
    :cond_6
    :goto_4
    nop

    .line 1472
    :goto_5
    nop

    .line 1473
    const-string v3, "android:activity.popOverAnimationPackageName"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1474
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mPopOverAnimationPackageName:Ljava/lang/String;

    .line 1475
    const-string v3, "android:activity.popOverEnterResId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mPopOverEnterResId:I

    .line 1476
    const-string v3, "android:activity.popOverExitResId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mPopOverExitResId:I

    .line 1477
    const-string v3, "android:activity.popOverInheritOpenEnterResId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mPopOverInheritOpenEnterResId:I

    .line 1478
    const-string v3, "android:activity.popOverInheritOpenExitResId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mPopOverInheritOpenExitResId:I

    .line 1479
    const-string v3, "android:activity.popOverInheritCloseEnterResId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mPopOverInheritCloseEnterResId:I

    .line 1480
    const-string v3, "android:activity.popOverInheritCloseExitResId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mPopOverInheritCloseExitResId:I

    .line 1483
    :cond_7
    const-string v3, "android:activity.startedFromWindowTypeLauncher"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1484
    nop

    .line 1485
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mIsStartedFromWindowTypeLauncher:Z

    .line 1488
    :cond_8
    const-string v3, "android:activity.resumedAffordanceAnimationRequested"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1490
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mResumedAffordanceAnimationRequested:Z

    .line 1494
    :cond_9
    nop

    .line 1495
    const-string v3, "android.activity.forceWindowingMode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1496
    nop

    .line 1497
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mForceLaunchWindowingMode:I

    .line 1500
    :cond_a
    const-string v3, "android:activity.applyBigFreeformSize"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1501
    nop

    .line 1502
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mApplyBigFreeformSize:Z

    .line 1506
    :cond_b
    const-string v2, "android:activity.dismissSplitBeforeLaunch"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mDismissSplitBeforeLaunch:Z

    .line 1509
    const-string v2, "android.activity.preserveTaskWindowingMode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1511
    const-string v2, "android.activity.preserveTaskWindowingMode"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mPreserveTaskWindowingMode:Z

    .line 1515
    :cond_c
    const-string v2, "android.activity.splitPosition"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1516
    const-string v2, "android.activity.splitPosition"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mSplitPosition:I

    .line 1518
    :cond_d
    const-string v2, "android:activity.splitScreenCreateMode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1519
    const-string v2, "android:activity.splitScreenCreateMode"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mSplitScreenCreateMode:I

    .line 1522
    :cond_e
    const-string v0, "android:activity.reparentCell"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1523
    const-string v0, "android:activity.reparentCell"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mNeedToReparentCell:Z

    .line 1527
    :cond_f
    const-string v0, "android.activity.launchTypeDnD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1528
    const-string v0, "android.activity.launchTypeDnD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mLaunchedFromDnD:Z

    .line 1531
    :cond_10
    const-string v0, "android:activity.enterSplitSideWithAdjacentFlag"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mEnterSplitSideWithAdjacentFlag:I

    .line 1534
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v0, :cond_11

    .line 1535
    const-string v0, "android:activity.activityEmbeddedPlaceholder"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsActivityEmbeddedPlaceholder:Z

    .line 1539
    :cond_11
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public static greylist-max-o abort(Landroid/app/ActivityOptions;)V
    .locals 0
    .param p0, "options"    # Landroid/app/ActivityOptions;

    .line 1741
    if-eqz p0, :cond_0

    .line 1742
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->abort()V

    .line 1744
    :cond_0
    return-void
.end method

.method public static greylist-max-o fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;
    .locals 1
    .param p0, "bOptions"    # Landroid/os/Bundle;

    .line 1736
    if-eqz p0, :cond_0

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0, p0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static greylist-max-o makeAspectScaledThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p8, "scaleUp"    # Z

    .line 1010
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1011
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 1012
    if-eqz p8, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    .line 1013
    :cond_0
    const/16 v1, 0x9

    :goto_0
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1014
    iput-object p1, v0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 1015
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1016
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1017
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1018
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p3

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1019
    iput p4, v0, Landroid/app/ActivityOptions;->mWidth:I

    .line 1020
    iput p5, v0, Landroid/app/ActivityOptions;->mHeight:I

    .line 1021
    invoke-direct {v0, p6, p7}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 1022
    return-object v0
.end method

.method public static whitelist makeBasic()Landroid/app/ActivityOptions;
    .locals 1

    .line 1236
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1237
    .local v0, "opts":Landroid/app/ActivityOptions;
    return-object v0
.end method

.method public static whitelist makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "source"    # Landroid/view/View;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 877
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 878
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/16 v1, 0xb

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 879
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 880
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 881
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p1

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 882
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 883
    iput p3, v0, Landroid/app/ActivityOptions;->mWidth:I

    .line 884
    iput p4, v0, Landroid/app/ActivityOptions;->mHeight:I

    .line 885
    return-object v0
.end method

.method public static whitelist makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I

    .line 623
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist makeCustomAnimation(Landroid/content/Context;III)Landroid/app/ActivityOptions;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I
    .param p3, "backgroundColor"    # I

    .line 643
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static greylist makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I
    .param p3, "backgroundColor"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .line 669
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 670
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 671
    const/4 v1, 0x1

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 672
    iput p1, v0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    .line 673
    iput p2, v0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 674
    iput p3, v0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    .line 675
    invoke-direct {v0, p4, p5}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 676
    return-object v0
.end method

.method public static blacklist makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I
    .param p3, "backgroundColor"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "startedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p6, "finishedListener"    # Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    .line 705
    invoke-static/range {p0 .. p5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 707
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-direct {v0, p4, p6}, Landroid/app/ActivityOptions;->setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    .line 708
    return-object v0
.end method

.method public static greylist-max-o makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "animId"    # I

    .line 758
    if-eqz p1, :cond_0

    .line 762
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 763
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 764
    const/16 v1, 0xa

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 765
    iput p1, v0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    .line 766
    return-object v0

    .line 759
    .end local v0    # "opts":Landroid/app/ActivityOptions;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must specify a valid animation."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist makeCustomTaskAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "startedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p5, "finishedListener"    # Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    .line 739
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 741
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    .line 742
    return-object v0
.end method

.method public static whitelist makeLaunchIntoPip(Landroid/app/PictureInPictureParams;)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "pictureInPictureParams"    # Landroid/app/PictureInPictureParams;

    .line 1304
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1305
    .local v0, "opts":Landroid/app/ActivityOptions;
    new-instance v1, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v1, p0}, Landroid/app/PictureInPictureParams$Builder;-><init>(Landroid/app/PictureInPictureParams;)V

    .line 1306
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/PictureInPictureParams$Builder;->setIsLaunchIntoPip(Z)Landroid/app/PictureInPictureParams$Builder;

    move-result-object v1

    .line 1307
    invoke-virtual {v1}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    .line 1308
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    .line 1309
    return-object v0
.end method

.method public static greylist makeMultiThumbFutureAspectScaleAnimation(Landroid/content/Context;Landroid/os/Handler;Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "specsFuture"    # Landroid/view/IAppTransitionAnimationSpecsFuture;
    .param p3, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p4, "scaleUp"    # Z

    .line 971
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 972
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 973
    if-eqz p4, :cond_0

    .line 974
    const/16 v1, 0x8

    goto :goto_0

    .line 975
    :cond_0
    const/16 v1, 0x9

    :goto_0
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 976
    iput-object p2, v0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 977
    invoke-direct {v0, p1, p3}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 978
    return-object v0
.end method

.method public static greylist-max-o makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;
    .locals 2

    .line 896
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 897
    .local v0, "options":Landroid/app/ActivityOptions;
    const/16 v1, 0xc

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 898
    return-object v0
.end method

.method public static greylist makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "remoteAnimationAdapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 1249
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1250
    .local v0, "opts":Landroid/app/ActivityOptions;
    iput-object p0, v0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 1251
    const/16 v1, 0xd

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "makeRemoteAnimation, adapter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1255
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1254
    const-string v2, "ActivityOptions"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    return-object v0
.end method

.method public static blacklist makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "remoteAnimationAdapter"    # Landroid/view/RemoteAnimationAdapter;
    .param p1, "remoteTransition"    # Landroid/window/RemoteTransition;

    .line 1269
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1270
    .local v0, "opts":Landroid/app/ActivityOptions;
    iput-object p0, v0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 1271
    const/16 v1, 0xd

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1272
    iput-object p1, v0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 1275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "makeRemoteAnimation, adapter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1276
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1275
    const-string v2, "ActivityOptions"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    return-object v0
.end method

.method public static blacklist makeRemoteTransition(Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;
    .locals 1
    .param p0, "remoteTransition"    # Landroid/window/RemoteTransition;

    .line 1289
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1290
    .local v0, "opts":Landroid/app/ActivityOptions;
    iput-object p0, v0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 1291
    return-object v0
.end method

.method public static whitelist makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "source"    # Landroid/view/View;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 849
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 850
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 851
    const/4 v1, 0x2

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 852
    new-array v1, v1, [I

    .line 853
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 854
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p1

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 855
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 856
    iput p3, v0, Landroid/app/ActivityOptions;->mWidth:I

    .line 857
    iput p4, v0, Landroid/app/ActivityOptions;->mHeight:I

    .line 858
    return-object v0
.end method

.method static greylist-max-o makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/app/ExitTransitionCoordinator;Ljava/util/ArrayList;ILandroid/content/Intent;)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "exitCoordinator"    # Landroid/app/ExitTransitionCoordinator;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/app/ExitTransitionCoordinator;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/Intent;",
            ")",
            "Landroid/app/ActivityOptions;"
        }
    .end annotation

    .line 1192
    .local p2, "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1193
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x5

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1194
    iput-object p2, v0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 1195
    iput-object p1, v0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 1196
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 1197
    iput p3, v0, Landroid/app/ActivityOptions;->mResultCode:I

    .line 1198
    iput-object p4, v0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    .line 1199
    if-nez p0, :cond_0

    .line 1200
    const/4 v1, -0x1

    iput v1, v0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    goto :goto_0

    .line 1202
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    .line 1203
    invoke-virtual {v1, p1}, Landroid/app/ActivityTransitionState;->addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I

    move-result v1

    iput v1, v0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    .line 1207
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "makeSceneTransitionAnimation is called, activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    .line 1208
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1207
    const-string v2, "ActivityOptions"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 1212
    return-object v0
.end method

.method public static whitelist makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "sharedElementName"    # Ljava/lang/String;

    .line 1060
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/util/Pair;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/ActivityOptions;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1085
    .local p1, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1086
    .local v0, "opts":Landroid/app/ActivityOptions;
    new-instance v1, Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;

    invoke-direct {v1, p0}, Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    .line 1088
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1086
    invoke-static {v1, v2, v3, v0, p1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;Landroid/view/Window;Landroid/app/ActivityOptions;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;

    move-result-object v1

    .line 1089
    .local v1, "exit":Landroid/app/ExitTransitionCoordinator;
    iget-object v2, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    .line 1090
    invoke-virtual {v2, v1}, Landroid/app/ActivityTransitionState;->addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I

    move-result v2

    iput v2, v0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    .line 1091
    return-object v0
.end method

.method static blacklist makeSceneTransitionAnimation(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;Landroid/view/Window;Landroid/app/ActivityOptions;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;
    .locals 11
    .param p0, "exitCallbacks"    # Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;
    .param p1, "callback"    # Landroid/app/SharedElementCallback;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "opts"    # Landroid/app/ActivityOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;",
            "Landroid/app/SharedElementCallback;",
            "Landroid/view/Window;",
            "Landroid/app/ActivityOptions;",
            "[",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/ExitTransitionCoordinator;"
        }
    .end annotation

    .line 1144
    .local p4, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1145
    const/4 v0, 0x6

    iput v0, p3, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1146
    const/4 v0, 0x0

    return-object v0

    .line 1148
    :cond_0
    const/4 v0, 0x5

    iput v0, p3, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1151
    .local v0, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    .line 1153
    .local v9, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p4, :cond_3

    .line 1154
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p4

    if-ge v1, v2, :cond_3

    .line 1155
    aget-object v2, p4, v1

    .line 1156
    .local v2, "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1157
    .local v3, "sharedElementName":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1160
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1161
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    .line 1162
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 1165
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1154
    .end local v2    # "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    .end local v3    # "sharedElementName":Ljava/lang/String;
    .end local v4    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1163
    .restart local v2    # "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    .restart local v3    # "sharedElementName":Ljava/lang/String;
    .restart local v4    # "view":Landroid/view/View;
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Shared element must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1158
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Shared element name must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1169
    .end local v1    # "i":I
    .end local v2    # "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    .end local v3    # "sharedElementName":Ljava/lang/String;
    :cond_3
    new-instance v10, Landroid/app/ExitTransitionCoordinator;

    const/4 v8, 0x0

    move-object v1, v10

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, v0

    move-object v6, v0

    move-object v7, v9

    invoke-direct/range {v1 .. v8}, Landroid/app/ExitTransitionCoordinator;-><init>(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/view/Window;Landroid/app/SharedElementCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 1171
    .local v1, "exit":Landroid/app/ExitTransitionCoordinator;
    iput-object v1, p3, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 1172
    iput-object v0, p3, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 1173
    const/4 v2, 0x0

    iput-boolean v2, p3, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 1174
    return-object v1
.end method

.method public static whitelist makeTaskLaunchBehind()Landroid/app/ActivityOptions;
    .locals 2

    .line 1226
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1227
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x7

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1228
    return-object v0
.end method

.method private static greylist-max-o makeThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p5, "scaleUp"    # Z

    .line 950
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 951
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 952
    if-eqz p5, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 953
    iput-object p1, v0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 954
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 955
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 956
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 957
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p3

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 958
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v2, p4}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 959
    return-object v0
.end method

.method public static greylist-max-o makeThumbnailAspectScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .locals 9
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .line 1003
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v8}, Landroid/app/ActivityOptions;->makeAspectScaledThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o makeThumbnailAspectScaleDownAnimation(Landroid/view/View;[Landroid/view/AppTransitionAnimationSpec;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;
    .locals 2
    .param p0, "source"    # Landroid/view/View;
    .param p1, "specs"    # [Landroid/view/AppTransitionAnimationSpec;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "onAnimationStartedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p4, "onAnimationFinishedListener"    # Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    .line 1030
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1031
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 1032
    const/16 v1, 0x9

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1033
    iput-object p1, v0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    .line 1034
    invoke-direct {v0, p2, p3}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 1035
    invoke-direct {v0, p2, p4}, Landroid/app/ActivityOptions;->setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    .line 1036
    return-object v0
.end method

.method public static whitelist makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/app/ActivityOptions;
    .locals 1
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I

    .line 922
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .locals 6
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .line 944
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist setExitTransitionTimeout(J)V
    .locals 0
    .param p0, "timeoutMillis"    # J

    .line 1185
    sput-wide p0, Landroid/app/ExitTransitionCoordinator;->sMaxWaitMillis:J

    .line 1186
    return-void
.end method

.method private greylist-max-o setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    .line 800
    if-eqz p2, :cond_0

    .line 801
    new-instance v0, Landroid/app/ActivityOptions$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/ActivityOptions$2;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    .line 814
    :cond_0
    return-void
.end method

.method private greylist-max-o setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .line 771
    if-eqz p2, :cond_0

    .line 772
    new-instance v0, Landroid/app/ActivityOptions$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/ActivityOptions$1;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 784
    :cond_0
    return-void
.end method

.method public static varargs blacklist startSharedElementAnimation(Landroid/view/Window;Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;[Landroid/util/Pair;)Landroid/util/Pair;
    .locals 3
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "exitCallbacks"    # Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;
    .param p2, "callback"    # Landroid/app/SharedElementCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            "Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;",
            "Landroid/app/SharedElementCallback;",
            "[",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair<",
            "Landroid/app/ActivityOptions;",
            "Landroid/app/ExitTransitionCoordinator;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1109
    .local p3, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1110
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-static {p1, p2, p0, v0, p3}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;Landroid/view/Window;Landroid/app/ActivityOptions;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;

    move-result-object v1

    .line 1112
    .local v1, "exit":Landroid/app/ExitTransitionCoordinator;
    const/4 v2, -0x1

    iput v2, v0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    .line 1113
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method public static greylist-max-o stopSharedElementAnimation(Landroid/view/Window;)V
    .locals 4
    .param p0, "window"    # Landroid/view/Window;

    .line 1125
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1126
    .local v0, "decorView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1127
    return-void

    .line 1129
    :cond_0
    nop

    .line 1130
    const v1, 0x1020295

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ExitTransitionCoordinator;

    .line 1131
    .local v2, "exit":Landroid/app/ExitTransitionCoordinator;
    if-eqz v2, :cond_1

    .line 1132
    invoke-virtual {v2}, Landroid/app/ExitTransitionCoordinator;->cancelPendingTransitions()Z

    .line 1133
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 1134
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 1135
    invoke-virtual {v2}, Landroid/app/ExitTransitionCoordinator;->resetViews()V

    .line 1136
    invoke-virtual {v2}, Landroid/app/ExitTransitionCoordinator;->clearState()V

    .line 1137
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1139
    :cond_1
    return-void
.end method


# virtual methods
.method public greylist-max-o abort()V
    .locals 2

    .line 1642
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_0

    .line 1644
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1646
    goto :goto_0

    .line 1645
    :catch_0
    move-exception v0

    .line 1648
    :cond_0
    :goto_0
    return-void
.end method

.method public greylist-max-o canTaskOverlayResume()Z
    .locals 1

    .line 2032
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    return v0
.end method

.method public greylist-max-o disallowEnterPictureInPictureWhileLaunching()Z
    .locals 1

    .line 2113
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    return v0
.end method

.method public greylist-max-o forTargetActivity()Landroid/app/ActivityOptions;
    .locals 2

    .line 2689
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2690
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 2691
    .local v0, "result":Landroid/app/ActivityOptions;
    invoke-virtual {v0, p0}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    .line 2692
    return-object v0

    .line 2695
    .end local v0    # "result":Landroid/app/ActivityOptions;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist freezeRecentTasksReordering()Z
    .locals 1

    .line 2076
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    return v0
.end method

.method public greylist-max-o getAnimSpecs()[Landroid/view/AppTransitionAnimationSpec;
    .locals 1

    .line 1707
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    return-object v0
.end method

.method public greylist-max-o getAnimationFinishedListener()Landroid/os/IRemoteCallback;
    .locals 1

    .line 1634
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method public blacklist getAnimationStartedListener()Landroid/os/IRemoteCallback;
    .locals 1

    .line 1629
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method public greylist-max-o getAnimationType()I
    .locals 1

    .line 1574
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    return v0
.end method

.method public greylist-max-o getAvoidMoveToFront()Z
    .locals 1

    .line 2058
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    return v0
.end method

.method public blacklist getCallerDisplayId()I
    .locals 1

    .line 1856
    iget v0, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    return v0
.end method

.method public blacklist getCustomBackgroundColor()I
    .locals 1

    .line 1594
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    return v0
.end method

.method public greylist-max-o getCustomEnterResId()I
    .locals 1

    .line 1579
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    return v0
.end method

.method public greylist-max-o getCustomExitResId()I
    .locals 1

    .line 1584
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    return v0
.end method

.method public greylist-max-o getCustomInPlaceResId()I
    .locals 1

    .line 1589
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    return v0
.end method

.method public blacklist getDismissKeyguardIfInsecure()Z
    .locals 1

    .line 2225
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mDismissKeyguardIfInsecure:Z

    return v0
.end method

.method public greylist-max-o getExitCoordinatorKey()I
    .locals 1

    .line 1638
    iget v0, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    return v0
.end method

.method public blacklist getForceLaunchWindowingMode()I
    .locals 1

    .line 1933
    iget v0, p0, Landroid/app/ActivityOptions;->mForceLaunchWindowingMode:I

    return v0
.end method

.method public greylist-max-o getHeight()I
    .locals 1

    .line 1624
    iget v0, p0, Landroid/app/ActivityOptions;->mHeight:I

    return v0
.end method

.method public blacklist getIgnorePendingIntentCreatorForegroundState()Z
    .locals 1

    .line 2242
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIgnorePendingIntentCreatorForegroundState:Z

    return v0
.end method

.method public greylist-max-o getLaunchActivityType()I
    .locals 1

    .line 1950
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    return v0
.end method

.method public whitelist getLaunchBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1569
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getLaunchCookie()Landroid/os/IBinder;
    .locals 1

    .line 2143
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist getLaunchDisplayId()I
    .locals 1

    .line 1835
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    return v0
.end method

.method public blacklist getLaunchIntoPipParams()Landroid/app/PictureInPictureParams;
    .locals 1

    .line 1918
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    return-object v0
.end method

.method public blacklist getLaunchRootTask()Landroid/window/WindowContainerToken;
    .locals 1

    .line 1879
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public greylist-max-o getLaunchTaskBehind()Z
    .locals 2

    .line 1314
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;
    .locals 1

    .line 1867
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public blacklist getLaunchTaskFragmentToken()Landroid/os/IBinder;
    .locals 1

    .line 1890
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist getLaunchTaskId()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1974
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    return v0
.end method

.method public greylist-max-o getLaunchWindowingMode()I
    .locals 1

    .line 1901
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    return v0
.end method

.method public blacklist getLaunchedFromBubble()Z
    .locals 1

    .line 2182
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    return v0
.end method

.method public blacklist getLaunchedFromDnD()Z
    .locals 1

    .line 2270
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mLaunchedFromDnD:Z

    return v0
.end method

.method public whitelist getLockTaskMode()Z
    .locals 1

    .line 1753
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    return v0
.end method

.method public blacklist getOverrideTaskTransition()Z
    .locals 1

    .line 2149
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    return v0
.end method

.method public greylist-max-o getPackageName()Ljava/lang/String;
    .locals 1

    .line 1559
    iget-object v0, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPendingIntentLaunchFlags()I
    .locals 1

    .line 1990
    iget v0, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    return v0
.end method

.method public greylist-max-o getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;
    .locals 1

    .line 1716
    iget-object v0, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    return-object v0
.end method

.method public blacklist getRemoteTransition()Landroid/window/RemoteTransition;
    .locals 1

    .line 1726
    iget-object v0, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    return-object v0
.end method

.method public blacklist getRemoveWithTaskOranizer()Z
    .locals 1

    .line 2165
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    return v0
.end method

.method public greylist-max-o getResultCode()I
    .locals 1

    .line 1696
    iget v0, p0, Landroid/app/ActivityOptions;->mResultCode:I

    return v0
.end method

.method public greylist-max-o getResultData()Landroid/content/Intent;
    .locals 1

    .line 1699
    iget-object v0, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    return-object v0
.end method

.method public greylist-max-o getResultReceiver()Landroid/os/ResultReceiver;
    .locals 1

    .line 1693
    iget-object v0, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public greylist-max-o getRotationAnimationHint()I
    .locals 1

    .line 2704
    iget v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    return v0
.end method

.method public greylist-max-o getSharedElementNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1689
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getSourceInfo()Landroid/app/ActivityOptions$SourceInfo;
    .locals 1

    .line 2667
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    return-object v0
.end method

.method public greylist-max-o getSpecsFuture()Landroid/view/IAppTransitionAnimationSpecsFuture;
    .locals 1

    .line 1711
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    return-object v0
.end method

.method public whitelist getSplashScreenStyle()I
    .locals 1

    .line 1770
    iget v0, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    return v0
.end method

.method public blacklist getSplashScreenThemeResName()Ljava/lang/String;
    .locals 1

    .line 1762
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSplitPosition()I
    .locals 1

    .line 2248
    iget v0, p0, Landroid/app/ActivityOptions;->mSplitPosition:I

    return v0
.end method

.method public greylist-max-o getSplitScreenCreateMode()I
    .locals 1

    .line 2082
    iget v0, p0, Landroid/app/ActivityOptions;->mSplitScreenCreateMode:I

    return v0
.end method

.method public greylist-max-o getStartX()I
    .locals 1

    .line 1609
    iget v0, p0, Landroid/app/ActivityOptions;->mStartX:I

    return v0
.end method

.method public greylist-max-o getStartY()I
    .locals 1

    .line 1614
    iget v0, p0, Landroid/app/ActivityOptions;->mStartY:I

    return v0
.end method

.method public blacklist getStartedByMDMAdmin()Z
    .locals 1

    .line 2107
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mStartedByMDMAdmin:Z

    return v0
.end method

.method public blacklist getTaskAlwaysOnTop()Z
    .locals 1

    .line 2006
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    return v0
.end method

.method public greylist-max-o getTaskOverlay()Z
    .locals 1

    .line 2025
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    return v0
.end method

.method public blacklist getThumbnail()Landroid/hardware/HardwareBuffer;
    .locals 1

    .line 1604
    iget-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public blacklist getTransientLaunch()Z
    .locals 1

    .line 2204
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    return v0
.end method

.method public greylist-max-o getUsageTimeReport()Landroid/app/PendingIntent;
    .locals 1

    .line 1703
    iget-object v0, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public greylist-max-o getWidth()I
    .locals 1

    .line 1619
    iget v0, p0, Landroid/app/ActivityOptions;->mWidth:I

    return v0
.end method

.method public blacklist hasValidHorizontalSplitLayoutWithAdjacentFlag()Z
    .locals 3

    .line 3241
    iget v0, p0, Landroid/app/ActivityOptions;->mEnterSplitSideWithAdjacentFlag:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public blacklist hasValidLaunchAdjacentExt()Z
    .locals 1

    .line 3235
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->hasValidVerticalSplitLayoutWithAdjacentFlag()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3236
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->hasValidHorizontalSplitLayoutWithAdjacentFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3235
    :goto_1
    return v0
.end method

.method public blacklist hasValidVerticalSplitLayoutWithAdjacentFlag()Z
    .locals 2

    .line 3247
    iget v0, p0, Landroid/app/ActivityOptions;->mEnterSplitSideWithAdjacentFlag:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

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

.method public blacklist isActiveApplaunch()Z
    .locals 1

    .line 1658
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsActiveApplaunch:Z

    return v0
.end method

.method public blacklist isActivityEmbeddedPlaceholder()Z
    .locals 1

    .line 3265
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsActivityEmbeddedPlaceholder:Z

    return v0
.end method

.method public blacklist isApplyActivityFlagsForBubbles()Z
    .locals 1

    .line 2123
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    return v0
.end method

.method public blacklist isApplyBigFreeformSize()Z
    .locals 1

    .line 2795
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mApplyBigFreeformSize:Z

    return v0
.end method

.method greylist-max-o isCrossTask()Z
    .locals 1

    .line 1684
    iget v0, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isDismissSplitBeforeLaunch()Z
    .locals 1

    .line 2754
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mDismissSplitBeforeLaunch:Z

    return v0
.end method

.method public blacklist isEligibleForLegacyPermissionPrompt()Z
    .locals 1

    .line 1794
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    return v0
.end method

.method public blacklist isLaunchIntoPip()Z
    .locals 1

    .line 1926
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    if-eqz v0, :cond_0

    .line 1927
    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->isLaunchIntoPip()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1926
    :goto_0
    return v0
.end method

.method public blacklist isMlLaunch()I
    .locals 1

    .line 1668
    iget v0, p0, Landroid/app/ActivityOptions;->mIsMlLaunch:I

    return v0
.end method

.method public blacklist isPopOver()Z
    .locals 1

    .line 3071
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsPopOver:Z

    return v0
.end method

.method public blacklist isResumedAffordanceAnimationRequested()Z
    .locals 1

    .line 2778
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mResumedAffordanceAnimationRequested:Z

    return v0
.end method

.method public greylist-max-o isReturning()Z
    .locals 1

    .line 1652
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    return v0
.end method

.method public blacklist isStartedFromWindowTypeLauncher()Z
    .locals 1

    .line 2766
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsStartedFromWindowTypeLauncher:Z

    return v0
.end method

.method public blacklist launchToRightSideWithAdjacentFlag()Z
    .locals 2

    .line 3258
    iget v0, p0, Landroid/app/ActivityOptions;->mEnterSplitSideWithAdjacentFlag:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist launchToTopSideWithAdjacentFlag()Z
    .locals 2

    .line 3253
    iget v0, p0, Landroid/app/ActivityOptions;->mEnterSplitSideWithAdjacentFlag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist needToReparentCell()Z
    .locals 1

    .line 2258
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mNeedToReparentCell:Z

    return v0
.end method

.method public greylist-max-o popAppVerificationBundle()Landroid/os/Bundle;
    .locals 2

    .line 2726
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    .line 2727
    .local v0, "out":Landroid/os/Bundle;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    .line 2728
    return-object v0
.end method

.method public blacklist preserveTaskWindowingMode()V
    .locals 1

    .line 2802
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mPreserveTaskWindowingMode:Z

    .line 2803
    return-void
.end method

.method public whitelist requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "receiver"    # Landroid/app/PendingIntent;

    .line 2659
    iput-object p1, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    .line 2660
    return-void
.end method

.method public whitelist semSetChooserPopOverPosition(I)Landroid/app/ActivityOptions;
    .locals 4
    .param p1, "position"    # I

    .line 2993
    and-int/lit8 v0, p1, 0x7

    if-eqz v0, :cond_3

    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_0

    goto :goto_1

    .line 2998
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    const/4 v1, 0x1

    const/16 v2, 0x168

    aput v2, v0, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 2999
    iget-object v0, p0, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    aput v2, v0, v1

    aput v2, v0, v3

    .line 3000
    iget-object v0, p0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    aput-object v2, v0, v3

    .line 3001
    iget-object v0, p0, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    aput p1, v0, v1

    aput p1, v0, v3

    .line 3003
    and-int/lit8 v0, p1, 0x7

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 3005
    .local v0, "hasBottom":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 3006
    iget-object v2, p0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    aget-object v2, v2, v3

    const/16 v3, 0x2c

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 3008
    :cond_2
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsPopOver:Z

    .line 3009
    return-object p0

    .line 2995
    .end local v0    # "hasBottom":Z
    :cond_3
    :goto_1
    return-object p0
.end method

.method public whitelist semSetPopOverOptions([I[I[Landroid/graphics/Point;[I)Landroid/app/ActivityOptions;
    .locals 11
    .param p1, "widthDp"    # [I
    .param p2, "heightDp"    # [I
    .param p3, "marginDp"    # [Landroid/graphics/Point;
    .param p4, "position"    # [I

    .line 2962
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v10}, Landroid/app/ActivityOptions;->setPopOverOptions([I[I[Landroid/graphics/Point;[I[F[FZZZZ)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setActiveApplaunch(Z)V
    .locals 0
    .param p1, "activeApplaunch"    # Z

    .line 1663
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mIsActiveApplaunch:Z

    .line 1664
    return-void
.end method

.method public blacklist setActivityEmbeddedPlaceholder()V
    .locals 1

    .line 3270
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsActivityEmbeddedPlaceholder:Z

    .line 3271
    return-void
.end method

.method public whitelist setAppVerificationBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 2738
    iput-object p1, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    .line 2739
    return-object p0
.end method

.method public blacklist setApplyActivityFlagsForBubbles(Z)V
    .locals 0
    .param p1, "apply"    # Z

    .line 2118
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    .line 2119
    return-void
.end method

.method public blacklist setApplyBigFreeformSize(Z)V
    .locals 0
    .param p1, "applyBigFreeformSize"    # Z

    .line 2790
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mApplyBigFreeformSize:Z

    .line 2791
    return-void
.end method

.method public greylist-max-o setAvoidMoveToFront()V
    .locals 2

    .line 2042
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    .line 2045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAvoidMoveToFront is called, package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2046
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2047
    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2045
    const-string v1, "ActivityOptions"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    return-void
.end method

.method public blacklist setCallerDisplayId(I)Landroid/app/ActivityOptions;
    .locals 0
    .param p1, "callerDisplayId"    # I

    .line 1861
    iput p1, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    .line 1862
    return-object p0
.end method

.method public greylist-max-o setDisallowEnterPictureInPictureWhileLaunching(Z)V
    .locals 0
    .param p1, "disallow"    # Z

    .line 2100
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    .line 2101
    return-void
.end method

.method public blacklist setDismissKeyguardIfInsecure()V
    .locals 1

    .line 2216
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mDismissKeyguardIfInsecure:Z

    .line 2217
    return-void
.end method

.method public blacklist setDismissSplitBeforeLaunch(Z)V
    .locals 0
    .param p1, "dismiss"    # Z

    .line 2749
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mDismissSplitBeforeLaunch:Z

    .line 2750
    return-void
.end method

.method public blacklist setEligibleForLegacyPermissionPrompt(Z)V
    .locals 0
    .param p1, "eligible"    # Z

    .line 1803
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    .line 1804
    return-void
.end method

.method public blacklist setForceLaunchWindowingMode(I)V
    .locals 0
    .param p1, "windowingMode"    # I

    .line 1944
    iput p1, p0, Landroid/app/ActivityOptions;->mForceLaunchWindowingMode:I

    .line 1945
    return-void
.end method

.method public blacklist setFreezeRecentTasksReordering()V
    .locals 1

    .line 2068
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    .line 2069
    return-void
.end method

.method public blacklist setIgnorePendingIntentCreatorForegroundState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .line 2233
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mIgnorePendingIntentCreatorForegroundState:Z

    .line 2234
    return-void
.end method

.method public blacklist setLaunchActivityType(I)V
    .locals 0
    .param p1, "activityType"    # I

    .line 1956
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    .line 1957
    return-void
.end method

.method public whitelist setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    .locals 1
    .param p1, "screenSpacePixelRect"    # Landroid/graphics/Rect;

    .line 1553
    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    .line 1554
    return-object p0
.end method

.method public blacklist setLaunchCookie(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "launchCookie"    # Landroid/os/IBinder;

    .line 2134
    iput-object p1, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    .line 2135
    return-void
.end method

.method public whitelist setLaunchDisplayId(I)Landroid/app/ActivityOptions;
    .locals 0
    .param p1, "launchDisplayId"    # I

    .line 1850
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    .line 1851
    return-object p0
.end method

.method public blacklist setLaunchRootTask(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;
    .locals 0
    .param p1, "windowContainerToken"    # Landroid/window/WindowContainerToken;

    .line 1884
    iput-object p1, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    .line 1885
    return-object p0
.end method

.method public blacklist setLaunchTaskDisplayArea(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;
    .locals 0
    .param p1, "windowContainerToken"    # Landroid/window/WindowContainerToken;

    .line 1873
    iput-object p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    .line 1874
    return-object p0
.end method

.method public blacklist setLaunchTaskFragmentToken(Landroid/os/IBinder;)Landroid/app/ActivityOptions;
    .locals 0
    .param p1, "taskFragmentToken"    # Landroid/os/IBinder;

    .line 1895
    iput-object p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    .line 1896
    return-object p0
.end method

.method public whitelist setLaunchTaskId(I)V
    .locals 0
    .param p1, "taskId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1966
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 1967
    return-void
.end method

.method public blacklist setLaunchWindowingMode(I)V
    .locals 0
    .param p1, "windowingMode"    # I

    .line 1910
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    .line 1911
    return-void
.end method

.method public blacklist setLaunchedFromBubble(Z)V
    .locals 0
    .param p1, "fromBubble"    # Z

    .line 2174
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    .line 2175
    return-void
.end method

.method public blacklist setLaunchedFromDnD(Z)V
    .locals 0
    .param p1, "launchedFromDnd"    # Z

    .line 2275
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mLaunchedFromDnD:Z

    .line 2276
    return-void
.end method

.method public whitelist setLockTaskEnabled(Z)Landroid/app/ActivityOptions;
    .locals 0
    .param p1, "lockTaskMode"    # Z

    .line 1824
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 1825
    return-object p0
.end method

.method public blacklist setMlLaunch(I)V
    .locals 0
    .param p1, "mlLaunch"    # I

    .line 1673
    iput p1, p0, Landroid/app/ActivityOptions;->mIsMlLaunch:I

    .line 1674
    return-void
.end method

.method public blacklist setPendingIntentLaunchFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 1983
    iput p1, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    .line 1984
    return-void
.end method

.method public blacklist setPopOverAnimation(Landroid/content/Context;IIIIII)Landroid/app/ActivityOptions;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enterResId"    # I
    .param p3, "exitResId"    # I
    .param p4, "inheritOpenEnterResId"    # I
    .param p5, "inheritOpenExitResId"    # I
    .param p6, "inheritCloseEnterResId"    # I
    .param p7, "inheritCloseExitResId"    # I

    .line 3209
    if-nez p1, :cond_0

    .line 3210
    return-object p0

    .line 3212
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mPopOverAnimationPackageName:Ljava/lang/String;

    .line 3213
    iput p2, p0, Landroid/app/ActivityOptions;->mPopOverEnterResId:I

    .line 3214
    iput p3, p0, Landroid/app/ActivityOptions;->mPopOverExitResId:I

    .line 3215
    iput p4, p0, Landroid/app/ActivityOptions;->mPopOverInheritOpenEnterResId:I

    .line 3216
    iput p5, p0, Landroid/app/ActivityOptions;->mPopOverInheritOpenExitResId:I

    .line 3217
    iput p6, p0, Landroid/app/ActivityOptions;->mPopOverInheritCloseEnterResId:I

    .line 3218
    iput p7, p0, Landroid/app/ActivityOptions;->mPopOverInheritCloseExitResId:I

    .line 3219
    return-object p0
.end method

.method public blacklist setPopOverOptions([I[I[Landroid/graphics/Point;[I[F[FZZZZ)Landroid/app/ActivityOptions;
    .locals 5
    .param p1, "widthDp"    # [I
    .param p2, "heightDp"    # [I
    .param p3, "marginDp"    # [Landroid/graphics/Point;
    .param p4, "position"    # [I
    .param p5, "widthWeight"    # [F
    .param p6, "heightWeight"    # [F
    .param p7, "allowOutsideTouch"    # Z
    .param p8, "removeDefaultMargin"    # Z
    .param p9, "removeOutlineEffect"    # Z
    .param p10, "inheritOptions"    # Z

    .line 3107
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 3108
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mPopOverInheritOptions:Z

    .line 3109
    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsPopOver:Z

    .line 3110
    return-object p0

    .line 3113
    :cond_0
    if-eqz p1, :cond_11

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    if-eqz p2, :cond_11

    array-length v0, p2

    if-ne v0, v1, :cond_11

    if-eqz p3, :cond_11

    array-length v0, p3

    if-ne v0, v1, :cond_11

    if-eqz p4, :cond_11

    array-length v0, p4

    if-eq v0, v1, :cond_1

    goto/16 :goto_4

    .line 3121
    :cond_1
    if-eqz p5, :cond_2

    array-length v0, p5

    if-ne v0, v1, :cond_3

    :cond_2
    if-eqz p6, :cond_4

    array-length v0, p6

    if-eq v0, v1, :cond_4

    .line 3123
    :cond_3
    return-object p0

    .line 3127
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_d

    .line 3128
    aget v2, p4, v0

    and-int/lit8 v2, v2, 0x7

    if-eqz v2, :cond_c

    aget v2, p4, v0

    and-int/lit16 v2, v2, 0x370

    if-nez v2, :cond_5

    goto :goto_2

    .line 3133
    :cond_5
    aget v2, p1, v0

    if-lez v2, :cond_b

    aget v2, p2, v0

    if-lez v2, :cond_b

    aget-object v2, p3, v0

    if-nez v2, :cond_6

    goto :goto_1

    .line 3138
    :cond_6
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p5, :cond_8

    aget v4, p5, v0

    cmpg-float v4, v4, v3

    if-ltz v4, :cond_7

    aget v4, p5, v0

    cmpl-float v4, v4, v2

    if-lez v4, :cond_8

    .line 3139
    :cond_7
    return-object p0

    .line 3141
    :cond_8
    if-eqz p6, :cond_a

    aget v4, p6, v0

    cmpg-float v3, v4, v3

    if-ltz v3, :cond_9

    aget v3, p6, v0

    cmpl-float v2, v3, v2

    if-lez v2, :cond_a

    .line 3142
    :cond_9
    return-object p0

    .line 3127
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3134
    :cond_b
    :goto_1
    return-object p0

    .line 3130
    :cond_c
    :goto_2
    return-object p0

    .line 3147
    .end local v0    # "i":I
    :cond_d
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, v1, :cond_e

    .line 3148
    iget-object v2, p0, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    aget v3, p1, v0

    aput v3, v2, v0

    .line 3149
    iget-object v2, p0, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    aget v3, p2, v0

    aput v3, v2, v0

    .line 3150
    iget-object v2, p0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    aget-object v4, p3, v0

    invoke-direct {v3, v4}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    aput-object v3, v2, v0

    .line 3151
    iget-object v2, p0, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    aget v3, p4, v0

    aput v3, v2, v0

    .line 3147
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3153
    .end local v0    # "i":I
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsPopOver:Z

    .line 3156
    if-eqz p5, :cond_f

    .line 3157
    invoke-virtual {p5}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/app/ActivityOptions;->mPopOverWidthWeight:[F

    .line 3159
    :cond_f
    if-eqz p6, :cond_10

    .line 3160
    invoke-virtual {p6}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/app/ActivityOptions;->mPopOverHeightWeight:[F

    .line 3162
    :cond_10
    iput-boolean p7, p0, Landroid/app/ActivityOptions;->mPopOverAllowOutsideTouch:Z

    .line 3163
    iput-boolean p8, p0, Landroid/app/ActivityOptions;->mPopOverRemoveDefaultMargin:Z

    .line 3164
    iput-boolean p9, p0, Landroid/app/ActivityOptions;->mPopOverRemoveOutlineEffect:Z

    .line 3165
    iput-boolean p10, p0, Landroid/app/ActivityOptions;->mPopOverInheritOptions:Z

    .line 3168
    return-object p0

    .line 3117
    :cond_11
    :goto_4
    return-object p0
.end method

.method public greylist-max-o setRemoteAnimationAdapter(Landroid/view/RemoteAnimationAdapter;)V
    .locals 0
    .param p1, "remoteAnimationAdapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 1721
    iput-object p1, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 1722
    return-void
.end method

.method public blacklist setRemoteTransition(Landroid/window/RemoteTransition;)V
    .locals 0
    .param p1, "remoteTransition"    # Landroid/window/RemoteTransition;

    .line 1731
    iput-object p1, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 1732
    return-void
.end method

.method public blacklist setRemoveWithTaskOrganizer(Z)V
    .locals 0
    .param p1, "remove"    # Z

    .line 2157
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    .line 2158
    return-void
.end method

.method public blacklist setReparentCell(Z)V
    .locals 0
    .param p1, "halfCell"    # Z

    .line 2263
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mNeedToReparentCell:Z

    .line 2264
    return-void
.end method

.method public blacklist setResumedAffordanceAnimation()V
    .locals 1

    .line 2783
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mResumedAffordanceAnimationRequested:Z

    .line 2784
    return-void
.end method

.method public greylist-max-o setRotationAnimationHint(I)V
    .locals 0
    .param p1, "hint"    # I

    .line 2716
    iput p1, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    .line 2717
    return-void
.end method

.method public blacklist setSourceInfo(IJ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "uptimeMillis"    # J

    .line 2681
    new-instance v0, Landroid/app/ActivityOptions$SourceInfo;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/ActivityOptions$SourceInfo;-><init>(IJ)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    .line 2682
    return-void
.end method

.method public whitelist setSplashScreenStyle(I)Landroid/app/ActivityOptions;
    .locals 1
    .param p1, "style"    # I

    .line 1781
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    .line 1783
    :cond_0
    iput p1, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    .line 1785
    :cond_1
    return-object p0
.end method

.method public blacklist setSplitPosition(I)V
    .locals 0
    .param p1, "splitPosition"    # I

    .line 2253
    iput p1, p0, Landroid/app/ActivityOptions;->mSplitPosition:I

    .line 2254
    return-void
.end method

.method public greylist setSplitScreenCreateMode(I)V
    .locals 0
    .param p1, "splitScreenCreateMode"    # I

    .line 2093
    iput p1, p0, Landroid/app/ActivityOptions;->mSplitScreenCreateMode:I

    .line 2096
    return-void
.end method

.method public blacklist setStartedFromWindowTypeLauncher(Z)V
    .locals 0
    .param p1, "isWindowTypeLauncher"    # Z

    .line 2761
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mIsStartedFromWindowTypeLauncher:Z

    .line 2762
    return-void
.end method

.method public blacklist setTaskAlwaysOnTop(Z)V
    .locals 0
    .param p1, "alwaysOnTop"    # Z

    .line 1999
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    .line 2000
    return-void
.end method

.method public blacklist setTaskOverlay(ZZ)V
    .locals 0
    .param p1, "taskOverlay"    # Z
    .param p2, "canResume"    # Z

    .line 2017
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    .line 2018
    iput-boolean p2, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    .line 2019
    return-void
.end method

.method public blacklist setTransientLaunch()Landroid/app/ActivityOptions;
    .locals 1

    .line 2194
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    .line 2195
    return-object p0
.end method

.method public blacklist shouldPreserveTaskWindowingMode()Z
    .locals 1

    .line 2807
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mPreserveTaskWindowingMode:Z

    return v0
.end method

.method public whitelist toBundle()Landroid/os/Bundle;
    .locals 11

    .line 2373
    invoke-super {p0}, Landroid/app/ComponentOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 2374
    .local v0, "b":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2375
    const-string v2, "android:activity.packageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2377
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    .line 2378
    const-string v2, "android:activity.launchBounds"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2380
    :cond_1
    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 2381
    const-string v3, "android:activity.animType"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2383
    :cond_2
    iget-object v1, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    if-eqz v1, :cond_3

    .line 2384
    const-string v3, "android:activity.usageTimeReport"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2386
    :cond_3
    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v3, 0x0

    const-string v4, "android:activity.animHeight"

    const-string v5, "android:activity.animWidth"

    const-string v6, "android:activity.animStartY"

    const-string v7, "android:activity.animStartX"

    const-string v8, "android:activity.animStartListener"

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 2395
    :pswitch_1
    iget v1, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    const-string v3, "android:activity.animInPlaceRes"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2396
    goto/16 :goto_1

    .line 2426
    :pswitch_2
    iget-object v1, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_4

    .line 2427
    const-string v3, "android:activity.transitionCompleteListener"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2429
    :cond_4
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    const-string v3, "android:activity.transitionIsReturning"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2430
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    const-string v3, "android:activity.sharedElementNames"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2431
    iget-object v1, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    const-string v3, "android:activity.resultData"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2432
    iget v1, p0, Landroid/app/ActivityOptions;->mResultCode:I

    const-string v3, "android:activity.resultCode"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2433
    iget v1, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    const-string v3, "android:activity.exitCoordinatorIndex"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 2410
    :pswitch_3
    iget-object v1, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 2411
    sget-object v9, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2412
    .local v1, "hwBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_5

    .line 2413
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v9

    const-string v10, "android:activity.animThumbnail"

    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 2415
    :cond_5
    const-string v9, "ActivityOptions"

    const-string v10, "Failed to copy thumbnail"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    .end local v1    # "hwBitmap":Landroid/graphics/Bitmap;
    :cond_6
    :goto_0
    iget v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2419
    iget v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2420
    iget v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2421
    iget v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2422
    nop

    .line 2423
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 2422
    :cond_7
    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2424
    goto :goto_1

    .line 2399
    :pswitch_4
    iget v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2400
    iget v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2401
    iget v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2402
    iget v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2403
    goto :goto_1

    .line 2388
    :pswitch_5
    iget v1, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    const-string v4, "android:activity.animEnterRes"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2389
    iget v1, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    const-string v4, "android:activity.animExitRes"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2390
    iget v1, p0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    const-string v4, "android:activity.backgroundColor"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2391
    nop

    .line 2392
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 2391
    :cond_8
    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2393
    nop

    .line 2436
    :goto_1
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    if-eqz v1, :cond_9

    .line 2437
    const-string v3, "android:activity.lockTaskMode"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2439
    :cond_9
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    if-eq v1, v2, :cond_a

    .line 2440
    const-string v3, "android.activity.launchDisplayId"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2442
    :cond_a
    iget v1, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    if-eq v1, v2, :cond_b

    .line 2443
    const-string v3, "android.activity.callerDisplayId"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2445
    :cond_b
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_c

    .line 2446
    const-string v3, "android.activity.launchTaskDisplayAreaToken"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2448
    :cond_c
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_d

    .line 2449
    const-string v3, "android.activity.launchRootTaskToken"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2451
    :cond_d
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    if-eqz v1, :cond_e

    .line 2452
    const-string v3, "android.activity.launchTaskFragmentToken"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2454
    :cond_e
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    if-eqz v1, :cond_f

    .line 2455
    const-string v3, "android.activity.windowingMode"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2457
    :cond_f
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    if-eqz v1, :cond_10

    .line 2458
    const-string v3, "android.activity.activityType"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2460
    :cond_10
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    if-eq v1, v2, :cond_11

    .line 2461
    const-string v3, "android.activity.launchTaskId"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2463
    :cond_11
    iget v1, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    if-eqz v1, :cond_12

    .line 2464
    const-string v3, "android.activity.pendingIntentLaunchFlags"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2466
    :cond_12
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    if-eqz v1, :cond_13

    .line 2467
    const-string v3, "android.activity.alwaysOnTop"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2469
    :cond_13
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    if-eqz v1, :cond_14

    .line 2470
    const-string v3, "android.activity.taskOverlay"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2472
    :cond_14
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    if-eqz v1, :cond_15

    .line 2473
    const-string v3, "android.activity.taskOverlayCanResume"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2475
    :cond_15
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    if-eqz v1, :cond_16

    .line 2476
    const-string v3, "android.activity.avoidMoveToFront"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2478
    :cond_16
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    if-eqz v1, :cond_17

    .line 2479
    const-string v3, "android.activity.freezeRecentTasksReordering"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2481
    :cond_17
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    if-eqz v1, :cond_18

    .line 2482
    const-string v3, "android:activity.disallowEnterPictureInPictureWhileLaunching"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2485
    :cond_18
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    if-eqz v1, :cond_19

    .line 2486
    const-string v3, "android:activity.applyActivityFlagsForBubbles"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2488
    :cond_19
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    if-eqz v1, :cond_1a

    .line 2489
    const-string v3, "android:activity.animSpecs"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 2491
    :cond_1a
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_1b

    .line 2492
    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v3, "android:activity.animationFinishedListener"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2494
    :cond_1b
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    if-eqz v1, :cond_1c

    .line 2495
    invoke-interface {v1}, Landroid/view/IAppTransitionAnimationSpecsFuture;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v3, "android:activity.specsFuture"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2497
    :cond_1c
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    if-eqz v1, :cond_1d

    .line 2498
    const-string v3, "android.activity.sourceInfo"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2500
    :cond_1d
    iget v1, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    if-eq v1, v2, :cond_1e

    .line 2501
    const-string v3, "android:activity.rotationAnimationHint"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2505
    :cond_1e
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIsActiveApplaunch:Z

    const-string v3, "android:activity.isActiveLaunch"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2506
    iget v1, p0, Landroid/app/ActivityOptions;->mIsMlLaunch:I

    const-string v3, "android:activity.isMlLaunch"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2509
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1f

    .line 2510
    const-string v3, "android:instantapps.installerbundle"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2512
    :cond_1f
    iget-object v1, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    if-eqz v1, :cond_20

    .line 2513
    const-string v3, "android:activity.remoteAnimationAdapter"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2515
    :cond_20
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    if-eqz v1, :cond_21

    .line 2516
    const-string v3, "android.activity.launchCookie"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2518
    :cond_21
    iget-object v1, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    if-eqz v1, :cond_22

    .line 2519
    const-string v3, "android:activity.remoteTransition"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2521
    :cond_22
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    if-eqz v1, :cond_23

    .line 2522
    const-string v3, "android:activity.overrideTaskTransition"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2524
    :cond_23
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_24

    .line 2525
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    const-string v3, "android.activity.splashScreenTheme"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2527
    :cond_24
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    if-eqz v1, :cond_25

    .line 2528
    const-string v3, "android.activity.removeWithTaskOrganizer"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2530
    :cond_25
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    if-eqz v1, :cond_26

    .line 2531
    const-string v3, "android.activity.launchTypeBubble"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2533
    :cond_26
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    if-eqz v1, :cond_27

    .line 2534
    const-string v3, "android.activity.transientLaunch"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2536
    :cond_27
    iget v1, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    if-eqz v1, :cond_28

    .line 2537
    const-string v3, "android.activity.splashScreenStyle"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2539
    :cond_28
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    if-eqz v1, :cond_29

    .line 2540
    const-string v3, "android.activity.launchIntoPipParams"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2542
    :cond_29
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    if-eqz v1, :cond_2a

    .line 2543
    const-string v3, "android:activity.legacyPermissionPromptEligible"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2546
    :cond_2a
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mDismissKeyguardIfInsecure:Z

    if-eqz v1, :cond_2b

    .line 2547
    const-string v3, "android.activity.dismissKeyguardIfInsecure"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2549
    :cond_2b
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIgnorePendingIntentCreatorForegroundState:Z

    if-eqz v1, :cond_2c

    .line 2550
    const-string v3, "android.activity.ignorePendingIntentCreatorForegroundState"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2555
    :cond_2c
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIsStartedFromWindowTypeLauncher:Z

    const-string v3, "android:activity.startedFromWindowTypeLauncher"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2557
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mResumedAffordanceAnimationRequested:Z

    if-eqz v1, :cond_2d

    .line 2558
    const/4 v1, 0x1

    const-string v3, "android:activity.resumedAffordanceAnimationRequested"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2560
    :cond_2d
    iget v1, p0, Landroid/app/ActivityOptions;->mForceLaunchWindowingMode:I

    if-eqz v1, :cond_2e

    .line 2562
    const-string v3, "android.activity.forceWindowingMode"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2565
    :cond_2e
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mApplyBigFreeformSize:Z

    const-string v3, "android:activity.applyBigFreeformSize"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2568
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mDismissSplitBeforeLaunch:Z

    const-string v3, "android:activity.dismissSplitBeforeLaunch"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2571
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mPreserveTaskWindowingMode:Z

    const-string v3, "android.activity.preserveTaskWindowingMode"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2574
    iget v1, p0, Landroid/app/ActivityOptions;->mSplitPosition:I

    const-string v3, "android.activity.splitPosition"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2575
    iget v1, p0, Landroid/app/ActivityOptions;->mSplitScreenCreateMode:I

    if-eq v1, v2, :cond_2f

    .line 2576
    const-string v2, "android:activity.splitScreenCreateMode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2578
    :cond_2f
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mNeedToReparentCell:Z

    const-string v2, "android:activity.reparentCell"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2581
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIsPopOver:Z

    const-string v2, "android:activity.popOverInheritOptions"

    if-eqz v1, :cond_30

    .line 2582
    iget-object v1, p0, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    const-string v3, "android:activity.popOverWidth"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2583
    iget-object v1, p0, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    const-string v3, "android:activity.popOverHeight"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2584
    iget-object v1, p0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    const-string v3, "android:activity.popOverAnchor"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 2585
    iget-object v1, p0, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    const-string v3, "android:activity.popOverAnchorPosition"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2586
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIsPopOver:Z

    const-string v3, "android:activity.popOver"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2589
    iget-object v1, p0, Landroid/app/ActivityOptions;->mPopOverWidthWeight:[F

    const-string v3, "android:activity.popOverWidthWeight"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 2590
    iget-object v1, p0, Landroid/app/ActivityOptions;->mPopOverHeightWeight:[F

    const-string v3, "android:activity.popOverHeightWeight"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 2591
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mPopOverAllowOutsideTouch:Z

    const-string v3, "android:activity.popOverAllowOutsideTouch"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2592
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mPopOverRemoveDefaultMargin:Z

    const-string v3, "android:activity.popOverRemoveDefaultMargin"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2593
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mPopOverRemoveOutlineEffect:Z

    const-string v3, "android:activity.popOverRemoveOutlineEffect"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2594
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mPopOverInheritOptions:Z

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 2596
    :cond_30
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mPopOverInheritOptions:Z

    if-nez v1, :cond_31

    .line 2597
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2601
    :cond_31
    :goto_2
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIsPopOver:Z

    const-string v2, "android:activity.popOverInheritCloseExitResId"

    const-string v3, "android:activity.popOverInheritCloseEnterResId"

    const-string v4, "android:activity.popOverInheritOpenExitResId"

    const-string v5, "android:activity.popOverInheritOpenEnterResId"

    const-string v6, "android:activity.popOverExitResId"

    const-string v7, "android:activity.popOverEnterResId"

    const-string v8, "android:activity.popOverAnimationPackageName"

    if-eqz v1, :cond_32

    iget-object v1, p0, Landroid/app/ActivityOptions;->mPopOverAnimationPackageName:Ljava/lang/String;

    if-eqz v1, :cond_32

    .line 2602
    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2603
    iget v1, p0, Landroid/app/ActivityOptions;->mPopOverEnterResId:I

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2604
    iget v1, p0, Landroid/app/ActivityOptions;->mPopOverExitResId:I

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2605
    iget v1, p0, Landroid/app/ActivityOptions;->mPopOverInheritOpenEnterResId:I

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2606
    iget v1, p0, Landroid/app/ActivityOptions;->mPopOverInheritOpenExitResId:I

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2607
    iget v1, p0, Landroid/app/ActivityOptions;->mPopOverInheritCloseEnterResId:I

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2608
    iget v1, p0, Landroid/app/ActivityOptions;->mPopOverInheritCloseExitResId:I

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    .line 2610
    :cond_32
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2611
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2612
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2613
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2614
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2615
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2616
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2621
    :goto_3
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mLaunchedFromDnD:Z

    const-string v2, "android.activity.launchTypeDnD"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2624
    iget v1, p0, Landroid/app/ActivityOptions;->mEnterSplitSideWithAdjacentFlag:I

    const-string v2, "android:activity.enterSplitSideWithAdjacentFlag"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2627
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v1, :cond_33

    .line 2628
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIsActivityEmbeddedPlaceholder:Z

    const-string v2, "android:activity.activityEmbeddedPlaceholder"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2631
    :cond_33
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 2814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityOptions("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAnimationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStartX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStartY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist update(Landroid/app/ActivityOptions;)V
    .locals 2
    .param p1, "otherOptions"    # Landroid/app/ActivityOptions;

    .line 2285
    iget-object v0, p1, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2286
    iput-object v0, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 2288
    :cond_0
    iget-object v0, p1, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    .line 2289
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 2290
    iput-object v0, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 2291
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 2292
    iput-object v0, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    .line 2293
    iput v1, p0, Landroid/app/ActivityOptions;->mResultCode:I

    .line 2294
    iput v1, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    .line 2295
    iget v1, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    iput v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 2296
    iget v1, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 2311
    :pswitch_1
    iget v0, p1, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    iput v0, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    .line 2312
    goto/16 :goto_3

    .line 2344
    :pswitch_2
    iget-object v1, p1, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 2345
    iget-object v1, p1, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 2346
    iget-boolean v1, p1, Landroid/app/ActivityOptions;->mIsReturning:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 2347
    iput-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 2348
    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 2349
    iget-object v0, p1, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    .line 2350
    iget v0, p1, Landroid/app/ActivityOptions;->mResultCode:I

    iput v0, p0, Landroid/app/ActivityOptions;->mResultCode:I

    .line 2351
    iget v0, p1, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    iput v0, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    goto :goto_3

    .line 2330
    :pswitch_3
    iget-object v1, p1, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 2331
    iget v1, p1, Landroid/app/ActivityOptions;->mStartX:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 2332
    iget v1, p1, Landroid/app/ActivityOptions;->mStartY:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 2333
    iget v1, p1, Landroid/app/ActivityOptions;->mWidth:I

    iput v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 2334
    iget v1, p1, Landroid/app/ActivityOptions;->mHeight:I

    iput v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 2335
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_1

    .line 2337
    :try_start_0
    invoke-interface {v1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2339
    goto :goto_0

    .line 2338
    :catch_0
    move-exception v0

    .line 2341
    :cond_1
    :goto_0
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 2342
    goto :goto_3

    .line 2314
    :pswitch_4
    iget v1, p1, Landroid/app/ActivityOptions;->mStartX:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 2315
    iget v1, p1, Landroid/app/ActivityOptions;->mStartY:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 2316
    iget v1, p1, Landroid/app/ActivityOptions;->mWidth:I

    iput v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 2317
    iget v1, p1, Landroid/app/ActivityOptions;->mHeight:I

    iput v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 2318
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_2

    .line 2320
    :try_start_1
    invoke-interface {v1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2322
    goto :goto_1

    .line 2321
    :catch_1
    move-exception v1

    .line 2324
    :cond_2
    :goto_1
    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 2325
    goto :goto_3

    .line 2298
    :pswitch_5
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    .line 2299
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomExitResId:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 2300
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    .line 2301
    iput-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 2302
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_3

    .line 2304
    :try_start_2
    invoke-interface {v1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2306
    goto :goto_2

    .line 2305
    :catch_2
    move-exception v0

    .line 2308
    :cond_3
    :goto_2
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 2309
    nop

    .line 2354
    :goto_3
    iget-boolean v0, p1, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 2355
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    .line 2356
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    .line 2357
    iget-object v0, p1, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 2358
    iget-object v0, p1, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 2359
    iget-object v0, p1, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    .line 2360
    iget-boolean v0, p1, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    .line 2361
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
