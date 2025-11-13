.class public Landroid/app/ActivityOptions;
.super Landroid/app/ComponentOptions;
.source "ActivityOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityOptions$OnAnimationStartedListener;,
        Landroid/app/ActivityOptions$OnAnimationFinishedListener;,
        Landroid/app/ActivityOptions$SceneTransitionInfo;,
        Landroid/app/ActivityOptions$SourceInfo;,
        Landroid/app/ActivityOptions$LaunchCookie;,
        Landroid/app/ActivityOptions$BackgroundActivityStartMode;
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

.field public static final blacklist END:I = 0x2

.field public static final whitelist EXTRA_USAGE_TIME_REPORT:Ljava/lang/String; = "android.activity.usage_time"

.field public static final whitelist EXTRA_USAGE_TIME_REPORT_PACKAGES:Ljava/lang/String; = "android.usage_time_packages"

.field public static final blacklist INVALID_ML_TYPE:I = -0x1

.field private static final blacklist KEY_ACTIVE_LAUNCH_HINT:Ljava/lang/String; = "android:activity.isActiveLaunch"

.field private static final blacklist KEY_ACTIVITY_EMBEDDED_PLACEHOLDER:Ljava/lang/String; = "android:activity.activityEmbeddedPlaceholder"

.field private static final blacklist KEY_ALLOW_ENTER_PIP_WHILE_LAUNCHING:Ljava/lang/String; = "android.activity.enterPipWhileLaunching"

.field private static final greylist-max-o KEY_ANIMATION_FINISHED_LISTENER:Ljava/lang/String; = "android:activity.animationFinishedListener"

.field private static final blacklist KEY_ANIM_ABORT_LISTENER:Ljava/lang/String; = "android:activity.animAbortListener"

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

.field private static final blacklist KEY_APPLY_MULTIPLE_TASK_FLAG_FOR_SHORTCUT:Ljava/lang/String; = "android:activity.applyMultipleTaskFlagForShortcut"

.field private static final blacklist KEY_APPLY_NO_USER_ACTION_FLAG_FOR_SHORTCUT:Ljava/lang/String; = "android:activity.applyNoUserActionFlagForShortcut"

.field private static final greylist-max-o KEY_AVOID_MOVE_TO_FRONT:Ljava/lang/String; = "android.activity.avoidMoveToFront"

.field private static final blacklist KEY_CALLER_DISPLAY_ID:Ljava/lang/String; = "android.activity.callerDisplayId"

.field private static final blacklist KEY_CUSTOMIZED_COVER_DENSITY:Ljava/lang/String; = "android.activity.customizedCoverDensity"

.field private static final blacklist KEY_DISABLE_SPLASH_SCREEN:Ljava/lang/String; = "android.activity.disableSplashScreen"

.field private static final blacklist KEY_DISABLE_STARTING_WINDOW:Ljava/lang/String; = "android.activity.disableStarting"

.field private static final greylist-max-o KEY_DISALLOW_ENTER_PICTURE_IN_PICTURE_WHILE_LAUNCHING:Ljava/lang/String; = "android:activity.disallowEnterPictureInPictureWhileLaunching"

.field private static final blacklist KEY_DISMISS_KEYGUARD_IF_INSECURE:Ljava/lang/String; = "android.activity.dismissKeyguardIfInsecure"

.field private static final blacklist KEY_ENTER_SPLIT_SIDE_WITH_ADJACENT_FLAG:Ljava/lang/String; = "android:activity.enterSplitSideWithAdjacentFlag"

.field private static final blacklist KEY_FORCE_LAUNCH_TASK_ON_HOME:Ljava/lang/String; = "android.activity.forceLaunchTaskOnHome"

.field private static final blacklist KEY_FORCE_LAUNCH_WINDOWING_MODE:Ljava/lang/String; = "android.activity.forceWindowingMode"

.field private static final blacklist KEY_FREEZE_RECENT_TASKS_REORDERING:Ljava/lang/String; = "android.activity.freezeRecentTasksReordering"

.field private static final greylist-max-o KEY_INSTANT_APP_VERIFICATION_BUNDLE:Ljava/lang/String; = "android:instantapps.installerbundle"

.field private static final blacklist KEY_LAUNCHED_FROM_BUBBLE:Ljava/lang/String; = "android.activity.launchTypeBubble"

.field private static final blacklist KEY_LAUNCHED_FROM_DND:Ljava/lang/String; = "android.activity.launchTypeDnD"

.field public static final blacklist KEY_LAUNCHED_FROM_HOME:Ljava/lang/String; = "android:activity.launchedFromHome"

.field private static final greylist-max-o KEY_LAUNCH_ACTIVITY_TYPE:Ljava/lang/String; = "android.activity.activityType"

.field public static final greylist-max-o KEY_LAUNCH_BOUNDS:Ljava/lang/String; = "android:activity.launchBounds"

.field public static final blacklist KEY_LAUNCH_COOKIE:Ljava/lang/String; = "android.activity.launchCookie"

.field private static final greylist-max-o KEY_LAUNCH_DISPLAY_ID:Ljava/lang/String; = "android.activity.launchDisplayId"

.field private static final blacklist KEY_LAUNCH_INTO_PIP_PARAMS:Ljava/lang/String; = "android.activity.launchIntoPipParams"

.field private static final blacklist KEY_LAUNCH_IN_FOCUSED_STAGE_ROOT:Ljava/lang/String; = "android:activity.launchInFocusedStageRoot"

.field public static final blacklist KEY_LAUNCH_ROOT_TASK_TOKEN:Ljava/lang/String; = "android.activity.launchRootTaskToken"

.field private static final blacklist KEY_LAUNCH_TASK_DISPLAY_AREA_FEATURE_ID:Ljava/lang/String; = "android.activity.launchTaskDisplayAreaFeatureId"

.field private static final blacklist KEY_LAUNCH_TASK_DISPLAY_AREA_TOKEN:Ljava/lang/String; = "android.activity.launchTaskDisplayAreaToken"

.field public static final blacklist KEY_LAUNCH_TASK_FRAGMENT_TOKEN:Ljava/lang/String; = "android.activity.launchTaskFragmentToken"

.field private static final greylist-max-o KEY_LAUNCH_TASK_ID:Ljava/lang/String; = "android.activity.launchTaskId"

.field private static final greylist-max-o KEY_LAUNCH_WINDOWING_MODE:Ljava/lang/String; = "android.activity.windowingMode"

.field public static final blacklist KEY_LEGACY_PERMISSION_PROMPT_ELIGIBLE:Ljava/lang/String; = "android:activity.legacyPermissionPromptEligible"

.field private static final greylist-max-o KEY_LOCK_TASK_MODE:Ljava/lang/String; = "android:activity.lockTaskMode"

.field private static final blacklist KEY_ML_LAUNCH_HINT:Ljava/lang/String; = "android:activity.isMlLaunch"

.field private static final blacklist KEY_NO_TRANSITION_OCCLUSION:Ljava/lang/String; = "android.activity.noTransitionOcclusion"

.field private static final blacklist KEY_OVERRIDE_TASK_TRANSITION:Ljava/lang/String; = "android:activity.overrideTaskTransition"

.field public static final greylist-max-o KEY_PACKAGE_NAME:Ljava/lang/String; = "android:activity.packageName"

.field private static final blacklist KEY_PENDING_INTENT_CREATOR_BACKGROUND_ACTIVITY_START_MODE:Ljava/lang/String; = "android.activity.pendingIntentCreatorBackgroundActivityStartMode"

.field private static final blacklist KEY_PENDING_INTENT_LAUNCH_FLAGS:Ljava/lang/String; = "android.activity.pendingIntentLaunchFlags"

.field private static final blacklist KEY_POP_OVER:Ljava/lang/String; = "android:activity.popOver"

.field private static final blacklist KEY_POP_OVER_ANCHOR:Ljava/lang/String; = "android:activity.popOverAnchor"

.field private static final blacklist KEY_POP_OVER_ANCHOR_POSITION:Ljava/lang/String; = "android:activity.popOverAnchorPosition"

.field private static final blacklist KEY_POP_OVER_HEIGHT:Ljava/lang/String; = "android:activity.popOverHeight"

.field private static final blacklist KEY_POP_OVER_INHERIT_OPTIONS:Ljava/lang/String; = "android:activity.popOverInheritOptions"

.field private static final blacklist KEY_POP_OVER_WIDTH:Ljava/lang/String; = "android:activity.popOverWidth"

.field private static final blacklist KEY_PRESERVE_TASK_WINDOWING_MODE:Ljava/lang/String; = "android.activity.preserveTaskWindowingMode"

.field private static final greylist-max-o KEY_REMOTE_ANIMATION_ADAPTER:Ljava/lang/String; = "android:activity.remoteAnimationAdapter"

.field private static final blacklist KEY_REMOTE_TRANSITION:Ljava/lang/String; = "android:activity.remoteTransition"

.field private static final blacklist KEY_REMOVE_WITH_TASK_ORGANIZER:Ljava/lang/String; = "android.activity.removeWithTaskOrganizer"

.field private static final blacklist KEY_RESUMED_AFFORDANCE_ANIMATION_REQUESTED:Ljava/lang/String; = "android:activity.resumedAffordanceAnimationRequested"

.field private static final greylist-max-o KEY_ROTATION_ANIMATION_HINT:Ljava/lang/String; = "android:activity.rotationAnimationHint"

.field private static final blacklist KEY_SCENE_TRANSITION_INFO:Ljava/lang/String; = "android:activity.sceneTransitionInfo"

.field private static final blacklist KEY_SHARE_IDENTITY:Ljava/lang/String; = "android:activity.shareIdentity"

.field private static final blacklist KEY_SOURCE_INFO:Ljava/lang/String; = "android.activity.sourceInfo"

.field private static final greylist-max-o KEY_SPECS_FUTURE:Ljava/lang/String; = "android:activity.specsFuture"

.field private static final blacklist KEY_SPLASH_SCREEN_STYLE:Ljava/lang/String; = "android.activity.splashScreenStyle"

.field public static final blacklist KEY_SPLASH_SCREEN_THEME:Ljava/lang/String; = "android.activity.splashScreenTheme"

.field private static final blacklist KEY_SPLIT_POSITION:Ljava/lang/String; = "android.activity.splitPosition"

.field public static final blacklist KEY_SPLIT_TASK_DEFER_RESUME:Ljava/lang/String; = "android.activity.splitTaskDeferResume"

.field public static final blacklist KEY_STARTED_BY_MDM_ADMIN:Ljava/lang/String; = "edm:activity.startedByMDMAdmin"

.field public static final blacklist KEY_STARTED_FROM_WINDOW_TYPE_LAUNCHER:Ljava/lang/String; = "android:activity.startedFromWindowTypeLauncher"

.field public static final blacklist KEY_START_ASSISTANT_ACTIVITY:Ljava/lang/String; = "android.activity.startAssistantActivity"

.field private static final blacklist KEY_TASK_ALWAYS_ON_TOP:Ljava/lang/String; = "android.activity.alwaysOnTop"

.field private static final greylist-max-o KEY_TASK_OVERLAY:Ljava/lang/String; = "android.activity.taskOverlay"

.field private static final greylist-max-o KEY_TASK_OVERLAY_CAN_RESUME:Ljava/lang/String; = "android.activity.taskOverlayCanResume"

.field public static final blacklist KEY_TRANSIENT_LAUNCH:Ljava/lang/String; = "android.activity.transientLaunch"

.field public static final blacklist KEY_UNHANDLED_DROP_LAUNCH:Ljava/lang/String; = "android:activity.unhandledDropLaunch"

.field private static final greylist-max-o KEY_USAGE_TIME_REPORT:Ljava/lang/String; = "android:activity.usageTimeReport"

.field public static final blacklist LAND:I = 0x0

.field public static final blacklist ML_TYPE_EMPTY_PROCESS:I = 0x1

.field public static final blacklist ML_TYPE_NAP_PROCESS:I = 0x0

.field public static final whitelist MODE_BACKGROUND_ACTIVITY_START_ALLOWED:I = 0x1

.field public static final blacklist MODE_BACKGROUND_ACTIVITY_START_COMPAT:I = -0x1

.field public static final whitelist MODE_BACKGROUND_ACTIVITY_START_DENIED:I = 0x2

.field public static final whitelist MODE_BACKGROUND_ACTIVITY_START_SYSTEM_DEFINED:I = 0x0

.field public static final blacklist POP_OVER_ANCHOR_HORIZONTAL_MASK:I = 0x70

.field public static final blacklist POP_OVER_ANCHOR_VERTICAL_MASK:I = 0x7

.field private static final blacklist POP_OVER_CHOOSER_BOTTOM_MARGIN_DP:I = 0x2c

.field private static final blacklist POP_OVER_CHOOSER_HEIGHT_DP:I = 0x168

.field private static final blacklist POP_OVER_CHOOSER_WIDTH_DP:I = 0x168

.field public static final blacklist POP_OVER_HORIZONTAL_MASK:I = 0x70

.field public static final blacklist POP_OVER_VERTICAL_MASK:I = 0x7

.field public static final blacklist PORT:I = 0x1

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
.field private blacklist mAllowEnterPipWhileLaunching:Z

.field private greylist-max-o mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

.field private blacklist mAnimationAbortListener:Landroid/os/IRemoteCallback;

.field private greylist-max-o mAnimationFinishedListener:Landroid/os/IRemoteCallback;

.field private greylist-max-o mAnimationStartedListener:Landroid/os/IRemoteCallback;

.field private greylist-max-o mAnimationType:I

.field private greylist-max-o mAppVerificationBundle:Landroid/os/Bundle;

.field private blacklist mApplyActivityFlagsForBubbles:Z

.field private blacklist mApplyBigFreeformSize:Z

.field private blacklist mApplyMultipleTaskFlagForShortcut:Z

.field private blacklist mApplyNoUserActionFlagForShortcut:Z

.field private greylist-max-o mAvoidMoveToFront:Z

.field private blacklist mCallerDisplayId:I

.field private blacklist mCustomBackgroundColor:I

.field private greylist-max-o mCustomEnterResId:I

.field private greylist-max-o mCustomExitResId:I

.field private greylist-max-o mCustomInPlaceResId:I

.field private blacklist mCustomizedCoverDensity:I

.field private blacklist mDisableSplashScreen:Z

.field private blacklist mDisableStartingWindow:Z

.field private greylist-max-o mDisallowEnterPictureInPictureWhileLaunching:Z

.field private blacklist mDismissKeyguardIfInsecure:Z

.field private blacklist mEnterSplitSideWithAdjacentFlag:I

.field private blacklist mForceLaunchTaskOnHome:Z

.field private blacklist mForceLaunchWindowingMode:I

.field private blacklist mFreezeRecentTasksReordering:Z

.field private greylist-max-o mHeight:I

.field private blacklist mIsActiveApplaunch:Z

.field private blacklist mIsActivityEmbeddedPlaceholder:Z

.field private blacklist mIsEligibleForLegacyPermissionPrompt:Z

.field private blacklist mIsMlLaunch:I

.field private blacklist mIsPopOver:Z

.field private blacklist mIsStartedFromWindowTypeLauncher:Z

.field private greylist-max-o mLaunchActivityType:I

.field private greylist-max-o mLaunchBounds:Landroid/graphics/Rect;

.field private blacklist mLaunchCookie:Landroid/os/IBinder;

.field private greylist-max-o mLaunchDisplayId:I

.field private blacklist mLaunchInFocusedStageRoot:Z

.field private blacklist mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

.field private blacklist mLaunchRootTask:Landroid/window/WindowContainerToken;

.field private blacklist mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

.field private blacklist mLaunchTaskDisplayAreaFeatureId:I

.field private blacklist mLaunchTaskFragmentToken:Landroid/os/IBinder;

.field private greylist-max-o mLaunchTaskId:I

.field private greylist-max-o mLaunchWindowingMode:I

.field private blacklist mLaunchedFromBubble:Z

.field private blacklist mLaunchedFromDnD:Z

.field private blacklist mLaunchedFromHome:Z

.field private greylist-max-o mLockTaskMode:Z

.field private blacklist mNoTransitionOcclusion:Z

.field private blacklist mOverrideTaskTransition:Z

.field private greylist-max-o mPackageName:Ljava/lang/String;

.field private blacklist mPendingIntentCreatorBackgroundActivityStartMode:I

.field private blacklist mPendingIntentLaunchFlags:I

.field public blacklist mPopOverAnchorMarginDp:[Landroid/graphics/Point;

.field public blacklist mPopOverAnchorPosition:[I

.field public blacklist mPopOverHeightDp:[I

.field public blacklist mPopOverInheritOptions:Z

.field public blacklist mPopOverRemoveOutlineEffect:Z

.field public blacklist mPopOverWidthDp:[I

.field private blacklist mPreserveTaskWindowingMode:Z

.field private greylist-max-o mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

.field private blacklist mRemoteTransition:Landroid/window/RemoteTransition;

.field private blacklist mRemoveWithTaskOrganizer:Z

.field private blacklist mResumedAffordanceAnimationRequested:Z

.field private greylist-max-o mRotationAnimationHint:I

.field private blacklist mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

.field private blacklist mShareIdentity:Z

.field private blacklist mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

.field private greylist-max-o mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

.field private blacklist mSplashScreenStyle:I

.field private blacklist mSplashScreenThemeResName:Ljava/lang/String;

.field private blacklist mSplitPosition:I

.field private blacklist mSplitTaskDeferResume:Z

.field private blacklist mStartAssistantActivity:Z

.field private greylist-max-o mStartX:I

.field private greylist-max-o mStartY:I

.field private blacklist mStartedByMDMAdmin:Z

.field private blacklist mTaskAlwaysOnTop:Z

.field private greylist-max-o mTaskOverlay:Z

.field private greylist-max-o mTaskOverlayCanResume:Z

.field private greylist-max-o mThumbnail:Landroid/graphics/Bitmap;

.field private blacklist mTransientLaunch:Z

.field private blacklist mUnhandledDropLaunch:Z

.field private greylist-max-o mUsageTimeReport:Landroid/app/PendingIntent;

.field private greylist-max-o mWidth:I


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/ComponentOptions;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    iput v0, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayAreaFeatureId:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    iput v1, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mShareIdentity:Z

    iput v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    iput v0, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    iput v1, p0, Landroid/app/ActivityOptions;->mPendingIntentCreatorBackgroundActivityStartMode:I

    iput v1, p0, Landroid/app/ActivityOptions;->mSplitPosition:I

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mLaunchInFocusedStageRoot:Z

    iput v1, p0, Landroid/app/ActivityOptions;->mForceLaunchWindowingMode:I

    iput v0, p0, Landroid/app/ActivityOptions;->mIsMlLaunch:I

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mSplitTaskDeferResume:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mStartAssistantActivity:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsActivityEmbeddedPlaceholder:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mLaunchedFromDnD:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mAllowEnterPipWhileLaunching:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mForceLaunchTaskOnHome:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mNoTransitionOcclusion:Z

    const/4 v0, 0x2

    new-array v2, v0, [I

    iput-object v2, p0, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    new-array v2, v0, [I

    iput-object v2, p0, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    new-array v2, v0, [Landroid/graphics/Point;

    iput-object v2, p0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mPopOverInheritOptions:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mDisableSplashScreen:Z

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomizedCoverDensity:I

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mLaunchedFromHome:Z

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Bundle;)V
    .locals 10

    invoke-direct {p0, p1}, Landroid/app/ComponentOptions;-><init>(Landroid/os/Bundle;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    iput v0, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayAreaFeatureId:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    iput v1, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mShareIdentity:Z

    iput v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    iput v0, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    iput v1, p0, Landroid/app/ActivityOptions;->mPendingIntentCreatorBackgroundActivityStartMode:I

    iput v1, p0, Landroid/app/ActivityOptions;->mSplitPosition:I

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mLaunchInFocusedStageRoot:Z

    iput v1, p0, Landroid/app/ActivityOptions;->mForceLaunchWindowingMode:I

    iput v0, p0, Landroid/app/ActivityOptions;->mIsMlLaunch:I

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mSplitTaskDeferResume:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mStartAssistantActivity:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsActivityEmbeddedPlaceholder:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mLaunchedFromDnD:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mAllowEnterPipWhileLaunching:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mForceLaunchTaskOnHome:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mNoTransitionOcclusion:Z

    const/4 v2, 0x2

    new-array v3, v2, [I

    iput-object v3, p0, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    new-array v3, v2, [I

    iput-object v3, p0, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    new-array v3, v2, [Landroid/graphics/Point;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mPopOverInheritOptions:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mDisableSplashScreen:Z

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomizedCoverDensity:I

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mLaunchedFromHome:Z

    const-string v3, "android:activity.packageName"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    :try_start_0
    const-string v3, "android:activity.usageTimeReport"

    const-class v4, Landroid/app/PendingIntent;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "ActivityOptions"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string v3, "android:activity.launchBounds"

    const-class v4, Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    const-string v3, "android:activity.animType"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    iget v3, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const-string v4, "android:activity.animHeight"

    const-string v5, "android:activity.animWidth"

    const-string v6, "android:activity.animStartY"

    const-string v7, "android:activity.animStartX"

    const-string v8, "android:activity.animStartListener"

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    const-string v3, "android:activity.animInPlaceRes"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    goto/16 :goto_1

    :pswitch_2
    const-string v3, "android:activity.sceneTransitionInfo"

    const-class v4, Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityOptions$SceneTransitionInfo;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    goto :goto_1

    :pswitch_3
    const-string v3, "android:activity.animThumbnail"

    const-class v9, Landroid/hardware/HardwareBuffer;

    invoke-virtual {p1, v3, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/HardwareBuffer;

    if-eqz v3, :cond_0

    const/4 v9, 0x0

    invoke-static {v3, v9}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    :cond_0
    invoke-virtual {p1, v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {p1, v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Landroid/app/ActivityOptions;->mWidth:I

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/app/ActivityOptions;->mHeight:I

    nop

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v4

    iput-object v4, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1, v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {p1, v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mWidth:I

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mHeight:I

    goto :goto_1

    :pswitch_5
    const-string v3, "android:activity.animEnterRes"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    const-string v3, "android:activity.animExitRes"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    const-string v3, "android:activity.backgroundColor"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    nop

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    nop

    :goto_1
    const-string v3, "android:activity.lockTaskMode"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    const-string v3, "android:activity.shareIdentity"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mShareIdentity:Z

    const-string v3, "android.activity.launchDisplayId"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    const-string v3, "android.activity.callerDisplayId"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    const-string v3, "android.activity.launchTaskDisplayAreaToken"

    const-class v4, Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerToken;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    const-string v3, "android.activity.launchTaskDisplayAreaFeatureId"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayAreaFeatureId:I

    const-string v3, "android.activity.launchRootTaskToken"

    const-class v4, Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerToken;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    const-string v3, "android.activity.launchTaskFragmentToken"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    const-string v3, "android.activity.windowingMode"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    const-string v3, "android.activity.activityType"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    const-string v3, "android.activity.launchTaskId"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    const-string v3, "android.activity.pendingIntentLaunchFlags"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    const-string v3, "android.activity.alwaysOnTop"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    const-string v3, "android.activity.taskOverlay"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    const-string v3, "android.activity.taskOverlayCanResume"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    const-string v3, "android.activity.avoidMoveToFront"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    const-string v3, "android.activity.freezeRecentTasksReordering"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    const-string v3, "android:activity.disallowEnterPictureInPictureWhileLaunching"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    const-string v3, "android:activity.applyActivityFlagsForBubbles"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    const-string v3, "android:activity.applyMultipleTaskFlagForShortcut"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mApplyMultipleTaskFlagForShortcut:Z

    const-string v3, "android:activity.applyNoUserActionFlagForShortcut"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mApplyNoUserActionFlagForShortcut:Z

    const-string v3, "android:activity.animSpecs"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    array-length v4, v3

    new-array v4, v4, [Landroid/view/AppTransitionAnimationSpec;

    iput-object v4, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    array-length v4, v3

    sub-int/2addr v4, v2

    :goto_2
    if-ltz v4, :cond_1

    iget-object v5, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    aget-object v6, v3, v4

    check-cast v6, Landroid/view/AppTransitionAnimationSpec;

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_1
    const-string v3, "android:activity.animationFinishedListener"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    nop

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    :cond_2
    const-string v3, "android.activity.sourceInfo"

    const-class v4, Landroid/app/ActivityOptions$SourceInfo;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityOptions$SourceInfo;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    const-string v3, "android:activity.rotationAnimationHint"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    const-string v3, "android:instantapps.installerbundle"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    const-string v3, "android:activity.specsFuture"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    :cond_3
    const-string v3, "android:activity.isActiveLaunch"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mIsActiveApplaunch:Z

    const-string v3, "android:activity.isMlLaunch"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mIsMlLaunch:I

    const-string v0, "edm:activity.startedByMDMAdmin"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mStartedByMDMAdmin:Z

    const-string v0, "android:activity.remoteAnimationAdapter"

    const-class v3, Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAnimationAdapter;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    const-string v0, "android.activity.launchCookie"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    const-string v0, "android:activity.remoteTransition"

    const-class v3, Landroid/window/RemoteTransition;

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/RemoteTransition;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    const-string v0, "android:activity.overrideTaskTransition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    const-string v0, "android.activity.splashScreenTheme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    const-string v0, "android.activity.removeWithTaskOrganizer"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    const-string v0, "android.activity.launchTypeBubble"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    const-string v0, "android.activity.transientLaunch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    const-string v0, "android.activity.splashScreenStyle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    const-string v0, "android.activity.launchIntoPipParams"

    const-class v3, Landroid/app/PictureInPictureParams;

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PictureInPictureParams;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    nop

    const-string v0, "android:activity.legacyPermissionPromptEligible"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    const-string v0, "android.activity.dismissKeyguardIfInsecure"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mDismissKeyguardIfInsecure:Z

    const-string v0, "android.activity.pendingIntentCreatorBackgroundActivityStartMode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mPendingIntentCreatorBackgroundActivityStartMode:I

    const-string v0, "android.activity.disableStarting"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mDisableStartingWindow:Z

    nop

    const-string v0, "android:activity.animAbortListener"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationAbortListener:Landroid/os/IRemoteCallback;

    const-string v0, "android:activity.popOverWidth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "android:activity.popOverHeight"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "android:activity.popOverAnchor"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "android:activity.popOverAnchorPosition"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    const/4 v3, 0x0

    :goto_3
    array-length v4, v0

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    aget-object v6, v0, v3

    check-cast v6, Landroid/graphics/Point;

    aput-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    const-string v3, "android:activity.popOver"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mIsPopOver:Z

    goto :goto_4

    :cond_5
    const-string v0, "android:activity.popOverInheritOptions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mPopOverInheritOptions:Z

    goto :goto_5

    :cond_6
    :goto_4
    nop

    :goto_5
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CHN_PREMIUM_WATCH:Z

    if-eqz v0, :cond_7

    const-string v0, "android.activity.noTransitionOcclusion"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mNoTransitionOcclusion:Z

    :cond_7
    nop

    const-string v0, "android.activity.forceWindowingMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    nop

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mForceLaunchWindowingMode:I

    :cond_8
    const-string v0, "android.activity.splitTaskDeferResume"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mSplitTaskDeferResume:Z

    :cond_9
    const-string v0, "android:activity.applyBigFreeformSize"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    nop

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mApplyBigFreeformSize:Z

    :cond_a
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v0, :cond_b

    const-string v0, "android:activity.activityEmbeddedPlaceholder"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsActivityEmbeddedPlaceholder:Z

    :cond_b
    const-string v0, "android.activity.launchTypeDnD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mLaunchedFromDnD:Z

    :cond_c
    const-string v0, "android.activity.splitPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "android.activity.splitPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mSplitPosition:I

    :cond_d
    const-string v0, "android:activity.launchInFocusedStageRoot"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "android:activity.launchInFocusedStageRoot"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mLaunchInFocusedStageRoot:Z

    :cond_e
    const-string v0, "android:activity.enterSplitSideWithAdjacentFlag"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mEnterSplitSideWithAdjacentFlag:I

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    if-eqz v0, :cond_f

    const-string v0, "android.activity.preserveTaskWindowingMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "android.activity.preserveTaskWindowingMode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mPreserveTaskWindowingMode:Z

    :cond_f
    const-string v0, "android.activity.enterPipWhileLaunching"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "android.activity.enterPipWhileLaunching"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mAllowEnterPipWhileLaunching:Z

    :cond_10
    const-string v0, "android:activity.startedFromWindowTypeLauncher"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    nop

    const-string v0, "android:activity.startedFromWindowTypeLauncher"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsStartedFromWindowTypeLauncher:Z

    :cond_11
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RESUMED_AFFORDANCE:Z

    if-eqz v0, :cond_12

    const-string v0, "android:activity.resumedAffordanceAnimationRequested"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "android:activity.resumedAffordanceAnimationRequested"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mResumedAffordanceAnimationRequested:Z

    :cond_12
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    if-eqz v0, :cond_13

    const-string v0, "android.activity.forceLaunchTaskOnHome"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "android.activity.forceLaunchTaskOnHome"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mForceLaunchTaskOnHome:Z

    :cond_13
    const-string v0, "android.activity.disableSplashScreen"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mDisableSplashScreen:Z

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_DND_UNHANDLED_DRAG:Z

    if-eqz v0, :cond_14

    const-string v0, "android:activity.unhandledDropLaunch"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mUnhandledDropLaunch:Z

    :cond_14
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED:Z

    if-eqz v0, :cond_15

    const-string v0, "android:activity.launchedFromHome"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mLaunchedFromHome:Z

    :cond_15
    const-string v0, "android.activity.startAssistantActivity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "android.activity.startAssistantActivity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mStartAssistantActivity:Z

    :cond_16
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

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->abort()V

    :cond_0
    return-void
.end method

.method public static greylist-max-o fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;
    .locals 1

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

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz p8, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    :goto_0
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    iput-object p1, v0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p3

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    iput p4, v0, Landroid/app/ActivityOptions;->mWidth:I

    iput p5, v0, Landroid/app/ActivityOptions;->mHeight:I

    invoke-direct {v0, p6, p7}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    return-object v0
.end method

.method public static whitelist makeBasic()Landroid/app/ActivityOptions;
    .locals 1

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    return-object v0
.end method

.method public static whitelist makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;
    .locals 3

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    const/16 v1, 0xb

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p1

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    iput p3, v0, Landroid/app/ActivityOptions;->mWidth:I

    iput p4, v0, Landroid/app/ActivityOptions;->mHeight:I

    return-object v0
.end method

.method public static whitelist makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist makeCustomAnimation(Landroid/content/Context;III)Landroid/app/ActivityOptions;
    .locals 6

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

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    iput p1, v0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    iput p2, v0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    iput p3, v0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    invoke-direct {v0, p4, p5}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    return-object v0
.end method

.method public static blacklist makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;
    .locals 1

    invoke-static/range {p0 .. p5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-direct {v0, p4, p6}, Landroid/app/ActivityOptions;->setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    return-object v0
.end method

.method public static greylist-max-o makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    const/16 v1, 0xa

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    iput p1, v0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must specify a valid animation."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist makeCustomTaskAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    return-object v0
.end method

.method public static whitelist makeLaunchIntoPip(Landroid/app/PictureInPictureParams;)Landroid/app/ActivityOptions;
    .locals 3

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    new-instance v1, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v1, p0}, Landroid/app/PictureInPictureParams$Builder;-><init>(Landroid/app/PictureInPictureParams;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/PictureInPictureParams$Builder;->setIsLaunchIntoPip(Z)Landroid/app/PictureInPictureParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    return-object v0
.end method

.method public static greylist makeMultiThumbFutureAspectScaleAnimation(Landroid/content/Context;Landroid/os/Handler;Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .locals 2

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz p4, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    :goto_0
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    iput-object p2, v0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    invoke-direct {v0, p1, p3}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    return-object v0
.end method

.method public static greylist-max-o makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;
    .locals 2

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    const/16 v1, 0xc

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    return-object v0
.end method

.method public static greylist makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;
    .locals 2

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    iput-object p0, v0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    const/16 v1, 0xd

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    return-object v0
.end method

.method public static blacklist makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;
    .locals 2

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    iput-object p0, v0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    const/16 v1, 0xd

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    iput-object p1, v0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    return-object v0
.end method

.method public static blacklist makeRemoteTransition(Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;
    .locals 3

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    iput-object p0, v0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "makeRemoteTransition, remoteTransition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityOptions"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static whitelist makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;
    .locals 3

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    new-array v1, v1, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p1

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    iput p3, v0, Landroid/app/ActivityOptions;->mWidth:I

    iput p4, v0, Landroid/app/ActivityOptions;->mHeight:I

    return-object v0
.end method

.method static greylist-max-o makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/app/ExitTransitionCoordinator;Ljava/util/ArrayList;ILandroid/content/Intent;)Landroid/app/ActivityOptions;
    .locals 4
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

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    const/4 v1, 0x5

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    new-instance v1, Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-direct {v1}, Landroid/app/ActivityOptions$SceneTransitionInfo;-><init>()V

    invoke-virtual {v1, p2}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setSharedElementNames(Ljava/util/ArrayList;)V

    invoke-virtual {v1, p1}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setResultReceiver(Landroid/os/ResultReceiver;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setReturning(Z)V

    invoke-virtual {v1, p3}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setResultCode(I)V

    invoke-virtual {v1, p4}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setResultData(Landroid/content/Intent;)V

    if-nez p0, :cond_0

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setExitCoordinatorKey(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v2, p1}, Landroid/app/ActivityTransitionState;->addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setExitCoordinatorKey(I)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setSceneTransitionInfo(Landroid/app/ActivityOptions$SceneTransitionInfo;)Landroid/app/ActivityOptions;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeSceneTransitionAnimation is called, activity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityOptions"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static whitelist makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;
    .locals 5
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

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    new-instance v1, Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;

    invoke-direct {v1, p0}, Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v1, v2, v3, v0, p1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;Landroid/view/Window;Landroid/app/ActivityOptions;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v3, v1}, Landroid/app/ActivityTransitionState;->addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setExitCoordinatorKey(I)V

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeSceneTransitionAnimation is called, activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityOptions"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method static blacklist makeSceneTransitionAnimation(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;Landroid/view/Window;Landroid/app/ActivityOptions;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;
    .locals 11
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

    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x6

    iput v0, p3, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x5

    iput v0, p3, Landroid/app/ActivityOptions;->mAnimationType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    if-eqz p4, :cond_3

    const/4 v1, 0x0

    :goto_0
    array-length v2, p4

    if-ge v1, v2, :cond_3

    aget-object v2, p4, v1

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Shared element must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Shared element name must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

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

    new-instance v2, Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-direct {v2}, Landroid/app/ActivityOptions$SceneTransitionInfo;-><init>()V

    invoke-virtual {v2, v1}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setResultReceiver(Landroid/os/ResultReceiver;)V

    invoke-virtual {v2, v0}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setSharedElementNames(Ljava/util/ArrayList;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setReturning(Z)V

    invoke-virtual {p3, v2}, Landroid/app/ActivityOptions;->setSceneTransitionInfo(Landroid/app/ActivityOptions$SceneTransitionInfo;)Landroid/app/ActivityOptions;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeSceneTransitionAnimation is called, window="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityOptions"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static whitelist makeTaskLaunchBehind()Landroid/app/ActivityOptions;
    .locals 2

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    const/4 v1, 0x7

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    return-object v0
.end method

.method private static greylist-max-o makeThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .locals 3

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz p5, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    iput-object p1, v0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p3

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v2, p4}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    return-object v0
.end method

.method public static greylist-max-o makeThumbnailAspectScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .locals 9

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

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    const/16 v1, 0x9

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    iput-object p1, v0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    invoke-direct {v0, p2, p3}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    invoke-direct {v0, p2, p4}, Landroid/app/ActivityOptions;->setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    return-object v0
.end method

.method public static whitelist makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/app/ActivityOptions;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .locals 6

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

.method private blacklist sendResultIgnoreErrors(Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1, p2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :goto_1
    return-void
.end method

.method public static blacklist setExitTransitionTimeout(J)V
    .locals 0

    sput-wide p0, Landroid/app/ExitTransitionCoordinator;->sMaxWaitMillis:J

    return-void
.end method

.method private greylist-max-o setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V
    .locals 1

    if-eqz p2, :cond_0

    new-instance v0, Landroid/app/ActivityOptions$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/ActivityOptions$2;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    :cond_0
    return-void
.end method

.method private greylist-max-o setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .locals 1

    if-eqz p2, :cond_0

    new-instance v0, Landroid/app/ActivityOptions$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/ActivityOptions$1;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    :cond_0
    return-void
.end method

.method public static varargs blacklist startSharedElementAnimation(Landroid/view/Window;Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;[Landroid/util/Pair;)Landroid/util/Pair;
    .locals 4
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

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    invoke-static {p1, p2, p0, v0, p3}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;Landroid/view/Window;Landroid/app/ActivityOptions;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions$SceneTransitionInfo;->setExitCoordinatorKey(I)V

    :cond_0
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method public static greylist-max-o stopSharedElementAnimation(Landroid/view/Window;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    nop

    const v1, 0x10202a0

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ExitTransitionCoordinator;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/ExitTransitionCoordinator;->cancelPendingTransitions()Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    invoke-virtual {v2}, Landroid/app/ExitTransitionCoordinator;->resetViews()V

    invoke-virtual {v2}, Landroid/app/ExitTransitionCoordinator;->clearState()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public greylist-max-o abort()V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/app/ActivityOptions;->sendResultIgnoreErrors(Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationAbortListener:Landroid/os/IRemoteCallback;

    invoke-direct {p0, v0, v1}, Landroid/app/ActivityOptions;->sendResultIgnoreErrors(Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V

    return-void
.end method

.method public blacklist allowEnterPipWhileLaunching()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mAllowEnterPipWhileLaunching:Z

    return v0
.end method

.method public greylist-max-o canTaskOverlayResume()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    return v0
.end method

.method public greylist-max-o disallowEnterPictureInPictureWhileLaunching()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    return v0
.end method

.method public greylist-max-o forTargetActivity()Landroid/app/ActivityOptions;
    .locals 2

    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    invoke-virtual {v0, p0}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist freezeRecentTasksReordering()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    return v0
.end method

.method public greylist-max-o getAnimSpecs()[Landroid/view/AppTransitionAnimationSpec;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    return-object v0
.end method

.method public greylist-max-o getAnimationFinishedListener()Landroid/os/IRemoteCallback;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method public blacklist getAnimationStartedListener()Landroid/os/IRemoteCallback;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method public greylist-max-o getAnimationType()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    return v0
.end method

.method public greylist-max-o getAvoidMoveToFront()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    return v0
.end method

.method public blacklist getCallerDisplayId()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    return v0
.end method

.method public blacklist getCustomBackgroundColor()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    return v0
.end method

.method public greylist-max-o getCustomEnterResId()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    return v0
.end method

.method public greylist-max-o getCustomExitResId()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    return v0
.end method

.method public greylist-max-o getCustomInPlaceResId()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    return v0
.end method

.method public blacklist getCustomizedCoverDensity()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mCustomizedCoverDensity:I

    return v0
.end method

.method public blacklist getDisableSplashScreen()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mDisableSplashScreen:Z

    return v0
.end method

.method public blacklist getDisableStartingWindow()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mDisableStartingWindow:Z

    return v0
.end method

.method public blacklist getDismissKeyguardIfInsecure()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mDismissKeyguardIfInsecure:Z

    return v0
.end method

.method public blacklist getForceLaunchWindowingMode()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mForceLaunchWindowingMode:I

    return v0
.end method

.method public greylist-max-o getHeight()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mHeight:I

    return v0
.end method

.method public greylist-max-o getLaunchActivityType()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    return v0
.end method

.method public whitelist getLaunchBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getLaunchCookie()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist getLaunchDisplayId()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    return v0
.end method

.method public blacklist getLaunchInFocusedStageRoot()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mLaunchInFocusedStageRoot:Z

    return v0
.end method

.method public blacklist getLaunchIntoPipParams()Landroid/app/PictureInPictureParams;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    return-object v0
.end method

.method public blacklist getLaunchRootTask()Landroid/window/WindowContainerToken;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public greylist-max-o getLaunchTaskBehind()Z
    .locals 2

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

    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public blacklist getLaunchTaskDisplayAreaFeatureId()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayAreaFeatureId:I

    return v0
.end method

.method public blacklist getLaunchTaskFragmentToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist getLaunchTaskId()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    return v0
.end method

.method public greylist-max-o getLaunchWindowingMode()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    return v0
.end method

.method public blacklist getLaunchedFromBubble()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    return v0
.end method

.method public blacklist getLaunchedFromDnD()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mLaunchedFromDnD:Z

    return v0
.end method

.method public blacklist getLaunchedFromHome()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mLaunchedFromHome:Z

    return v0
.end method

.method public whitelist getLockTaskMode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    return v0
.end method

.method public blacklist getOverrideTaskTransition()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    return v0
.end method

.method public greylist-max-o getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPendingIntentBackgroundActivityStartMode()I
    .locals 1

    invoke-super {p0}, Landroid/app/ComponentOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result v0

    return v0
.end method

.method public whitelist getPendingIntentCreatorBackgroundActivityStartMode()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mPendingIntentCreatorBackgroundActivityStartMode:I

    return v0
.end method

.method public blacklist getPendingIntentLaunchFlags()I
    .locals 2

    iget v0, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    const/high16 v1, 0x18000000

    and-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    return-object v0
.end method

.method public blacklist getRemoteTransition()Landroid/window/RemoteTransition;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    return-object v0
.end method

.method public blacklist getRemoveWithTaskOranizer()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    return v0
.end method

.method public greylist-max-o getRotationAnimationHint()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    return v0
.end method

.method public blacklist getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityOptions;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    return-object v0
.end method

.method public blacklist getSourceInfo()Landroid/app/ActivityOptions$SourceInfo;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    return-object v0
.end method

.method public greylist-max-o getSpecsFuture()Landroid/view/IAppTransitionAnimationSpecsFuture;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    return-object v0
.end method

.method public whitelist getSplashScreenStyle()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    return v0
.end method

.method public blacklist getSplashScreenThemeResName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSplitPosition()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mSplitPosition:I

    return v0
.end method

.method public blacklist getSplitTaskDeferResume()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mSplitTaskDeferResume:Z

    return v0
.end method

.method public blacklist getStartAssistantActivity()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mStartAssistantActivity:Z

    return v0
.end method

.method public greylist-max-o getStartX()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mStartX:I

    return v0
.end method

.method public greylist-max-o getStartY()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mStartY:I

    return v0
.end method

.method public blacklist getStartedByMDMAdmin()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mStartedByMDMAdmin:Z

    return v0
.end method

.method public blacklist getTaskAlwaysOnTop()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    return v0
.end method

.method public greylist-max-o getTaskOverlay()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    return v0
.end method

.method public blacklist getThumbnail()Landroid/hardware/HardwareBuffer;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

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

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    return v0
.end method

.method public blacklist getUnhandledDropLaunch()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mUnhandledDropLaunch:Z

    return v0
.end method

.method public greylist-max-o getUsageTimeReport()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public greylist-max-o getWidth()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mWidth:I

    return v0
.end method

.method public blacklist hasValidHorizontalSplitLayoutWithAdjacentFlag()Z
    .locals 3

    iget v0, p0, Landroid/app/ActivityOptions;->mEnterSplitSideWithAdjacentFlag:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/app/ActivityOptions;->mEnterSplitSideWithAdjacentFlag:I

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

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->hasValidVerticalSplitLayoutWithAdjacentFlag()Z

    move-result v0

    if-nez v0, :cond_1

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

    :goto_1
    return v0
.end method

.method public blacklist hasValidVerticalSplitLayoutWithAdjacentFlag()Z
    .locals 2

    iget v0, p0, Landroid/app/ActivityOptions;->mEnterSplitSideWithAdjacentFlag:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/app/ActivityOptions;->mEnterSplitSideWithAdjacentFlag:I

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

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsActiveApplaunch:Z

    return v0
.end method

.method public blacklist isActivityEmbeddedPlaceholder()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsActivityEmbeddedPlaceholder:Z

    return v0
.end method

.method public blacklist isApplyActivityFlagsForBubbles()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    return v0
.end method

.method public blacklist isApplyBigFreeformSize()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mApplyBigFreeformSize:Z

    return v0
.end method

.method public blacklist isApplyMultipleTaskFlagForShortcut()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mApplyMultipleTaskFlagForShortcut:Z

    return v0
.end method

.method public blacklist isApplyNoUserActionFlagForShortcut()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mApplyNoUserActionFlagForShortcut:Z

    return v0
.end method

.method public blacklist isEligibleForLegacyPermissionPrompt()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    return v0
.end method

.method public blacklist isForceLaunchTaskOnHome()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mForceLaunchTaskOnHome:Z

    return v0
.end method

.method public blacklist isLaunchIntoPip()Z
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->isLaunchIntoPip()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isMlLaunch()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mIsMlLaunch:I

    return v0
.end method

.method public blacklist isNoTransitionOcclusion()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mNoTransitionOcclusion:Z

    return v0
.end method

.method public whitelist isPendingIntentBackgroundActivityLaunchAllowed()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0}, Landroid/app/ComponentOptions;->isPendingIntentBackgroundActivityLaunchAllowed()Z

    move-result v0

    return v0
.end method

.method public blacklist isPopOver()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsPopOver:Z

    return v0
.end method

.method public blacklist isResumedAffordanceAnimationRequested()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mResumedAffordanceAnimationRequested:Z

    return v0
.end method

.method public whitelist isShareIdentityEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mShareIdentity:Z

    return v0
.end method

.method public blacklist isStartedFromWindowTypeLauncher()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsStartedFromWindowTypeLauncher:Z

    return v0
.end method

.method public blacklist launchToRightSideWithAdjacentFlag()Z
    .locals 2

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

    iget v0, p0, Landroid/app/ActivityOptions;->mEnterSplitSideWithAdjacentFlag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public greylist-max-o popAppVerificationBundle()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist preserveTaskWindowingMode()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mPreserveTaskWindowingMode:Z

    return-void
.end method

.method public whitelist requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    return-void
.end method

.method public whitelist semSetChooserPopOverPosition(I)Landroid/app/ActivityOptions;
    .locals 5

    and-int/lit8 v0, p1, 0x7

    if-eqz v0, :cond_3

    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    iget-object v1, p0, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    const/4 v2, 0x1

    const/16 v3, 0x168

    aput v3, v1, v2

    const/4 v1, 0x0

    aput v3, v0, v1

    iget-object v0, p0, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    iget-object v4, p0, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    aput v3, v4, v2

    aput v3, v0, v1

    iget-object v0, p0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    iget-object v3, p0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, v3, v2

    aput-object v4, v0, v1

    iget-object v0, p0, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    iget-object v3, p0, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    aput p1, v3, v2

    aput p1, v0, v1

    and-int/lit8 v0, p1, 0x7

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v3, p0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    aget-object v1, v3, v1

    const/16 v3, 0x2c

    iput v3, v1, Landroid/graphics/Point;->y:I

    :cond_2
    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mIsPopOver:Z

    return-object p0

    :cond_3
    :goto_1
    return-object p0
.end method

.method public whitelist semSetPopOverOptions([I[I[Landroid/graphics/Point;[I)Landroid/app/ActivityOptions;
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/ActivityOptions;->setPopOverOptions([I[I[Landroid/graphics/Point;[I)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setActiveApplaunch(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mIsActiveApplaunch:Z

    return-void
.end method

.method public blacklist setActivityEmbeddedPlaceholder()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsActivityEmbeddedPlaceholder:Z

    return-void
.end method

.method public blacklist setAllowEnterPipWhileLaunching(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mAllowEnterPipWhileLaunching:Z

    return-void
.end method

.method public whitelist setAppVerificationBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public blacklist setApplyActivityFlagsForBubbles(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    return-void
.end method

.method public blacklist setApplyBigFreeformSize(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mApplyBigFreeformSize:Z

    return-void
.end method

.method public blacklist setApplyMultipleTaskFlagForShortcut(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mApplyMultipleTaskFlagForShortcut:Z

    return-void
.end method

.method public blacklist setApplyNoUserActionFlagForShortcut(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mApplyNoUserActionFlagForShortcut:Z

    return-void
.end method

.method public greylist-max-o setAvoidMoveToFront()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAvoidMoveToFront is called, package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityOptions"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setCallerDisplayId(I)Landroid/app/ActivityOptions;
    .locals 0

    iput p1, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    return-object p0
.end method

.method public blacklist setCustomizedCoverDensity(I)V
    .locals 0

    iput p1, p0, Landroid/app/ActivityOptions;->mCustomizedCoverDensity:I

    return-void
.end method

.method public blacklist setDisableSplashScreen()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mDisableSplashScreen:Z

    return-void
.end method

.method public blacklist setDisableStartingWindow(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mDisableStartingWindow:Z

    return-void
.end method

.method public greylist-max-o setDisallowEnterPictureInPictureWhileLaunching(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    return-void
.end method

.method public blacklist setDismissKeyguardIfInsecure()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mDismissKeyguardIfInsecure:Z

    return-void
.end method

.method public blacklist setEligibleForLegacyPermissionPrompt(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    return-void
.end method

.method public blacklist setForceLaunchTaskOnHome()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mForceLaunchTaskOnHome:Z

    return-void
.end method

.method public blacklist setForceLaunchWindowingMode(I)V
    .locals 0

    iput p1, p0, Landroid/app/ActivityOptions;->mForceLaunchWindowingMode:I

    return-void
.end method

.method public blacklist setFreezeRecentTasksReordering()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    return-void
.end method

.method public blacklist setLaunchActivityType(I)V
    .locals 0

    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    return-void
.end method

.method public whitelist setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public blacklist setLaunchCookie(Landroid/app/ActivityOptions$LaunchCookie;)V
    .locals 1

    iget-object v0, p1, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Landroid/app/ActivityOptions;->setLaunchCookie(Landroid/os/IBinder;)V

    return-void
.end method

.method public blacklist setLaunchCookie(Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    return-void
.end method

.method public whitelist setLaunchDisplayId(I)Landroid/app/ActivityOptions;
    .locals 0

    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    return-object p0
.end method

.method public blacklist setLaunchInFocusedStageRoot(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mLaunchInFocusedStageRoot:Z

    return-void
.end method

.method public blacklist setLaunchRootTask(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    return-object p0
.end method

.method public blacklist setLaunchTaskDisplayArea(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    return-object p0
.end method

.method public blacklist setLaunchTaskDisplayAreaFeatureId(I)V
    .locals 0

    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayAreaFeatureId:I

    return-void
.end method

.method public blacklist setLaunchTaskFragmentToken(Landroid/os/IBinder;)Landroid/app/ActivityOptions;
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public whitelist setLaunchTaskId(I)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    return-void
.end method

.method public blacklist setLaunchWindowingMode(I)V
    .locals 0

    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    return-void
.end method

.method public blacklist setLaunchedFromBubble(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    return-void
.end method

.method public blacklist setLaunchedFromDnD(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mLaunchedFromDnD:Z

    return-void
.end method

.method public blacklist setLaunchedFromHome()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mLaunchedFromHome:Z

    return-void
.end method

.method public whitelist setLockTaskEnabled(Z)Landroid/app/ActivityOptions;
    .locals 0

    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    return-object p0
.end method

.method public blacklist setMlLaunch(I)V
    .locals 0

    iput p1, p0, Landroid/app/ActivityOptions;->mIsMlLaunch:I

    return-void
.end method

.method public blacklist setNoTransitionOcclusion()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mNoTransitionOcclusion:Z

    return-void
.end method

.method public blacklist setOnAnimationAbortListener(Landroid/os/IRemoteCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityOptions;->mAnimationAbortListener:Landroid/os/IRemoteCallback;

    return-void
.end method

.method public blacklist setOnAnimationFinishedListener(Landroid/os/IRemoteCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    return-void
.end method

.method public whitelist setPendingIntentBackgroundActivityLaunchAllowed(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Landroid/app/ComponentOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    return-void
.end method

.method public whitelist setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ComponentOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ComponentOptions;

    return-object p0
.end method

.method public bridge synthetic blacklist setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ComponentOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;
    .locals 0

    iput p1, p0, Landroid/app/ActivityOptions;->mPendingIntentCreatorBackgroundActivityStartMode:I

    return-object p0
.end method

.method public blacklist setPendingIntentLaunchFlags(I)V
    .locals 0

    iput p1, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    return-void
.end method

.method public blacklist setPopOverOptions([I[I[Landroid/graphics/Point;[I)Landroid/app/ActivityOptions;
    .locals 5

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mPopOverInheritOptions:Z

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsPopOver:Z

    return-object p0

    :cond_0
    if-eqz p1, :cond_8

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    if-eqz p2, :cond_8

    array-length v0, p2

    if-ne v0, v1, :cond_8

    if-eqz p3, :cond_8

    array-length v0, p3

    if-ne v0, v1, :cond_8

    if-eqz p4, :cond_8

    array-length v0, p4

    if-eq v0, v1, :cond_1

    goto :goto_4

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_6

    aget v2, p4, v0

    and-int/lit8 v2, v2, 0x7

    if-eqz v2, :cond_5

    aget v2, p4, v0

    and-int/lit8 v2, v2, 0x70

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    aget v2, p1, v0

    if-lez v2, :cond_4

    aget v2, p2, v0

    if-lez v2, :cond_4

    aget-object v2, p3, v0

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object p0

    :cond_5
    :goto_2
    return-object p0

    :cond_6
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_7

    iget-object v2, p0, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    aget v3, p1, v0

    aput v3, v2, v0

    iget-object v2, p0, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    aget v3, p2, v0

    aput v3, v2, v0

    iget-object v2, p0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    aget-object v4, p3, v0

    invoke-direct {v3, v4}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    aput-object v3, v2, v0

    iget-object v2, p0, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    aget v3, p4, v0

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsPopOver:Z

    return-object p0

    :cond_8
    :goto_4
    return-object p0
.end method

.method public greylist-max-o setRemoteAnimationAdapter(Landroid/view/RemoteAnimationAdapter;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    return-void
.end method

.method public blacklist setRemoteTransition(Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    return-object p0
.end method

.method public blacklist setRemoveWithTaskOrganizer(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    return-void
.end method

.method public blacklist setResumedAffordanceAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mResumedAffordanceAnimationRequested:Z

    return-void
.end method

.method public greylist-max-o setRotationAnimationHint(I)V
    .locals 0

    iput p1, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    return-void
.end method

.method public blacklist setSceneTransitionInfo(Landroid/app/ActivityOptions$SceneTransitionInfo;)Landroid/app/ActivityOptions;
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    iput-object p1, p0, Landroid/app/ActivityOptions;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    return-object p0
.end method

.method public whitelist setShareIdentityEnabled(Z)Landroid/app/ActivityOptions;
    .locals 0

    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mShareIdentity:Z

    return-object p0
.end method

.method public blacklist setSourceInfo(IJ)V
    .locals 1

    new-instance v0, Landroid/app/ActivityOptions$SourceInfo;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/ActivityOptions$SourceInfo;-><init>(IJ)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    return-void
.end method

.method public whitelist setSplashScreenStyle(I)Landroid/app/ActivityOptions;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iput p1, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    :cond_1
    return-object p0
.end method

.method public blacklist setSplitPosition(I)V
    .locals 0

    iput p1, p0, Landroid/app/ActivityOptions;->mSplitPosition:I

    return-void
.end method

.method public greylist setSplitScreenCreateMode(I)V
    .locals 0

    return-void
.end method

.method public blacklist setStartAssistantActivity(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mStartAssistantActivity:Z

    return-void
.end method

.method public blacklist setStartedFromWindowTypeLauncher(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mIsStartedFromWindowTypeLauncher:Z

    return-void
.end method

.method public blacklist setTaskAlwaysOnTop(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    return-void
.end method

.method public blacklist setTaskOverlay(ZZ)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    iput-boolean p2, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    return-void
.end method

.method public blacklist setTransientLaunch()Landroid/app/ActivityOptions;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    return-object p0
.end method

.method public whitelist toBundle()Landroid/os/Bundle;
    .locals 11

    invoke-super {p0}, Landroid/app/ComponentOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "android:activity.packageName"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    const-string v1, "android:activity.launchBounds"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const-string v1, "android:activity.animType"

    iget v3, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-object v1, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    if-eqz v1, :cond_3

    const-string v1, "android:activity.usageTimeReport"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_3
    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const-string v3, "android:activity.animHeight"

    const-string v4, "android:activity.animWidth"

    const-string v5, "android:activity.animStartY"

    const-string v6, "android:activity.animStartX"

    const-string v7, "android:activity.animStartListener"

    const/4 v8, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    const-string v1, "android:activity.animInPlaceRes"

    iget v3, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3

    :pswitch_2
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    if-eqz v1, :cond_8

    const-string v1, "android:activity.sceneTransitionInfo"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_3

    :pswitch_3
    iget-object v1, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    sget-object v9, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v9, "android:activity.animThumbnail"

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_4
    const-string v9, "ActivityOptions"

    const-string v10, "Failed to copy thumbnail"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    iget v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    nop

    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_1

    :cond_6
    move-object v1, v8

    :goto_1
    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_3

    :pswitch_4
    iget v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    :pswitch_5
    const-string v1, "android:activity.animEnterRes"

    iget v3, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "android:activity.animExitRes"

    iget v3, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "android:activity.backgroundColor"

    iget v3, p0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    nop

    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_2

    :cond_7
    move-object v1, v8

    :goto_2
    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    nop

    :cond_8
    :goto_3
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    if-eqz v1, :cond_9

    const-string v1, "android:activity.lockTaskMode"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_9
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mShareIdentity:Z

    if-eqz v1, :cond_a

    const-string v1, "android:activity.shareIdentity"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mShareIdentity:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_a
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    if-eq v1, v2, :cond_b

    const-string v1, "android.activity.launchDisplayId"

    iget v3, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_b
    iget v1, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    if-eq v1, v2, :cond_c

    const-string v1, "android.activity.callerDisplayId"

    iget v3, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_c
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_d

    const-string v1, "android.activity.launchTaskDisplayAreaToken"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_d
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayAreaFeatureId:I

    if-eq v1, v2, :cond_e

    const-string v1, "android.activity.launchTaskDisplayAreaFeatureId"

    iget v3, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayAreaFeatureId:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_e
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_f

    const-string v1, "android.activity.launchRootTaskToken"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_f
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    if-eqz v1, :cond_10

    const-string v1, "android.activity.launchTaskFragmentToken"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_10
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    if-eqz v1, :cond_11

    const-string v1, "android.activity.windowingMode"

    iget v3, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_11
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    if-eqz v1, :cond_12

    const-string v1, "android.activity.activityType"

    iget v3, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_12
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    if-eq v1, v2, :cond_13

    const-string v1, "android.activity.launchTaskId"

    iget v3, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_13
    iget v1, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    if-eqz v1, :cond_14

    const-string v1, "android.activity.pendingIntentLaunchFlags"

    iget v3, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_14
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    if-eqz v1, :cond_15

    const-string v1, "android.activity.alwaysOnTop"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_15
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    if-eqz v1, :cond_16

    const-string v1, "android.activity.taskOverlay"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_16
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    if-eqz v1, :cond_17

    const-string v1, "android.activity.taskOverlayCanResume"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_17
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    if-eqz v1, :cond_18

    const-string v1, "android.activity.avoidMoveToFront"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_18
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    if-eqz v1, :cond_19

    const-string v1, "android.activity.freezeRecentTasksReordering"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_19
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    if-eqz v1, :cond_1a

    const-string v1, "android:activity.disallowEnterPictureInPictureWhileLaunching"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1a
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    if-eqz v1, :cond_1b

    const-string v1, "android:activity.applyActivityFlagsForBubbles"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1b
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mApplyMultipleTaskFlagForShortcut:Z

    if-eqz v1, :cond_1c

    const-string v1, "android:activity.applyMultipleTaskFlagForShortcut"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mApplyMultipleTaskFlagForShortcut:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1c
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mApplyNoUserActionFlagForShortcut:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_1d

    const-string v1, "android:activity.applyNoUserActionFlagForShortcut"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1d
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    if-eqz v1, :cond_1e

    const-string v1, "android:activity.animSpecs"

    iget-object v4, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_1e
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v4, "android:activity.animationFinishedListener"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_1f
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    if-eqz v1, :cond_20

    iget-object v1, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    invoke-interface {v1}, Landroid/view/IAppTransitionAnimationSpecsFuture;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v4, "android:activity.specsFuture"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_20
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    if-eqz v1, :cond_21

    const-string v1, "android.activity.sourceInfo"

    iget-object v4, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_21
    iget v1, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    if-eq v1, v2, :cond_22

    const-string v1, "android:activity.rotationAnimationHint"

    iget v2, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_22
    const-string v1, "android:activity.isActiveLaunch"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mIsActiveApplaunch:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "android:activity.isMlLaunch"

    iget v2, p0, Landroid/app/ActivityOptions;->mIsMlLaunch:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_23

    const-string v1, "android:instantapps.installerbundle"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_23
    iget-object v1, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    if-eqz v1, :cond_24

    const-string v1, "android:activity.remoteAnimationAdapter"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_24
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    if-eqz v1, :cond_25

    const-string v1, "android.activity.launchCookie"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_25
    iget-object v1, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    if-eqz v1, :cond_26

    const-string v1, "android:activity.remoteTransition"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_26
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    if-eqz v1, :cond_27

    const-string v1, "android:activity.overrideTaskTransition"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_27
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    if-eqz v1, :cond_28

    iget-object v1, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "android.activity.splashScreenTheme"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    if-eqz v1, :cond_29

    const-string v1, "android.activity.removeWithTaskOrganizer"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_29
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    if-eqz v1, :cond_2a

    const-string v1, "android.activity.launchTypeBubble"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2a
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    if-eqz v1, :cond_2b

    const-string v1, "android.activity.transientLaunch"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2b
    iget v1, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    if-eqz v1, :cond_2c

    const-string v1, "android.activity.splashScreenStyle"

    iget v2, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2c
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    if-eqz v1, :cond_2d

    const-string v1, "android.activity.launchIntoPipParams"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2d
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    if-eqz v1, :cond_2e

    const-string v1, "android:activity.legacyPermissionPromptEligible"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2e
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mDismissKeyguardIfInsecure:Z

    if-eqz v1, :cond_2f

    const-string v1, "android.activity.dismissKeyguardIfInsecure"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mDismissKeyguardIfInsecure:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2f
    iget v1, p0, Landroid/app/ActivityOptions;->mPendingIntentCreatorBackgroundActivityStartMode:I

    if-eqz v1, :cond_30

    const-string v1, "android.activity.pendingIntentCreatorBackgroundActivityStartMode"

    iget v2, p0, Landroid/app/ActivityOptions;->mPendingIntentCreatorBackgroundActivityStartMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_30
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mDisableStartingWindow:Z

    if-eqz v1, :cond_31

    const-string v1, "android.activity.disableStarting"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mDisableStartingWindow:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_31
    nop

    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationAbortListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_32

    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationAbortListener:Landroid/os/IRemoteCallback;

    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    :cond_32
    const-string v1, "android:activity.animAbortListener"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIsPopOver:Z

    if-eqz v1, :cond_33

    const-string v1, "android:activity.popOverWidth"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v1, "android:activity.popOverHeight"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v1, "android:activity.popOverAnchor"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    const-string v1, "android:activity.popOverAnchorPosition"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v1, "android:activity.popOver"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mIsPopOver:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_33
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mPopOverInheritOptions:Z

    if-nez v1, :cond_34

    const-string v1, "android:activity.popOverInheritOptions"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mPopOverInheritOptions:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_34
    :goto_4
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CHN_PREMIUM_WATCH:Z

    if-eqz v1, :cond_35

    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mNoTransitionOcclusion:Z

    if-eqz v1, :cond_35

    const-string v1, "android.activity.noTransitionOcclusion"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_35
    iget v1, p0, Landroid/app/ActivityOptions;->mForceLaunchWindowingMode:I

    if-eqz v1, :cond_36

    const-string v1, "android.activity.forceWindowingMode"

    iget v2, p0, Landroid/app/ActivityOptions;->mForceLaunchWindowingMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_36
    const-string v1, "android.activity.splitTaskDeferResume"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mSplitTaskDeferResume:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "android:activity.applyBigFreeformSize"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mApplyBigFreeformSize:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v1, :cond_37

    const-string v1, "android:activity.activityEmbeddedPlaceholder"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mIsActivityEmbeddedPlaceholder:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_37
    const-string v1, "android.activity.launchTypeDnD"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mLaunchedFromDnD:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "android.activity.splitPosition"

    iget v2, p0, Landroid/app/ActivityOptions;->mSplitPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "android:activity.launchInFocusedStageRoot"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mLaunchInFocusedStageRoot:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "android:activity.enterSplitSideWithAdjacentFlag"

    iget v2, p0, Landroid/app/ActivityOptions;->mEnterSplitSideWithAdjacentFlag:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    if-eqz v1, :cond_38

    const-string v1, "android.activity.preserveTaskWindowingMode"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mPreserveTaskWindowingMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_38
    const-string v1, "android.activity.enterPipWhileLaunching"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mAllowEnterPipWhileLaunching:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "android:activity.startedFromWindowTypeLauncher"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mIsStartedFromWindowTypeLauncher:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RESUMED_AFFORDANCE:Z

    if-eqz v1, :cond_39

    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mResumedAffordanceAnimationRequested:Z

    if-eqz v1, :cond_39

    const-string v1, "android:activity.resumedAffordanceAnimationRequested"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_39
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    if-eqz v1, :cond_3a

    const-string v1, "android.activity.forceLaunchTaskOnHome"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mForceLaunchTaskOnHome:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3a
    const-string v1, "android.activity.disableSplashScreen"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mDisableSplashScreen:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_DND_UNHANDLED_DRAG:Z

    if-eqz v1, :cond_3b

    const-string v1, "android:activity.unhandledDropLaunch"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mUnhandledDropLaunch:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3b
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED:Z

    if-eqz v1, :cond_3c

    const-string v1, "android:activity.launchedFromHome"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mLaunchedFromHome:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3c
    const-string v1, "android.activity.startAssistantActivity"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mStartAssistantActivity:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

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
        :pswitch_4
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

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

    const-string v1, ", mLaunchDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist update(Landroid/app/ActivityOptions;)V
    .locals 2

    iget-object v0, p1, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    :cond_0
    iget-object v0, p1, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    iget v1, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    iput v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    iget v1, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    goto :goto_0

    :pswitch_2
    iget-object v1, p1, Landroid/app/ActivityOptions;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    goto :goto_0

    :pswitch_3
    iget-object v1, p1, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    iget v1, p1, Landroid/app/ActivityOptions;->mStartX:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    iget v1, p1, Landroid/app/ActivityOptions;->mStartY:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    iget v1, p1, Landroid/app/ActivityOptions;->mWidth:I

    iput v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    iget v1, p1, Landroid/app/ActivityOptions;->mHeight:I

    iput v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    invoke-direct {p0, v1, v0}, Landroid/app/ActivityOptions;->sendResultIgnoreErrors(Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V

    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    goto :goto_0

    :pswitch_4
    iget v1, p1, Landroid/app/ActivityOptions;->mStartX:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    iget v1, p1, Landroid/app/ActivityOptions;->mStartY:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    iget v1, p1, Landroid/app/ActivityOptions;->mWidth:I

    iput v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    iget v1, p1, Landroid/app/ActivityOptions;->mHeight:I

    iput v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    invoke-direct {p0, v1, v0}, Landroid/app/ActivityOptions;->sendResultIgnoreErrors(Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    goto :goto_0

    :pswitch_5
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    iget v1, p1, Landroid/app/ActivityOptions;->mCustomExitResId:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    iget v1, p1, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    iput-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    invoke-direct {p0, v1, v0}, Landroid/app/ActivityOptions;->sendResultIgnoreErrors(Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V

    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    nop

    :goto_0
    iget-boolean v1, p1, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    iget-boolean v1, p1, Landroid/app/ActivityOptions;->mShareIdentity:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mShareIdentity:Z

    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    iget-object v1, p1, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    iget-object v1, p1, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    iget-object v1, p1, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    iget-boolean v1, p1, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationAbortListener:Landroid/os/IRemoteCallback;

    invoke-direct {p0, v1, v0}, Landroid/app/ActivityOptions;->sendResultIgnoreErrors(Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V

    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimationAbortListener:Landroid/os/IRemoteCallback;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationAbortListener:Landroid/os/IRemoteCallback;

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
