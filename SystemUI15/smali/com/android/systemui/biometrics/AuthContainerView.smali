.class public final Lcom/android/systemui/biometrics/AuthContainerView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/biometrics/AuthDialog;
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;
.implements Lcom/android/systemui/biometrics/ui/CredentialView$Host;


# instance fields
.field public final mBackCallback:Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda3;

.field public final mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mBackgroundView:Landroid/widget/ImageView;

.field final mBiometricCallback:Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;

.field public final mBiometricScrollView:Landroid/widget/ScrollView;

.field public final mBiometricView:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

.field public final mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

.field mContainerState:I

.field public mCredentialAttestation:[B

.field public mCredentialView:Landroid/view/View;

.field public final mCredentialViewModelProvider:Ljavax/inject/Provider;

.field public final mEffectiveUserId:I

.field public final mFailedModalities:Ljava/util/Set;

.field public final mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public final mLayout:Landroid/view/ViewGroup;

.field public final mLinearOutSlowIn:Landroid/view/animation/Interpolator;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

.field public final mPanelInteractionDetector:Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;

.field public final mPanelView:Landroid/view/View;

.field public mPendingCallbackReason:Ljava/lang/Integer;

.field public final mPromptSelectorInteractorProvider:Ljavax/inject/Provider;

.field public final mPromptViewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

.field public final mTranslationY:F

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final mWindowManager:Landroid/view/WindowManager;

.field public final mWindowToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthContainerView$Config;Lkotlinx/coroutines/CoroutineScope;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;Landroid/os/UserManager;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/jank/InteractionJankMonitor;Ljavax/inject/Provider;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Ljavax/inject/Provider;Landroid/os/Handler;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/VibratorHelper;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/AuthContainerView$Config;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;",
            "Landroid/os/UserManager;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/internal/jank/InteractionJankMonitor;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;",
            "Ljavax/inject/Provider;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p11

    iget-object v5, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    iput-object v5, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mWindowToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    iput v5, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mFailedModalities:Ljava/util/Set;

    new-instance v6, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda3;

    invoke-direct {v6, v0}, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;)V

    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackCallback:Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda3;

    iput-object v1, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    move-object/from16 v6, p8

    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mUserId:I

    move-object/from16 v7, p7

    invoke-virtual {v7, v6}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v9

    iput v9, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mEffectiveUserId:I

    iget-object v6, v0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class v7, Landroid/view/WindowManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v6, p5

    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelInteractionDetector:Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;

    iput-object v4, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mPromptViewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700c9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    iput v6, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mTranslationY:F

    sget-object v6, Lcom/android/app/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    new-instance v6, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;

    invoke-direct {v6, v0}, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;)V

    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricCallback:Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;

    new-instance v12, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    iget-object v7, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mSensorIds:[I

    invoke-static {v2, v7}, Lcom/android/systemui/biometrics/Utils;->findFirstSensorProperties(Ljava/util/List;[I)Landroid/hardware/biometrics/SensorPropertiesInternal;

    move-result-object v7

    check-cast v7, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget-object v8, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mSensorIds:[I

    invoke-static {v3, v8}, Lcom/android/systemui/biometrics/Utils;->findFirstSensorProperties(Ljava/util/List;[I)Landroid/hardware/biometrics/SensorPropertiesInternal;

    move-result-object v8

    check-cast v8, Landroid/hardware/face/FaceSensorPropertiesInternal;

    invoke-direct {v12, v7, v8}, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;-><init>(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Landroid/hardware/face/FaceSensorPropertiesInternal;)V

    iget-object v7, v0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x2

    move-object/from16 v14, p10

    if-ne v7, v13, :cond_0

    const/16 v17, 0x1

    goto :goto_0

    :cond_0
    move/from16 v17, v5

    :goto_0
    iput-object v14, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mPromptSelectorInteractorProvider:Ljavax/inject/Provider;

    invoke-interface/range {p10 .. p10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractor;

    iget-object v8, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iget-wide v10, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mRequestId:J

    iget-wide v13, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mOperationId:J

    iget-object v15, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mOpPackageName:Ljava/lang/String;

    const/16 v16, 0x0

    check-cast v7, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;

    invoke-virtual/range {v7 .. v17}, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->setPrompt(Landroid/hardware/biometrics/PromptInfo;IJLcom/android/systemui/biometrics/shared/model/BiometricModalities;JLjava/lang/String;ZZ)V

    iget-object v7, v0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    iget-object v8, v4, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->promptKind:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v8, v8, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v8}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/biometrics/shared/model/PromptKind;

    invoke-static {}, Lcom/android/systemui/Flags;->constraintBp()V

    invoke-interface {v8}, Lcom/android/systemui/biometrics/shared/model/PromptKind;->isBiometric()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Lcom/android/systemui/biometrics/shared/model/PromptKind;->isTwoPaneLandscapeBiometric()Z

    move-result v8

    if-eqz v8, :cond_1

    const v8, 0x7f0d0062

    invoke-virtual {v7, v8, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v7, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mLayout:Landroid/view/ViewGroup;

    goto :goto_1

    :cond_1
    const v8, 0x7f0d0061

    invoke-virtual {v7, v8, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v7, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mLayout:Landroid/view/ViewGroup;

    goto :goto_1

    :cond_2
    const v8, 0x7f0d0045

    invoke-virtual {v7, v8, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mLayout:Landroid/view/ViewGroup;

    :goto_1
    iget-object v7, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mLayout:Landroid/view/ViewGroup;

    const v8, 0x7f0a0184

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ScrollView;

    iget-object v7, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v7, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mLayout:Landroid/view/ViewGroup;

    const v8, 0x7f0a013f

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackgroundView:Landroid/widget/ImageView;

    new-instance v8, Lcom/android/systemui/biometrics/AuthContainerView$1;

    invoke-direct {v8, v0}, Lcom/android/systemui/biometrics/AuthContainerView$1;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;)V

    invoke-static {v7, v8}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    iget-object v8, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mLayout:Landroid/view/ViewGroup;

    const v9, 0x7f0a08ae

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelView:Landroid/view/View;

    invoke-static {}, Lcom/android/systemui/Flags;->constraintBp()V

    new-instance v9, Lcom/android/systemui/biometrics/AuthPanelController;

    iget-object v10, v0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10, v8}, Lcom/android/systemui/biometrics/AuthPanelController;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v9, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    move-object/from16 v8, p14

    iput-object v8, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object/from16 v8, p9

    iput-object v8, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    move-object/from16 v8, p12

    iput-object v8, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialViewModelProvider:Ljavax/inject/Provider;

    iget-object v8, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mSensorIds:[I

    invoke-static {v2, v8}, Lcom/android/systemui/biometrics/Utils;->findFirstSensorProperties(Ljava/util/List;[I)Landroid/hardware/biometrics/SensorPropertiesInternal;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget-object v2, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mSensorIds:[I

    invoke-static {v3, v2}, Lcom/android/systemui/biometrics/Utils;->findFirstSensorProperties(Ljava/util/List;[I)Landroid/hardware/biometrics/SensorPropertiesInternal;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget-object v2, v4, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->promptKind:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v3, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/biometrics/shared/model/PromptKind;

    invoke-interface {v3}, Lcom/android/systemui/biometrics/shared/model/PromptKind;->isBiometric()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/systemui/Flags;->constraintBp()V

    iget-object v1, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mLayout:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/systemui/biometrics/AuthContainerView$2;

    const-string/jumbo v3, "transit"

    const-wide/16 v8, 0x1c2

    move-object/from16 p3, v2

    move-object/from16 p4, p0

    move-object/from16 p5, v1

    move-object/from16 p6, v3

    move-wide/from16 p7, v8

    invoke-direct/range {p3 .. p8}, Lcom/android/systemui/biometrics/AuthContainerView$2;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;Landroid/view/View;Ljava/lang/String;J)V

    move-object/from16 p3, v1

    move-object/from16 p4, p11

    move-object/from16 p5, v2

    move-object/from16 p6, v7

    move-object/from16 p7, v6

    move-object/from16 p8, p2

    move-object/from16 p9, p15

    invoke-static/range {p3 .. p9}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder;->bind(Landroid/view/View;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lcom/android/systemui/biometrics/AuthContainerView$2;Landroid/view/View;Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/VibratorHelper;)Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    iget-object v2, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/biometrics/shared/model/PromptKind;

    invoke-interface {v2}, Lcom/android/systemui/biometrics/shared/model/PromptKind;->isCredential()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/systemui/Flags;->constraintBp()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v5}, Lcom/android/systemui/biometrics/AuthContainerView;->addCredentialView(ZZ)V

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    invoke-interface/range {p10 .. p10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractor;

    iget-wide v4, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mRequestId:J

    check-cast v3, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->resetPrompt(J)V

    :goto_2
    new-instance v1, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/biometrics/AuthContainerView$Config;Lkotlinx/coroutines/CoroutineScope;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;Landroid/os/UserManager;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/jank/InteractionJankMonitor;Ljavax/inject/Provider;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Ljavax/inject/Provider;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/VibratorHelper;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/AuthContainerView$Config;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;",
            "Landroid/os/UserManager;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/internal/jank/InteractionJankMonitor;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ")V"
        }
    .end annotation

    new-instance v13, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v13, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Lcom/android/systemui/biometrics/AuthContainerView;-><init>(Lcom/android/systemui/biometrics/AuthContainerView$Config;Lkotlinx/coroutines/CoroutineScope;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;Landroid/os/UserManager;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/jank/InteractionJankMonitor;Ljavax/inject/Provider;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Ljavax/inject/Provider;Landroid/os/Handler;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/VibratorHelper;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/systemui/biometrics/AuthContainerView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getLayoutParams(Landroid/os/IBinder;Ljava/lang/CharSequence;)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const v4, 0x1082002

    const/4 v5, -0x3

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7f6

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 v0, 0x3

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-string v0, "BiometricPrompt"

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iput-object p1, v6, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput-object p0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    return-object v6
.end method


# virtual methods
.method public final addCredentialView(ZZ)V
    .locals 8

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mEffectiveUserId:I

    invoke-static {v1, v2}, Lcom/android/systemui/biometrics/Utils;->getCredentialType(Lcom/android/internal/widget/LockPatternUtils;I)Lcom/android/systemui/biometrics/shared/model/PromptKind;

    move-result-object v1

    instance-of v2, v1, Lcom/android/systemui/biometrics/shared/model/PromptKind$Pattern;

    if-eqz v2, :cond_0

    const v1, 0x7f0d0048

    goto :goto_0

    :cond_0
    instance-of v2, v1, Lcom/android/systemui/biometrics/shared/model/PromptKind$Pin;

    if-eqz v2, :cond_1

    const v1, 0x7f0d0049

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/android/systemui/biometrics/shared/model/PromptKind$Password;

    if-eqz v2, :cond_2

    const v1, 0x7f0d0047

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mLayout:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackgroundView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackgroundView:Landroid/widget/ImageView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialViewModelProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    iget-object v0, v3, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;->_animateContents:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Landroid/view/View;

    move-object v2, p2

    check-cast v2, Lcom/android/systemui/biometrics/ui/CredentialView;

    iget-object v5, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    iget-object v7, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricCallback:Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;

    move-object v4, p0

    move v6, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/systemui/biometrics/ui/CredentialView;->init(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Lcom/android/systemui/biometrics/AuthPanelController;ZLcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mLayout:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unknown credential type: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final animateAway(IZ)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    const/4 v1, 0x1

    const-string v2, "AuthContainerView"

    if-ne v0, v1, :cond_0

    const-string/jumbo p1, "startDismiss(): waiting for onDialogAnimatedIn"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    return-void

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Already dismissing, sendReason: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " reason: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    :cond_2
    if-eqz p2, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPendingCallbackReason:Ljava/lang/Integer;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPendingCallbackReason:Ljava/lang/Integer;

    :goto_0
    new-instance p1, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;I)V

    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda0;)V

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final dismissWithoutCallback(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(IZ)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

    iget-object p1, p1, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->onDialogAnimatedIn()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->removeWindowIfAttached()V

    :goto_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "    isAttachedToWindow="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "    containerState="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    const-string v1, "    pendingCallbackReason="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPendingCallbackReason:Ljava/lang/Integer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "    config exist="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {p2, v0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "    config.sensorIds exist="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mSensorIds:[I

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    invoke-static {p2, v1, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    :cond_2
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/systemui/Flags;->constraintBp()V

    invoke-static {}, Lcom/android/systemui/Flags;->constraintBp()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-boolean v0, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mSkipIntro:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    iget v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mTranslationY:F

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setY(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;I)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackCallback:Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    :cond_2
    return-void
.end method

.method public final onCredentialAttemptsRemaining(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x7d9

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f130235

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x104000a

    invoke-virtual {p0, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_0
    if-gtz p1, :cond_1

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f1306b9

    invoke-virtual {p1, p2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelInteractionDetector:Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "AuthDialogPanelInteractionDetector"

    const-string v2, "Disable detector"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;->shadeExpansionCollectorJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackCallback:Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda3;

    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    :cond_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public final onDialogAnimatedIn()V
    .locals 9

    iget v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    const-string v1, "AuthContainerView"

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const-string v0, "onDialogAnimatedIn(): mPendingDismissDialog=true, dismissing now"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(IZ)V

    return-void

    :cond_0
    const/4 v4, 0x4

    if-eq v0, v4, :cond_7

    const/4 v4, 0x5

    if-ne v0, v4, :cond_1

    goto :goto_3

    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->modalities:Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    invoke-virtual {v1}, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->getHasFaceAndFingerprint()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-boolean v1, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mRequireConfirmation:Z

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object v6, v5, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mCallback:Lcom/android/systemui/biometrics/AuthController;

    iget-wide v7, v5, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mRequestId:J

    xor-int/2addr v1, v2

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/biometrics/AuthController;->getCurrentReceiver(J)Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    move-result-object v2

    const-string v5, "AuthController"

    if-nez v2, :cond_3

    const-string v2, "Skip onDialogAnimatedIn"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-interface {v2, v1}, Landroid/hardware/biometrics/IBiometricSysuiReceiver;->onDialogAnimatedIn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v6, "RemoteException when sending onDialogAnimatedIn"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    if-eqz v1, :cond_5

    iget-object v0, v2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_fingerprintStartMode:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Lcom/android/systemui/biometrics/ui/viewmodel/FingerprintStartMode;->Pending:Lcom/android/systemui/biometrics/ui/viewmodel/FingerprintStartMode;

    if-ne v1, v5, :cond_4

    sget-object v1, Lcom/android/systemui/biometrics/ui/viewmodel/FingerprintStartMode;->Normal:Lcom/android/systemui/biometrics/ui/viewmodel/FingerprintStartMode;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->modalities:Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->applicationContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinderKt;->access$asDefaultHelpMessage(Lcom/android/systemui/biometrics/shared/model/BiometricModalities;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v4, v3}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->showAuthenticating$default(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Ljava/lang/String;ZI)V

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    invoke-static {v2, p0, v4, v0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->showAuthenticating$default(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Ljava/lang/String;ZI)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onDialogAnimatedIn(): ignore, already animating out or gone - state: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    invoke-static {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p0

    iput p2, p1, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerWidth:I

    iput p0, p1, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerHeight:I

    return-void
.end method

.method public final onStartedGoingToSleep()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(IZ)V

    return-void
.end method

.method public final removeWindowIfAttached()V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pendingCallback: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPendingCallbackReason:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthContainerView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPendingCallbackReason:Ljava/lang/Integer;

    const/4 v1, 0x5

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object v2, v2, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mCallback:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialAttestation:[B

    iget-object v4, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-wide v4, v4, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mRequestId:J

    iget-object v6, v2, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    const-string v7, "AuthController"

    if-eqz v6, :cond_0

    check-cast v6, Lcom/android/systemui/biometrics/AuthContainerView;

    iget-object v6, v6, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-wide v8, v6, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mRequestId:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    const-string v0, "requestId doesn\'t match, skip onDismissed"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    packed-switch v0, :pswitch_data_0

    const-string v2, "Unhandled reason: "

    invoke-static {v0, v2, v7}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x8

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x7

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x6

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x2

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x3

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPendingCallbackReason:Ljava/lang/Integer;

    :cond_1
    iget v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    iput v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final sendEarlyUserCanceled()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mCallback:Lcom/android/systemui/biometrics/AuthController;

    iget-wide v1, p0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mRequestId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/biometrics/AuthController;->getCurrentReceiver(J)Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    move-result-object p0

    const-string v0, "AuthController"

    if-nez p0, :cond_0

    const-string p0, "Skip onSystemEvent"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p0, v1}, Landroid/hardware/biometrics/IBiometricSysuiReceiver;->onSystemEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "RemoteException when sending system event"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
