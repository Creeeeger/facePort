.class public final Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final _accessibilityHint:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final _canTryAgainNow:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _fingerprintStartMode:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _forceLargeSize:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _forceMediumSize:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _hapticsToPlay:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _isAuthenticated:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _isAuthenticating:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _isIconViewLoaded:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _isOverlayTouched:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _message:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final accessibilityHint:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final activityTaskManager:Landroid/app/ActivityTaskManager;

.field public final canTryAgainNow:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

.field public final contentView:Lkotlinx/coroutines/flow/Flow;

.field public final context:Landroid/content/Context;

.field public final credentialKind:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final description:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final faceIconHeight:I

.field public final faceIconWidth:I

.field public final faceMode:Lkotlinx/coroutines/flow/Flow;

.field public final fingerprintIconHeight:I

.field public final fingerprintIconWidth:I

.field public final fingerprintSensorHeight:I

.field public final fingerprintSensorWidth:I

.field public final fingerprintStartMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final guidelineBounds:Lkotlinx/coroutines/flow/Flow;

.field public final hapticsToPlay:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final hasFingerOnSensor:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final hasOnlyOneLineTitle:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

.field public final hideSensorIcon:Lkotlinx/coroutines/flow/Flow;

.field public final history:Lcom/android/systemui/biometrics/ui/viewmodel/PromptHistoryImpl;

.field public final iconPosition:Lkotlinx/coroutines/flow/Flow;

.field public final iconProvider:Lcom/android/launcher3/icons/IconProvider;

.field public final iconSize:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final iconViewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

.field public final isAuthenticated:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isAuthenticating:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isCancelButtonVisible:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

.field public final isConfirmButtonVisible:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

.field public final isConfirmationRequired:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final isCredentialButtonVisible:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

.field public final isIconConfirmButton:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final isIconViewLoaded:Lkotlinx/coroutines/flow/Flow;

.field public final isIndicatorMessageVisible:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

.field public final isNegativeButtonVisible:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

.field public final isPendingConfirmation:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$2;

.field public final isRetrySupported:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$6;

.field public final isTryAgainButtonVisible:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final landscapeMediumBottomPadding:I

.field public final landscapeMediumHorizontalPadding:I

.field public final landscapeSmallBottomPadding:I

.field public final landscapeSmallHorizontalPadding:I

.field public final legacyFingerprintSensorHeight:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final legacyFingerprintSensorWidth:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final logo:Lkotlinx/coroutines/flow/Flow;

.field public final logoDescription:Lkotlinx/coroutines/flow/Flow;

.field public final mediumHorizontalGuidelinePadding:I

.field public final mediumTopGuidelinePadding:I

.field public final message:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public messageJob:Lkotlinx/coroutines/Job;

.field public final modalities:Lkotlinx/coroutines/flow/Flow;

.field public final negativeButtonText:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$4;

.field public final portraitLargeScreenBottomPadding:I

.field public final portraitMediumBottomPadding:I

.field public final portraitSmallBottomPadding:I

.field public final position:Lkotlinx/coroutines/flow/Flow;

.field public final promptKind:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final promptPadding:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final promptSelectorInteractor:Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractor;

.field public final showingError:Lkotlinx/coroutines/flow/Flow;

.field public final size:Lkotlinx/coroutines/flow/Flow;

.field public final smallHorizontalGuidelinePadding:I

.field public final subtitle:Lkotlinx/coroutines/flow/Flow;

.field public final title:Lkotlinx/coroutines/flow/Flow;

.field public final udfpsHorizontalGuidelinePadding:I

.field public final udfpsHorizontalShorterGuidelinePadding:I

.field public final udfpsOverlayInteractor:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;

.field public final udfpsUtils:Lcom/android/systemui/biometrics/UdfpsUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractor;Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractor;Landroid/content/Context;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractor;Lcom/android/systemui/biometrics/UdfpsUtils;Lcom/android/launcher3/icons/IconProvider;Landroid/app/ActivityTaskManager;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->promptSelectorInteractor:Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractor;

    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->context:Landroid/content/Context;

    iput-object v3, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->udfpsOverlayInteractor:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;

    move-object/from16 v5, p6

    iput-object v5, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->udfpsUtils:Lcom/android/systemui/biometrics/UdfpsUtils;

    move-object/from16 v5, p7

    iput-object v5, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->iconProvider:Lcom/android/launcher3/icons/IconProvider;

    move-object/from16 v5, p8

    iput-object v5, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->activityTaskManager:Landroid/app/ActivityTaskManager;

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;

    iget-object v6, v5, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->prompt:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    new-instance v7, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$1;

    invoke-direct {v7, v6}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v7}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->modalities:Lkotlinx/coroutines/flow/Flow;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700d2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->fingerprintIconWidth:I

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700d1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->fingerprintIconHeight:I

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700d0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->faceIconWidth:I

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->faceIconHeight:I

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700eb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->portraitSmallBottomPadding:I

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700ea

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->portraitMediumBottomPadding:I

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700e9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->portraitLargeScreenBottomPadding:I

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700e2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->landscapeSmallBottomPadding:I

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700e3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->landscapeSmallHorizontalPadding:I

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700e0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->landscapeMediumBottomPadding:I

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700e1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->landscapeMediumHorizontalPadding:I

    iget-object v7, v3, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;->udfpsOverlayParams:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-object v8, v1

    check-cast v8, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;

    iget-object v14, v8, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;->currentRotation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v9, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$udfpsSensorBounds$1;

    const/4 v15, 0x0

    invoke-direct {v9, v15}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$udfpsSensorBounds$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v10, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v10, v7, v14, v9}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {v10}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v13

    new-instance v9, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$legacyFingerprintSensorWidth$1;

    invoke-direct {v9, v0, v15}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$legacyFingerprintSensorWidth$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance v10, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v10, v6, v7, v9}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput-object v10, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->legacyFingerprintSensorWidth:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    new-instance v9, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$legacyFingerprintSensorHeight$1;

    invoke-direct {v9, v0, v15}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$legacyFingerprintSensorHeight$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance v10, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v10, v6, v7, v9}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput-object v10, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->legacyFingerprintSensorHeight:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v9, v7, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v9}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    iget-object v9, v9, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    iput v9, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->fingerprintSensorWidth:I

    iget-object v7, v7, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v7}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    iget-object v7, v7, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iput v7, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->fingerprintSensorHeight:I

    const/4 v7, 0x7

    const/4 v9, 0x0

    invoke-static {v9, v9, v15, v7}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_accessibilityHint:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {v7}, Lkotlinx/coroutines/flow/FlowKt;->asSharedFlow(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->accessibilityHint:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_isAuthenticating:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v9}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->isAuthenticating:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v9, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v22, 0xe

    const/16 v23, 0x0

    move-object/from16 v16, v9

    invoke-direct/range {v16 .. v23}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;-><init>(ZLcom/android/systemui/biometrics/shared/model/BiometricModality;ZJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v9}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_isAuthenticated:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v9}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v12

    iput-object v12, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->isAuthenticated:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v11, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$2;

    invoke-direct {v11, v12}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v11, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->isPendingConfirmation:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$2;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_isOverlayTouched:Lkotlinx/coroutines/flow/StateFlowImpl;

    iget-object v9, v5, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->credentialKind:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iput-object v9, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->credentialKind:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v9, v5, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->promptKind:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object v9, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->promptKind:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v15, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$3;

    invoke-direct {v15, v6}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v15}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v15

    iput-object v15, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->hideSensorIcon:Lkotlinx/coroutines/flow/Flow;

    iget-object v4, v5, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->prompt:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    move-object/from16 v16, v9

    new-instance v9, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$4;

    invoke-direct {v9, v4}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v9, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->negativeButtonText:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$4;

    sget-object v4, Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage$Empty;->INSTANCE:Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage$Empty;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_message:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v4}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->message:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v9, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$5;

    invoke-direct {v9, v4}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$5;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v9}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->showingError:Lkotlinx/coroutines/flow/Flow;

    new-instance v9, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$6;

    invoke-direct {v9, v6}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$6;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object v17, Lcom/android/systemui/biometrics/ui/viewmodel/FingerprintStartMode;->Pending:Lcom/android/systemui/biometrics/ui/viewmodel/FingerprintStartMode;

    move-object/from16 p6, v9

    invoke-static/range {v17 .. v17}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_fingerprintStartMode:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v9}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->fingerprintStartMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-object/from16 p8, v9

    move-object/from16 v9, p5

    check-cast v9, Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl;

    iget-object v9, v9, Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl;->fingerprintAcquiredStatus:Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$special$$inlined$map$2;

    move-object/from16 v17, v11

    new-instance v11, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$hasFingerBeenAcquired$1;

    move-object/from16 v18, v12

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$hasFingerBeenAcquired$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v12, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v12, v9, v6, v11}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {v12}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v9

    new-instance v11, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$hasFingerOnSensor$1;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$hasFingerOnSensor$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v12, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v12, v9, v10, v11}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput-object v12, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->hasFingerOnSensor:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v12

    iput-object v12, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_forceLargeSize:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v11

    iput-object v11, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_forceMediumSize:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v9, Lcom/android/systemui/biometrics/ui/viewmodel/HapticsToPlay;

    move-object/from16 v19, v10

    const/4 v10, -0x1

    move-object/from16 p5, v11

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/android/systemui/biometrics/ui/viewmodel/HapticsToPlay;-><init>(ILjava/lang/Integer;)V

    invoke-static {v9}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_hapticsToPlay:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v9}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->hapticsToPlay:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v10, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$position$1;

    invoke-direct {v10, v11}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$position$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object v11, v8, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;->isLargeScreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-object v8, v12

    move-object/from16 v20, p6

    move-object/from16 v9, v16

    move-object/from16 v21, v4

    move-object/from16 v4, v19

    move-object/from16 v19, v10

    move-object v10, v11

    move-object/from16 v24, v17

    move-object/from16 v17, p5

    move-object v11, v14

    move-object/from16 v25, v18

    move-object/from16 v18, v12

    move-object v12, v6

    move-object/from16 v22, v14

    move-object v14, v13

    move-object/from16 v13, v19

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function6;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    move-result-object v8

    invoke-static {v8}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v13

    iput-object v13, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->position:Lkotlinx/coroutines/flow/Flow;

    new-instance v12, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$size$1;

    const/4 v8, 0x0

    invoke-direct {v12, v8}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$size$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object v11, v5, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->isConfirmationRequired:Lkotlinx/coroutines/flow/Flow;

    move-object/from16 v8, v18

    move-object/from16 v9, v17

    move-object v10, v6

    move-object/from16 v17, v12

    move-object/from16 v12, p8

    move-object/from16 v18, v5

    move-object v5, v13

    move-object/from16 v13, v17

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function6;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    move-result-object v8

    invoke-static {v8}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->size:Lkotlinx/coroutines/flow/Flow;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0700df

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->smallHorizontalGuidelinePadding:I

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0700ef

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->udfpsHorizontalGuidelinePadding:I

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0700f1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->udfpsHorizontalShorterGuidelinePadding:I

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0700e7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->mediumTopGuidelinePadding:I

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0700ee

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->mediumHorizontalGuidelinePadding:I

    new-instance v9, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconPosition$1;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconPosition$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v14, v8, v5, v6, v9}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    move-result-object v9

    invoke-static {v9}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->iconPosition:Lkotlinx/coroutines/flow/Flow;

    new-instance v11, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isConfirmationRequired$1;

    invoke-direct {v11, v10}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isConfirmationRequired$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v12, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v12, v4, v8, v11}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput-object v12, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->isConfirmationRequired:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    new-instance v4, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$faceMode$1;

    invoke-direct {v4, v10}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$faceMode$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object/from16 v11, p8

    invoke-static {v6, v12, v11, v4}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object v4

    invoke-static {v4}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->faceMode:Lkotlinx/coroutines/flow/Flow;

    new-instance v4, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractor;Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractor;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;)V

    iput-object v4, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->iconViewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_isIconViewLoaded:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isIconViewLoaded$1;

    invoke-direct {v2, v10}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isIconViewLoaded$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v3, v15, v1, v2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconSize$1;

    invoke-direct {v1, v0, v10}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconSize$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v3, v4, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;->activeAuthType:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v2, v3, v6, v1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput-object v2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->iconSize:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    new-instance v1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$promptPadding$1;

    invoke-direct {v1, v0, v10}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$promptPadding$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-object/from16 v3, v22

    invoke-direct {v2, v8, v3, v1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput-object v2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->promptPadding:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-object/from16 v1, v18

    iget-object v2, v1, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->prompt:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    new-instance v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$7;

    invoke-direct {v3, v2, v0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$7;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;)V

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->logo:Lkotlinx/coroutines/flow/Flow;

    iget-object v2, v1, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->prompt:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    new-instance v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$8;

    invoke-direct {v3, v2, v0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$8;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;)V

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->logoDescription:Lkotlinx/coroutines/flow/Flow;

    iget-object v2, v1, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->prompt:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    new-instance v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$9;

    invoke-direct {v3, v2}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$9;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->title:Lkotlinx/coroutines/flow/Flow;

    iget-object v3, v1, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->prompt:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    new-instance v4, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$10;

    invoke-direct {v4, v3}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$10;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v4}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->subtitle:Lkotlinx/coroutines/flow/Flow;

    iget-object v4, v1, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->prompt:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    new-instance v10, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$11;

    invoke-direct {v10, v4}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$11;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v10}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->contentView:Lkotlinx/coroutines/flow/Flow;

    iget-object v10, v1, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->prompt:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    new-instance v11, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$12;

    invoke-direct {v11, v10}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$12;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v11}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v10

    new-instance v11, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$description$1;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$description$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v13, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v13, v4, v10, v11}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput-object v13, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->description:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    new-instance v10, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$hasOnlyOneLineTitle$1;

    invoke-direct {v10, v0, v12}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$hasOnlyOneLineTitle$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v3, v4, v13, v10}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    move-result-object v2

    move-object/from16 p1, v9

    move-object/from16 p2, v16

    move-object/from16 p3, v8

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v2

    filled-new-array/range {p1 .. p6}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$combine$1;

    invoke-direct {v3, v2, v0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;)V

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->guidelineBounds:Lkotlinx/coroutines/flow/Flow;

    new-instance v2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isIndicatorMessageVisible$1;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isIndicatorMessageVisible$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object/from16 v4, v21

    invoke-static {v8, v5, v4, v2}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->isIndicatorMessageVisible:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    new-instance v2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isConfirmButtonVisible$1;

    invoke-direct {v2, v3}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isConfirmButtonVisible$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object/from16 v4, v24

    invoke-static {v8, v5, v4, v2}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->isConfirmButtonVisible:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    new-instance v4, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isIconConfirmButton$1;

    invoke-direct {v4, v3}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isIconConfirmButton$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v9, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v9, v6, v8, v4}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput-object v9, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->isIconConfirmButton:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    new-instance v4, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isNegativeButtonVisible$1;

    invoke-direct {v4, v3}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isNegativeButtonVisible$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object v9, v1, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->isCredentialAllowed:Lkotlinx/coroutines/flow/Flow;

    move-object/from16 v10, v25

    invoke-static {v8, v5, v10, v9, v4}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->isNegativeButtonVisible:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    new-instance v9, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isCancelButtonVisible$1;

    invoke-direct {v9, v3}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isCancelButtonVisible$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object/from16 p1, v8

    move-object/from16 p2, v5

    move-object/from16 p3, v10

    move-object/from16 p4, v4

    move-object/from16 p5, v2

    move-object/from16 p6, v9

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function6;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->isCancelButtonVisible:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_canTryAgainNow:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$canTryAgainNow$1;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$canTryAgainNow$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object/from16 p1, v2

    move-object/from16 p2, v8

    move-object/from16 p3, v5

    move-object/from16 p4, v10

    move-object/from16 p5, v20

    move-object/from16 p6, v3

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function6;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->canTryAgainNow:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    new-instance v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isTryAgainButtonVisible$1;

    invoke-direct {v3, v4}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isTryAgainButtonVisible$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v7, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v7, v2, v6, v3}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput-object v7, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->isTryAgainButtonVisible:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    new-instance v2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isCredentialButtonVisible$1;

    invoke-direct {v2, v4}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isCredentialButtonVisible$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object v1, v1, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->isCredentialAllowed:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v8, v5, v10, v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->isCredentialButtonVisible:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    new-instance v1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptHistoryImpl;

    invoke-direct {v1}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptHistoryImpl;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->history:Lcom/android/systemui/biometrics/ui/viewmodel/PromptHistoryImpl;

    return-void
.end method

.method public static final access$getHorizontalPadding(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;Lcom/android/systemui/biometrics/shared/model/BiometricModalities;Z)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSizeKt;->isSmall(Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->smallHorizontalGuidelinePadding:I

    :goto_0
    neg-int p0, p0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->getHasUdfps()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    iget p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->udfpsHorizontalShorterGuidelinePadding:I

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->udfpsHorizontalGuidelinePadding:I

    goto :goto_1

    :cond_2
    iget p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->mediumHorizontalGuidelinePadding:I

    goto :goto_0

    :goto_1
    return p0
.end method

.method public static showAuthenticating$default(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Ljava/lang/String;ZI)V
    .locals 11

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    iget-object p3, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_isAuthenticated:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;

    iget-boolean v0, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;->isAuthenticated:Z

    if-eqz v0, :cond_2

    const-string p0, "PromptViewModel"

    const-string p1, "Cannot show authenticating after authenticated"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_isAuthenticating:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;

    const/16 v9, 0xe

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;-><init>(ZLcom/android/systemui/biometrics/shared/model/BiometricModality;ZJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p3, v2, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    sget-object p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage$Empty;->INSTANCE:Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage$Empty;

    goto :goto_0

    :cond_3
    new-instance p3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage$Help;

    invoke-direct {p3, p1}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage$Help;-><init>(Ljava/lang/String;)V

    move-object p1, p3

    :goto_0
    iget-object p3, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_message:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p3, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    if-eqz p2, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_canTryAgainNow:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p2, v2, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->messageJob:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_5

    invoke-interface {p1, v2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_5
    iput-object v2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->messageJob:Lkotlinx/coroutines/Job;

    :goto_1
    return-void
.end method

.method public static showTemporaryError$default(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lcom/android/systemui/biometrics/shared/model/BiometricModality;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;
    .locals 10

    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$showTemporaryError$2;->INSTANCE:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$showTemporaryError$2;

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, p4

    :goto_0
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v3, v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/biometrics/shared/model/BiometricModality;->None:Lcom/android/systemui/biometrics/shared/model/BiometricModality;

    move-object v4, v0

    goto :goto_3

    :cond_2
    move-object v4, p5

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$showTemporaryError$3;

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v6, p1

    move v7, p3

    move-object v8, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$showTemporaryError$3;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;ZLcom/android/systemui/biometrics/shared/model/BiometricModality;Lkotlin/jvm/functions/Function2;Ljava/lang/String;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne v0, v1, :cond_3

    goto :goto_4

    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_4
    return-object v0
.end method


# virtual methods
.method public final confirmAuthenticated()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_isAuthenticated:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;

    iget-boolean v3, v1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;->isAuthenticated:Z

    xor-int/lit8 v2, v3, 0x1

    if-eqz v2, :cond_0

    const-string p0, "PromptViewModel"

    const-string v0, "Cannot confirm authenticated when not authenticated"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v8, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;

    iget-object v4, v1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;->authenticatedModality:Lcom/android/systemui/biometrics/shared/model/BiometricModality;

    const/4 v5, 0x0

    iget-wide v6, v1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;->delay:J

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;-><init>(ZLcom/android/systemui/biometrics/shared/model/BiometricModality;ZJ)V

    const/4 v1, 0x1

    iput-boolean v1, v8, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;->wasConfirmed:Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v8}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_message:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object v2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage$Empty;->INSTANCE:Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage$Empty;

    invoke-virtual {v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/HapticsToPlay;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x10

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/biometrics/ui/viewmodel/HapticsToPlay;-><init>(ILjava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_hapticsToPlay:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v2, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->messageJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    iput-object v1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->messageJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final needsExplicitConfirmation(Lcom/android/systemui/biometrics/shared/model/BiometricModality;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$needsExplicitConfirmation$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$needsExplicitConfirmation$1;

    iget v1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$needsExplicitConfirmation$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$needsExplicitConfirmation$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$needsExplicitConfirmation$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$needsExplicitConfirmation$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$needsExplicitConfirmation$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$needsExplicitConfirmation$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$needsExplicitConfirmation$1;->L$0:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcom/android/systemui/biometrics/shared/model/BiometricModality;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$needsExplicitConfirmation$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$needsExplicitConfirmation$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->isConfirmationRequired:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    sget-object p0, Lcom/android/systemui/biometrics/shared/model/BiometricModality;->Face:Lcom/android/systemui/biometrics/shared/model/BiometricModality;

    if-ne p1, p0, :cond_4

    return-object p2

    :cond_4
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final onAnnounceAccessibilityHint(Landroid/view/MotionEvent;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$onAnnounceAccessibilityHint$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$onAnnounceAccessibilityHint$1;

    iget v1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$onAnnounceAccessibilityHint$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$onAnnounceAccessibilityHint$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$onAnnounceAccessibilityHint$1;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$onAnnounceAccessibilityHint$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$onAnnounceAccessibilityHint$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$onAnnounceAccessibilityHint$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-boolean p2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$onAnnounceAccessibilityHint$1;->Z$0:Z

    iget-object p0, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$onAnnounceAccessibilityHint$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroid/view/MotionEvent;

    iget-object p0, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$onAnnounceAccessibilityHint$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_3
    move v5, p2

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p3, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$onAnnounceAccessibilityHint$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$onAnnounceAccessibilityHint$1;->L$1:Ljava/lang/Object;

    iput-boolean p2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$onAnnounceAccessibilityHint$1;->Z$0:Z

    iput v4, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$onAnnounceAccessibilityHint$1;->label:I

    iget-object p3, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->modalities:Lkotlinx/coroutines/flow/Flow;

    invoke-static {p3, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :goto_1
    check-cast p3, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    invoke-virtual {p3}, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->getHasUdfps()Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz v5, :cond_5

    iget-object p2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->udfpsUtils:Lcom/android/systemui/biometrics/UdfpsUtils;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget-object v6, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->udfpsOverlayInteractor:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;

    iget-object v7, v6, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;->udfpsOverlayParams:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v7, v7, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v7}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p1, v7, v4}, Lcom/android/systemui/biometrics/UdfpsUtils;->getTouchInNativeCoordinates(ILandroid/view/MotionEvent;Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;Z)Landroid/graphics/Point;

    move-result-object p2

    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p3

    iget-object v2, v6, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;->udfpsOverlayParams:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v6, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    iget-object v7, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->udfpsUtils:Lcom/android/systemui/biometrics/UdfpsUtils;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3, p1, v6, v4}, Lcom/android/systemui/biometrics/UdfpsUtils;->isWithinSensorArea(ILandroid/view/MotionEvent;Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;Z)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_accessibilityHint:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iget-object v6, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->context:Landroid/content/Context;

    iget p0, p2, Landroid/graphics/Point;->x:I

    iget v8, p2, Landroid/graphics/Point;->y:I

    iget-object p2, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v9, p2

    check-cast v9, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x1

    move v7, p0

    invoke-static/range {v5 .. v10}, Lcom/android/systemui/biometrics/UdfpsUtils;->onTouchOutsideOfSensorArea(ZLandroid/content/Context;IILcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;Z)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    iput-object p2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$onAnnounceAccessibilityHint$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$onAnnounceAccessibilityHint$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$onAnnounceAccessibilityHint$1;->label:I

    invoke-virtual {p1, p0, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final onSwitchToCredential()V
    .locals 14

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_forceLargeSize:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->promptSelectorInteractor:Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractor;

    move-object v3, p0

    check-cast v3, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;

    iget-object p0, v3, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->promptRepository:Lcom/android/systemui/biometrics/data/repository/PromptRepository;

    check-cast p0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;

    iget-object v0, p0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->promptKind:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/shared/model/PromptKind;

    invoke-interface {v0}, Lcom/android/systemui/biometrics/shared/model/PromptKind;->isBiometric()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->promptKind:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric;

    iget-object v0, v0, Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric;->activeModalities:Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    :goto_0
    move-object v8, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v2, v1, v2}, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;-><init>(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Landroid/hardware/face/FaceSensorPropertiesInternal;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->promptInfo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v4, v0

    check-cast v4, Landroid/hardware/biometrics/PromptInfo;

    iget-object v0, p0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->userId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v5

    iget-object v0, p0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->requestId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->challenge:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    iget-object p0, p0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->opPackageName:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, p0

    check-cast v11, Ljava/lang/String;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual/range {v3 .. v13}, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->setPrompt(Landroid/hardware/biometrics/PromptInfo;IJLcom/android/systemui/biometrics/shared/model/BiometricModalities;JLjava/lang/String;ZZ)V

    return-void
.end method

.method public final showAuthenticated(Lcom/android/systemui/biometrics/shared/model/BiometricModality;JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    instance-of v3, v2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$showAuthenticated$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$showAuthenticated$1;

    iget v4, v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$showAuthenticated$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$showAuthenticated$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$showAuthenticated$1;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$showAuthenticated$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$showAuthenticated$1;->result:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$showAuthenticated$1;->label:I

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_3

    if-eq v5, v8, :cond_2

    if-ne v5, v6, :cond_1

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v0, v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$showAuthenticated$1;->J$0:J

    iget-object v5, v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$showAuthenticated$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v9, v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$showAuthenticated$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lcom/android/systemui/biometrics/shared/model/BiometricModality;

    iget-object v10, v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$showAuthenticated$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v11, v0

    move-object v1, v9

    move-object v14, v5

    move-object v5, v2

    move-object v2, v14

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_isAuthenticated:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;

    iget-boolean v5, v5, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;->isAuthenticated:Z

    if-eqz v5, :cond_5

    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;

    iget-boolean v3, v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;->needsUserConfirmation:Z

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;

    iget-object v2, v2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;->authenticatedModality:Lcom/android/systemui/biometrics/shared/model/BiometricModality;

    if-eq v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->confirmAuthenticated()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_4
    const-string v0, "PromptViewModel"

    const-string v1, "Cannot show authenticated after authenticated"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_5
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_isAuthenticating:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v5, v7, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iput-object v0, v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$showAuthenticated$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$showAuthenticated$1;->L$1:Ljava/lang/Object;

    move-object/from16 v2, p4

    iput-object v2, v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$showAuthenticated$1;->L$2:Ljava/lang/Object;

    move-wide/from16 v9, p2

    iput-wide v9, v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$showAuthenticated$1;->J$0:J

    iput v8, v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$showAuthenticated$1;->label:I

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->needsExplicitConfirmation(Lcom/android/systemui/biometrics/shared/model/BiometricModality;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_6

    return-object v4

    :cond_6
    move-wide v11, v9

    move-object v10, v0

    :goto_1
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v5, v10, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_isAuthenticated:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v9, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;

    const/4 v13, 0x1

    move-object p0, v9

    move/from16 p1, v13

    move-object/from16 p2, v1

    move/from16 p3, v0

    move-wide/from16 p4, v11

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;-><init>(ZLcom/android/systemui/biometrics/shared/model/BiometricModality;ZJ)V

    invoke-virtual {v5, v7, v9}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, v10, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_message:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object v5, Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage$Empty;->INSTANCE:Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage$Empty;

    invoke-virtual {v1, v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    if-nez v0, :cond_7

    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/HapticsToPlay;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v5, 0x10

    invoke-direct {v0, v5, v1}, Lcom/android/systemui/biometrics/ui/viewmodel/HapticsToPlay;-><init>(ILjava/lang/Integer;)V

    iget-object v1, v10, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_hapticsToPlay:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v1, v7, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_7
    iget-object v0, v10, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->messageJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_8

    invoke-interface {v0, v7}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_8
    iput-object v7, v10, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->messageJob:Lkotlinx/coroutines/Job;

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v8

    if-eqz v0, :cond_a

    iput-object v7, v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$showAuthenticated$1;->L$0:Ljava/lang/Object;

    iput-object v7, v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$showAuthenticated$1;->L$1:Ljava/lang/Object;

    iput-object v7, v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$showAuthenticated$1;->L$2:Ljava/lang/Object;

    iput v6, v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$showAuthenticated$1;->label:I

    invoke-virtual {v10, v2}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->showHelp(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object v0

    if-ne v0, v4, :cond_9

    return-object v4

    :cond_9
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final showHelp(Ljava/lang/String;)Lkotlin/Unit;
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_isAuthenticated:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;

    iget-boolean v1, v1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;->isAuthenticated:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_isAuthenticating:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v3, v2, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v10, 0xe

    const/4 v11, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;-><init>(ZLcom/android/systemui/biometrics/shared/model/BiometricModality;ZJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v2, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage$Help;

    invoke-direct {v0, p1}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage$Help;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage$Empty;->INSTANCE:Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage$Empty;

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_message:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_forceMediumSize:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0, v2, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->messageJob:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_2

    invoke-interface {p1, v2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_2
    iput-object v2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->messageJob:Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
