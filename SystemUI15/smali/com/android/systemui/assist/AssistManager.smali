.class public final Lcom/android/systemui/assist/AssistManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final invocationTypeMap:Ljava/util/Map;


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mAssistDisclosure:Lcom/android/systemui/assist/AssistDisclosure;

.field public final mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

.field public mAssistOverrideInvocationTypes:[I

.field public mAssistPopupPositiveClicked:Z

.field public final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field public mAssistanceAppSettingAlertDialog:Landroid/app/AlertDialog;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mBroadcastReceiver:Lcom/android/systemui/assist/AssistManager$8;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public mDisabledFlags:I

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final mFilter:Landroid/content/IntentFilter;

.field public final mInteractor:Lcom/android/systemui/assist/domain/interactor/AssistInteractor;

.field public mIsAssistAppAvailable:Z

.field public mLayoutInflater:Landroid/view/LayoutInflater;

.field public final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field public final mPhoneStateMonitor:Lcom/android/systemui/assist/PhoneStateMonitor;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final mSysUiState:Ldagger/Lazy;

.field public final mUiController:Lcom/android/systemui/assist/ui/DefaultUiController;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mVisualQueryAttentionListeners:Ljava/util/List;

.field public final mVisualQueryDetectionAttentionListener:Lcom/android/systemui/assist/AssistManager$1;

.field public final mWindowManager:Landroid/view/IWindowManager;

.field public navBarMode:I


# direct methods
.method public static -$$Nest$mhandleVisualAttentionChanged(Lcom/android/systemui/assist/AssistManager;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/StatusBarManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    const-string v1, "assist_attention"

    invoke-virtual {v0, v1, p1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mVisualQueryAttentionListeners:Ljava/util/List;

    if-eqz p1, :cond_1

    new-instance p1, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda6;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda6;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda6;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda6;-><init>(I)V

    :goto_0
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/assist/AssistManager$2;

    invoke-direct {v0}, Lcom/android/systemui/assist/AssistManager$2;-><init>()V

    sput-object v0, Lcom/android/systemui/assist/AssistManager;->invocationTypeMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;Lcom/android/internal/app/AssistUtils;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/assist/PhoneStateMonitor;Lcom/android/systemui/recents/OverviewProxyService;Ldagger/Lazy;Lcom/android/systemui/assist/ui/DefaultUiController;Lcom/android/systemui/assist/AssistLogger;Landroid/os/Handler;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Landroid/app/ActivityManager;Lcom/android/systemui/assist/domain/interactor/AssistInteractor;Lcom/android/systemui/navigationbar/NavigationModeController;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Landroid/content/Context;",
            "Lcom/android/internal/app/AssistUtils;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Lcom/android/systemui/assist/PhoneStateMonitor;",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/assist/ui/DefaultUiController;",
            "Lcom/android/systemui/assist/AssistLogger;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/settings/DisplayTracker;",
            "Lcom/android/systemui/util/settings/SecureSettings;",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            "Landroid/app/ActivityManager;",
            "Lcom/android/systemui/assist/domain/interactor/AssistInteractor;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/assist/AssistManager;->mVisualQueryAttentionListeners:Ljava/util/List;

    new-instance v4, Lcom/android/systemui/assist/AssistManager$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/assist/AssistManager$1;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    iput-object v4, v0, Lcom/android/systemui/assist/AssistManager;->mVisualQueryDetectionAttentionListener:Lcom/android/systemui/assist/AssistManager$1;

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/systemui/assist/AssistManager;->mIsAssistAppAvailable:Z

    const/4 v4, 0x0

    iput v4, v0, Lcom/android/systemui/assist/AssistManager;->navBarMode:I

    new-instance v4, Lcom/android/systemui/assist/AssistManager$8;

    invoke-direct {v4, p0}, Lcom/android/systemui/assist/AssistManager$8;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    iput-object v4, v0, Lcom/android/systemui/assist/AssistManager;->mBroadcastReceiver:Lcom/android/systemui/assist/AssistManager$8;

    iput-object v1, v0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    move-object v4, p1

    iput-object v4, v0, Lcom/android/systemui/assist/AssistManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object v4, p4

    iput-object v4, v0, Lcom/android/systemui/assist/AssistManager;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iput-object v2, v0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    new-instance v4, Lcom/android/systemui/assist/AssistDisclosure;

    move-object/from16 v5, p10

    invoke-direct {v4, p2, v5}, Lcom/android/systemui/assist/AssistDisclosure;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, v0, Lcom/android/systemui/assist/AssistManager;->mAssistDisclosure:Lcom/android/systemui/assist/AssistDisclosure;

    iput-object v3, v0, Lcom/android/systemui/assist/AssistManager;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    move-object v4, p5

    iput-object v4, v0, Lcom/android/systemui/assist/AssistManager;->mPhoneStateMonitor:Lcom/android/systemui/assist/PhoneStateMonitor;

    move-object v4, p9

    iput-object v4, v0, Lcom/android/systemui/assist/AssistManager;->mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

    move-object/from16 v4, p11

    iput-object v4, v0, Lcom/android/systemui/assist/AssistManager;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 v4, p12

    iput-object v4, v0, Lcom/android/systemui/assist/AssistManager;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    move-object/from16 v4, p13

    iput-object v4, v0, Lcom/android/systemui/assist/AssistManager;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    move-object/from16 v4, p14

    iput-object v4, v0, Lcom/android/systemui/assist/AssistManager;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-object/from16 v4, p15

    iput-object v4, v0, Lcom/android/systemui/assist/AssistManager;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v4, p16

    iput-object v4, v0, Lcom/android/systemui/assist/AssistManager;->mInteractor:Lcom/android/systemui/assist/domain/interactor/AssistInteractor;

    new-instance v4, Lcom/android/systemui/assist/AssistManager$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/assist/AssistManager$4;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    invoke-virtual {p3, v4}, Lcom/android/internal/app/AssistUtils;->registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f050021

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    move-object v1, p8

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/android/systemui/assist/AssistManager$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/assist/AssistManager$6;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    invoke-virtual {p3, v1}, Lcom/android/internal/app/AssistUtils;->subscribeVisualQueryRecognitionStatus(Lcom/android/internal/app/IVisualQueryRecognitionStatusListener;)V

    goto :goto_0

    :goto_1
    iput-object v1, v0, Lcom/android/systemui/assist/AssistManager;->mUiController:Lcom/android/systemui/assist/ui/DefaultUiController;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/assist/AssistManager;->mWindowManager:Landroid/view/IWindowManager;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/assist/AssistManager;->mSysUiState:Ldagger/Lazy;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object v1, v0, Lcom/android/systemui/assist/AssistManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/assist/AssistManager;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/assist/AssistManager$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/assist/AssistManager$3;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    invoke-virtual {p6, v1}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    move-object/from16 v2, p17

    invoke-virtual {v2, v1}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/assist/AssistManager;->navBarMode:I

    :cond_1
    return-void
.end method


# virtual methods
.method public final getAssistInfo()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultRecognizer()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.RecognitionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "AssistManager"

    const-string v0, "Unable to resolve default voice recognition service."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0
.end method

.method public final hideAssist()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {p0}, Lcom/android/internal/app/AssistUtils;->hideCurrentSession()V

    return-void
.end method

.method public final onInvocationProgress(F)V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mUiController:Lcom/android/systemui/assist/ui/DefaultUiController;

    iget-boolean v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationInProgress:Z

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/assist/ui/DefaultUiController;->animateInvocationCompletion()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/assist/ui/DefaultUiController;->hide()V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mAttached:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mRoot:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v2, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mAttached:Z

    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationInProgress:Z

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/ui/DefaultUiController;->setProgressInternal(F)V

    :goto_0
    iput p1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mLastInvocationProgress:F

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/assist/ui/DefaultUiController;->logInvocationProgressMetrics(FZ)V

    return-void
.end method

.method public final shouldOverrideAssist(I)Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistOverrideInvocationTypes:[I

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final showAssistanceAppSettingAlertDialog()V
    .locals 33

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/systemui/assist/AssistManager;->mAssistanceAppSettingAlertDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_a

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v2, v1, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const v3, 0x7f140603

    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/assist/AssistManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d0040

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0a0d34

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_SEARCLE:Z

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/android/systemui/BasicRune;->SUPPORT_AI_AGENT:Z

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1301c3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v4, v1, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1301c4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v4, v1, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1301c2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;

    iget-object v0, v1, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0041

    invoke-direct {v5, v1, v0, v6, v4}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;-><init>(Lcom/android/systemui/assist/AssistManager;Landroid/content/Context;ILjava/util/ArrayList;)V

    iget-object v0, v1, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v6

    const-string v0, ""

    if-eqz v6, :cond_2

    iget-object v7, v1, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_2
    move-object v7, v0

    :goto_1
    iget-object v8, v1, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.service.voice.VoiceInteractionService"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x80

    invoke-virtual {v8, v10, v11}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    const/4 v12, -0x1

    move-object v14, v3

    const/4 v13, 0x0

    move/from16 v32, v12

    move-object v12, v0

    move/from16 v0, v32

    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    const-string v11, "AssistManager"

    const-string v3, " not found"

    move-object/from16 v17, v12

    const-string v12, "Failed to add assistance app "

    if-ge v13, v15, :cond_6

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    move-object/from16 v24, v10

    new-instance v10, Landroid/service/voice/VoiceInteractionServiceInfo;

    move/from16 v18, v0

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v10, v8, v0}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v14

    iget-object v14, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsAssist()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_3
    move-object/from16 v25, v2

    move-object/from16 v12, v17

    move/from16 v0, v18

    move-object/from16 v14, v19

    goto/16 :goto_b

    :cond_4
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    move-object/from16 v25, v2

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move/from16 v16, v0

    :goto_4
    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v25, v2

    move/from16 v16, v18

    goto :goto_4

    :goto_5
    :try_start_0
    invoke-virtual {v8, v14, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v8, v14, v2}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v18, v2

    goto :goto_9

    :catch_3
    move-exception v0

    move-object/from16 v2, v19

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v2, v19

    goto :goto_8

    :catch_5
    move-exception v0

    move-object/from16 v18, v19

    goto :goto_9

    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    move-object/from16 v12, v17

    goto :goto_a

    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v12, v17

    move-object/from16 v2, v18

    :goto_a
    new-instance v0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v11, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v14, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v23, 0x1

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v20, v10

    move-object/from16 v21, v2

    move-object/from16 v22, v12

    invoke-direct/range {v18 .. v23}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;-><init>(Landroid/content/ComponentName;Landroid/service/voice/VoiceInteractionServiceInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v14, v2

    move/from16 v0, v16

    :goto_b
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v10, v24

    move-object/from16 v2, v25

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_6
    move/from16 v18, v0

    move-object/from16 v25, v2

    move-object/from16 v19, v14

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ASSIST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000

    invoke-virtual {v8, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    move/from16 v0, v18

    const/4 v10, 0x0

    :goto_c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v10, v13, :cond_9

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    iget-object v15, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v18, v2

    goto/16 :goto_13

    :cond_7
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    move-object/from16 v18, v2

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_d
    move/from16 v16, v0

    const/4 v2, 0x0

    goto :goto_e

    :cond_8
    move-object/from16 v18, v2

    goto :goto_d

    :goto_e
    :try_start_2
    invoke-virtual {v8, v15, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_9

    const/4 v2, 0x1

    :try_start_3
    invoke-virtual {v8, v15, v2}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_12

    :catch_6
    move-exception v0

    goto :goto_f

    :catch_7
    move-exception v0

    goto :goto_10

    :catch_8
    move-exception v0

    goto :goto_11

    :catch_9
    move-exception v0

    const/4 v2, 0x1

    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    :goto_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    new-instance v0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v15, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v28, 0x0

    const/16 v31, 0x2

    move-object/from16 v26, v0

    move-object/from16 v27, v2

    move-object/from16 v29, v14

    move-object/from16 v30, v17

    invoke-direct/range {v26 .. v31}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;-><init>(Landroid/content/ComponentName;Landroid/service/voice/VoiceInteractionServiceInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v0, v16

    :goto_13
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v18

    goto/16 :goto_c

    :cond_9
    iput v0, v5, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->mSelectedItem:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Current assistance app - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " package name - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " defaultItem - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda2;

    const/4 v3, 0x0

    invoke-direct {v2, v4, v5, v3}, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;I)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, v1, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v4, v25

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v5, v0, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;I)V

    const v2, 0x104000a

    invoke-virtual {v3, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, v1}, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/assist/AssistManager;->mAssistPopupPositiveClicked:Z

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/assist/AssistManager;->mAssistanceAppSettingAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x7d9

    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V

    iget-object v0, v1, Lcom/android/systemui/assist/AssistManager;->mAssistanceAppSettingAlertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v0, v1, Lcom/android/systemui/assist/AssistManager;->mAssistanceAppSettingAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const-string v0, "980"

    const-string v1, "9800"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public final showDisclosure()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistDisclosure:Lcom/android/systemui/assist/AssistDisclosure;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAssistDisclosureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "AssistDisclosure"

    const-string v0, "AssistDisclosure VI is disabled"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure;->mShowRunnable:Lcom/android/systemui/assist/AssistDisclosure$1;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/systemui/assist/AssistDisclosure;->mShowRunnable:Lcom/android/systemui/assist/AssistDisclosure$1;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final startAssist(Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    :goto_0
    iget-object v1, v0, Lcom/android/systemui/assist/AssistManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v1

    const/4 v2, 0x1

    const-string v4, "AssistManager"

    if-ne v1, v2, :cond_2

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ADDITIONAL_LOG:Z

    if-eqz v0, :cond_1

    const-string v0, "Stop calling assistant by LockTaskMode"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const-string v1, "invocation_type"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_3

    move v5, v6

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/systemui/assist/AssistManager;->shouldOverrideAssist(I)Z

    move-result v5

    :goto_1
    if-eqz v5, :cond_5

    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/assist/AssistManager;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-nez v0, :cond_4

    const-string v0, "No OverviewProxyService to invoke assistant override"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_4
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    check-cast v0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->onAssistantOverrideInvoked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string v1, "Unable to invoke assistant via OverviewProxyService override"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void

    :cond_5
    iget-object v5, v0, Lcom/android/systemui/assist/AssistManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v5, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    iget-object v7, v5, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->deviceProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_7

    iget v7, v0, Lcom/android/systemui/assist/AssistManager;->mDisabledFlags:I

    const/high16 v8, 0x2000000

    and-int/2addr v7, v8

    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    move v7, v6

    goto :goto_5

    :cond_7
    :goto_4
    move v7, v2

    :goto_5
    if-eqz v7, :cond_9

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ADDITIONAL_LOG:Z

    if-eqz v0, :cond_8

    const-string v0, "Stop calling assistant by DISABLE_SEARCH"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void

    :cond_9
    const-string v7, "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "AssistanceAppSettingAlreadySelected"

    if-eqz v7, :cond_d

    iget-object v7, v0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v8, v6}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_d

    iget-object v7, v0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const-string v9, "AssistanceMetaKeyPressed"

    invoke-static {v7, v9, v6}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_d

    iget-object v1, v0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MANAGE_DEFAULT_APP"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "android.intent.extra.ROLE_NAME"

    const-string v5, "android.app.role.ASSISTANT"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_b

    iget-object v3, v0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v0, v0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v9, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_b
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ADDITIONAL_LOG:Z

    if-eqz v0, :cond_c

    const-string v0, "Stop calling assistant by showing AssistantSettingActivity"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void

    :cond_d
    sget-boolean v7, Lcom/android/systemui/BasicRune;->ASSIST_ASSISTANCE_APP_SETTING_POPUP:Z

    if-eqz v7, :cond_f

    iget-object v9, v0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-static {v9, v8, v6}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/assist/AssistManager;->showAssistanceAppSettingAlertDialog()V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ADDITIONAL_LOG:Z

    if-eqz v0, :cond_e

    const-string v0, "Stop calling assistant by showing AssistanceAppSettingAlertDialog"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void

    :cond_f
    sget-boolean v8, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    const-class v9, Lcom/android/systemui/util/SettingsHelper;

    if-eqz v8, :cond_13

    iget-object v10, v0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1110038

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    iget-object v11, v0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iget-object v12, v0, Lcom/android/systemui/assist/AssistManager;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v12, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v12}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v12

    const-string v13, "assist_long_press_home_enabled"

    invoke-static {v11, v13, v10, v12}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-eqz v10, :cond_10

    move v10, v2

    goto :goto_7

    :cond_10
    move v10, v6

    :goto_7
    invoke-virtual {v3, v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_13

    if-nez v10, :cond_11

    const-string v0, "Stop calling assistant by ASSIST_LONG_PRESS_HOME_ENABLED false"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    sget-boolean v10, Lcom/android/systemui/BasicRune;->SUPPORT_AI_AGENT:Z

    if-eqz v10, :cond_13

    sget-object v10, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v10, v9}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v10}, Lcom/android/systemui/util/SettingsHelper;->getNavigationBarSPluginFlags()I

    move-result v10

    and-int/lit8 v10, v10, 0x8

    if-eqz v10, :cond_12

    move v10, v2

    goto :goto_8

    :cond_12
    move v10, v6

    :goto_8
    if-nez v10, :cond_13

    const-string v0, "Stop calling assistant by AI_AGENT"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/assist/AssistManager;->getAssistInfo()Landroid/content/ComponentName;

    move-result-object v10

    if-nez v10, :cond_15

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ADDITIONAL_LOG:Z

    if-eqz v0, :cond_14

    const-string v0, "Stop calling assistant by assistComponent null"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-void

    :cond_15
    iget-object v11, v0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {v11}, Lcom/android/internal/app/AssistUtils;->getActiveServiceComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v3, v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    iget-object v13, v0, Lcom/android/systemui/assist/AssistManager;->mPhoneStateMonitor:Lcom/android/systemui/assist/PhoneStateMonitor;

    invoke-virtual {v13}, Lcom/android/systemui/assist/PhoneStateMonitor;->getPhoneState()I

    move-result v13

    const-string v14, "invocation_phone_state"

    invoke-virtual {v3, v14, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v14, "invocation_time_ms"

    move v15, v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v3, v14, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/assist/AssistManager;->mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

    invoke-virtual {v7, v12, v2, v10, v6}, Lcom/android/systemui/assist/AssistLogger;->reportAssistantInvocationEventFromLegacy(IZLandroid/content/ComponentName;Ljava/lang/Integer;)V

    new-instance v6, Landroid/metrics/LogMaker;

    const/16 v7, 0x6b4

    invoke-direct {v6, v7}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {v6, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v6

    shl-int/lit8 v7, v12, 0x1

    shl-int/lit8 v13, v13, 0x4

    or-int/2addr v7, v13

    invoke-virtual {v6, v7}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    iget-object v6, v0, Lcom/android/systemui/assist/AssistManager;->mInteractor:Lcom/android/systemui/assist/domain/interactor/AssistInteractor;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v6, Lcom/android/systemui/assist/domain/interactor/AssistInteractor;->repository:Lcom/android/systemui/assist/data/repository/AssistRepository;

    iget-object v6, v6, Lcom/android/systemui/assist/data/repository/AssistRepository;->_latestInvocationType:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmit(Ljava/lang/Object;)Z

    if-eqz v15, :cond_16

    iget-boolean v6, v0, Lcom/android/systemui/assist/AssistManager;->mIsAssistAppAvailable:Z

    if-nez v6, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/assist/AssistManager;->showAssistanceAppSettingAlertDialog()V

    iput-boolean v2, v0, Lcom/android/systemui/assist/AssistManager;->mIsAssistAppAvailable:Z

    :cond_16
    const/4 v6, 0x3

    if-eqz v8, :cond_1b

    const/4 v7, 0x0

    invoke-virtual {v3, v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v7, Lcom/android/systemui/assist/AssistManager;->invocationTypeMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    if-ne v1, v2, :cond_18

    iget v1, v0, Lcom/android/systemui/assist/AssistManager;->navBarMode:I

    if-ne v1, v6, :cond_17

    const-string v1, "Swipe up handler and pause"

    :goto_9
    move-object v15, v1

    goto :goto_a

    :cond_17
    const-string v1, "Diagonal swipe"

    goto :goto_9

    :cond_18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_9

    :cond_19
    const-string v1, "others"

    goto :goto_9

    :goto_a
    iget-object v1, v0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_b
    move-object/from16 v17, v1

    goto :goto_c

    :cond_1a
    const-string v1, ""

    goto :goto_b

    :goto_c
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v12

    const-string v13, "749007"

    const-string v14, "InvocationType"

    const-string v16, "DigitalAssistantApp"

    invoke-static/range {v12 .. v17}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    if-eqz v11, :cond_1c

    iget-object v2, v0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    iget-object v0, v0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x4

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/AssistUtils;->showSessionForActiveService(Landroid/os/Bundle;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    goto/16 :goto_e

    :cond_1c
    iget-object v1, v5, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->deviceProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1d

    goto/16 :goto_e

    :cond_1d
    iget-object v1, v0, Lcom/android/systemui/assist/AssistManager;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    const/4 v5, 0x0

    invoke-virtual {v1, v6, v5}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels(IZ)V

    const-string v1, "assist_structure_enabled"

    const/4 v6, -0x2

    iget-object v7, v0, Lcom/android/systemui/assist/AssistManager;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    invoke-interface {v7, v1, v2, v6}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_d

    :cond_1e
    move v2, v5

    :goto_d
    iget-object v1, v0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const-string v5, "search"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    if-nez v1, :cond_1f

    goto :goto_e

    :cond_1f
    invoke-virtual {v1, v2}, Landroid/app/SearchManager;->getAssistIntent(Z)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_20

    goto :goto_e

    :cond_20
    invoke-virtual {v1, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    if-eqz v2, :cond_21

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v9}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isAssistDisclosureEnabled()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/assist/AssistManager;->showDisclosure()V

    :cond_21
    :try_start_1
    iget-object v2, v0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const v3, 0x7f010218

    const v5, 0x7f010219

    invoke-static {v2, v3, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v3, Lcom/android/systemui/assist/AssistManager$5;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/assist/AssistManager$5;-><init>(Lcom/android/systemui/assist/AssistManager;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    invoke-static {v3}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_e

    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Activity not found for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    return-void
.end method
