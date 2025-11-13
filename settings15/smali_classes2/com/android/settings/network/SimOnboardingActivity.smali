.class public final Lcom/android/settings/network/SimOnboardingActivity;
.super Lcom/android/settingslib/spa/SpaBaseDialogActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/android/settings/network/SimOnboardingActivity;",
        "Lcom/android/settingslib/spa/SpaBaseDialogActivity;",
        "<init>",
        "()V",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final onboardingService:Lcom/android/settings/network/SimOnboardingService;


# instance fields
.field public final callbackListener:Lkotlin/jvm/functions/Function1;

.field public context:Landroid/content/Context;

.field public enableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

.field public scope:Lkotlinx/coroutines/CoroutineScope;

.field public showDsdsProgressDialog:Landroidx/compose/runtime/MutableState;

.field public showError:Landroidx/compose/runtime/MutableState;

.field public showProgressDialog:Landroidx/compose/runtime/MutableState;

.field public showRestartDialog:Landroidx/compose/runtime/MutableState;

.field public showStartingDialog:Landroidx/compose/runtime/MutableState;

.field public switchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

.field public switchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

.field public wifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/network/SimOnboardingService;

    invoke-direct {v0}, Lcom/android/settings/network/SimOnboardingService;-><init>()V

    sput-object v0, Lcom/android/settings/network/SimOnboardingActivity;->onboardingService:Lcom/android/settings/network/SimOnboardingService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    new-instance v0, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1;-><init>(Lcom/android/settings/network/SimOnboardingActivity;)V

    iput-object v0, p0, Lcom/android/settings/network/SimOnboardingActivity;->callbackListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static initServiceData(Landroid/content/Context;ILkotlin/jvm/functions/Function1;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settings/network/SimOnboardingActivity;->onboardingService:Lcom/android/settings/network/SimOnboardingService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/settings/network/SimOnboardingService;->clear()V

    iput-object p2, v0, Lcom/android/settings/network/SimOnboardingService;->callback:Lkotlin/jvm/functions/Function1;

    iput p1, v0, Lcom/android/settings/network/SimOnboardingService;->targetSubId:I

    const-class p1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, v0, Lcom/android/settings/network/SimOnboardingService;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    const-class p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, v0, Lcom/android/settings/network/SimOnboardingService;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p1, v0, Lcom/android/settings/network/SimOnboardingService;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {p1}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object p1

    const-string p2, "getActiveSubscriptions(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/android/settings/network/SimOnboardingService;->activeSubInfoList:Ljava/util/List;

    iget p2, v0, Lcom/android/settings/network/SimOnboardingService;->targetSubId:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startInit: targetSubId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", activeSubInfoList: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SimOnboardingService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/settings/network/SimOnboardingService$initData$1;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/network/SimOnboardingService$initData$1;-><init>(Landroid/content/Context;Lcom/android/settings/network/SimOnboardingService;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public static sidecarReceiverFlow(Lcom/android/settings/SidecarFragment;)Lkotlinx/coroutines/flow/Flow;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/network/SimOnboardingActivity$sidecarReceiverFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/SimOnboardingActivity$sidecarReceiverFlow$1;-><init>(Lcom/android/settings/SidecarFragment;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/SimOnboardingActivity$sidecarReceiverFlow$2;

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;

    invoke-direct {v1, p0, v0}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    const/4 p0, -0x1

    invoke-static {v1, p0}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final Content(Landroidx/compose/runtime/Composer;I)V
    .locals 8

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x393ca4ca

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/4 v6, 0x0

    new-array v0, v6, [Ljava/lang/Object;

    sget-object v2, Lcom/android/settings/network/SimOnboardingActivity$Content$1;->INSTANCE:Lcom/android/settings/network/SimOnboardingActivity$Content$1;

    const/4 v5, 0x6

    const/4 v1, 0x0

    const/16 v4, 0xc08

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/SaverKt$Saver$1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/MutableState;

    const-string v7, "<set-?>"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/network/SimOnboardingActivity;->showStartingDialog:Landroidx/compose/runtime/MutableState;

    new-array v0, v6, [Ljava/lang/Object;

    sget-object v2, Lcom/android/settings/network/SimOnboardingActivity$Content$2;->INSTANCE:Lcom/android/settings/network/SimOnboardingActivity$Content$2;

    const/4 v5, 0x6

    const/4 v1, 0x0

    const/16 v4, 0xc08

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/SaverKt$Saver$1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/MutableState;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/network/SimOnboardingActivity;->showError:Landroidx/compose/runtime/MutableState;

    new-array v0, v6, [Ljava/lang/Object;

    sget-object v2, Lcom/android/settings/network/SimOnboardingActivity$Content$3;->INSTANCE:Lcom/android/settings/network/SimOnboardingActivity$Content$3;

    const/4 v5, 0x6

    const/4 v1, 0x0

    const/16 v4, 0xc08

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/SaverKt$Saver$1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/MutableState;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/network/SimOnboardingActivity;->showProgressDialog:Landroidx/compose/runtime/MutableState;

    new-array v0, v6, [Ljava/lang/Object;

    sget-object v2, Lcom/android/settings/network/SimOnboardingActivity$Content$4;->INSTANCE:Lcom/android/settings/network/SimOnboardingActivity$Content$4;

    const/4 v5, 0x6

    const/4 v1, 0x0

    const/16 v4, 0xc08

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/SaverKt$Saver$1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/MutableState;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/network/SimOnboardingActivity;->showDsdsProgressDialog:Landroidx/compose/runtime/MutableState;

    new-array v0, v6, [Ljava/lang/Object;

    sget-object v2, Lcom/android/settings/network/SimOnboardingActivity$Content$5;->INSTANCE:Lcom/android/settings/network/SimOnboardingActivity$Content$5;

    const/4 v5, 0x6

    const/4 v1, 0x0

    const/16 v4, 0xc08

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/SaverKt$Saver$1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/MutableState;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/network/SimOnboardingActivity;->showRestartDialog:Landroidx/compose/runtime/MutableState;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v1, :cond_0

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v0, p1}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/activity/compose/PredictiveBackHandlerKt$$ExternalSyntheticOutline0;->m(Lkotlinx/coroutines/internal/ContextScope;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    move-result-object v0

    :cond_0
    check-cast v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    iget-object v0, v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/network/SimOnboardingActivity;->scope:Lkotlinx/coroutines/CoroutineScope;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/network/SimOnboardingActivity;->context:Landroid/content/Context;

    sget-object v0, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->LocalLifecycleOwner:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    new-instance v1, Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    new-instance v2, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v2, v0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {p0}, Lcom/android/settings/network/SimOnboardingActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)V

    iput-object v1, p0, Lcom/android/settings/network/SimOnboardingActivity;->wifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/network/SimOnboardingActivity;->registerSidecarReceiverFlow(Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/network/SimOnboardingActivity;->ErrorDialogImpl(Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/network/SimOnboardingActivity;->RestartDialogImpl(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v1, Lcom/android/settings/network/SimOnboardingActivity$Content$6;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/network/SimOnboardingActivity$Content$6;-><init>(Lcom/android/settings/network/SimOnboardingActivity;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0, v1}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v0, -0x69fb135f

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v0, p0, Lcom/android/settings/network/SimOnboardingActivity;->showStartingDialog:Landroidx/compose/runtime/MutableState;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/settings/network/SimOnboardingActivity$Content$7;

    invoke-direct {v0, p0}, Lcom/android/settings/network/SimOnboardingActivity$Content$7;-><init>(Lcom/android/settings/network/SimOnboardingActivity;)V

    new-instance v1, Lcom/android/settings/network/SimOnboardingActivity$Content$8;

    invoke-direct {v1, p0}, Lcom/android/settings/network/SimOnboardingActivity$Content$8;-><init>(Lcom/android/settings/network/SimOnboardingActivity;)V

    const/16 v2, 0x200

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/settings/network/SimOnboardingActivity;->StartingDialogImpl(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    :cond_1
    invoke-virtual {p1, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v0, -0x69fb0db2

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v0, p0, Lcom/android/settings/network/SimOnboardingActivity;->showProgressDialog:Landroidx/compose/runtime/MutableState;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x40

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/settings/network/SimOnboardingActivity;->onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iget-object v0, v0, Lcom/android/settings/network/SimOnboardingService;->targetSubInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    :cond_2
    if-nez v3, :cond_3

    const-string v3, ""

    :cond_3
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f142c41

    invoke-static {v2, v0, p1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/network/SimOnboardingActivity;->ProgressDialogImpl(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    :cond_4
    invoke-virtual {p1, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p0}, Lcom/android/settings/network/SimOnboardingActivity;->getShowDsdsProgressDialog()Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f142be9

    invoke-static {p1, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/network/SimOnboardingActivity;->ProgressDialogImpl(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    :cond_5
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v0, Lcom/android/settings/network/SimOnboardingActivity$Content$9;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/network/SimOnboardingActivity$Content$9;-><init>(Lcom/android/settings/network/SimOnboardingActivity;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void

    :cond_7
    const-string p0, "showProgressDialog"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_8
    const-string p0, "showStartingDialog"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method public final ErrorDialogImpl(Landroidx/compose/runtime/Composer;I)V
    .locals 10

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x8762d8d

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    const v6, 0x104000a

    invoke-static {p1, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/network/SimOnboardingActivity$ErrorDialogImpl$errorDialogPresenterForEuiccSlotSidecar$1;

    invoke-direct {v2, p0}, Lcom/android/settings/network/SimOnboardingActivity$ErrorDialogImpl$errorDialogPresenterForEuiccSlotSidecar$1;-><init>(Lcom/android/settings/network/SimOnboardingActivity;)V

    const/4 v7, 0x2

    invoke-direct {v0, v1, v2, v7}, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    const v1, 0x7f141d85

    invoke-static {p1, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/settings/network/ComposableSingletons$SimOnboardingActivityKt;->lambda-2:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v5, 0x2

    const/4 v1, 0x0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt;->rememberAlertDialogPresenter(Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$alertDialogPresenter$1$1;

    move-result-object v8

    new-instance v0, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    invoke-static {p1, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/network/SimOnboardingActivity$ErrorDialogImpl$errorDialogPresenterForRemovableSlotSidecar$1;

    invoke-direct {v2, p0}, Lcom/android/settings/network/SimOnboardingActivity$ErrorDialogImpl$errorDialogPresenterForRemovableSlotSidecar$1;-><init>(Lcom/android/settings/network/SimOnboardingActivity;)V

    invoke-direct {v0, v1, v2, v7}, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    const v1, 0x7f142be6

    invoke-static {p1, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/settings/network/ComposableSingletons$SimOnboardingActivityKt;->lambda-3:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v5, 0x2

    const/4 v1, 0x0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt;->rememberAlertDialogPresenter(Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$alertDialogPresenter$1$1;

    move-result-object v9

    new-instance v0, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    invoke-static {p1, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/network/SimOnboardingActivity$ErrorDialogImpl$errorDialogPresenterForMultiSimSidecar$1;

    invoke-direct {v2, p0}, Lcom/android/settings/network/SimOnboardingActivity$ErrorDialogImpl$errorDialogPresenterForMultiSimSidecar$1;-><init>(Lcom/android/settings/network/SimOnboardingActivity;)V

    invoke-direct {v0, v1, v2, v7}, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    const v1, 0x7f140d82

    invoke-static {p1, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/settings/network/ComposableSingletons$SimOnboardingActivityKt;->lambda-4:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v5, 0x2

    const/4 v1, 0x0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt;->rememberAlertDialogPresenter(Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$alertDialogPresenter$1$1;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/network/SimOnboardingActivity;->getShowError()Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    if-eq v1, v7, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$alertDialogPresenter$1$1;->open()V

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$alertDialogPresenter$1$1;->open()V

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$alertDialogPresenter$1$1;->open()V

    :goto_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Lcom/android/settings/network/SimOnboardingActivity$ErrorDialogImpl$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/network/SimOnboardingActivity$ErrorDialogImpl$1;-><init>(Lcom/android/settings/network/SimOnboardingActivity;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void
.end method

.method public final ProgressDialogImpl(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x462c7183

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p3, 0xe

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p3

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    and-int/lit8 v0, v0, 0xb

    if-ne v0, v1, :cond_3

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_3

    :cond_3
    :goto_2
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/android/settings/network/SimOnboardingActivity$ProgressDialogImpl$1;->INSTANCE:Lcom/android/settings/network/SimOnboardingActivity$ProgressDialogImpl$1;

    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {p2}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt;->getDialogWidth(Landroidx/compose/runtime/Composer;)F

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    new-instance v0, Lcom/android/settings/network/SimOnboardingActivity$ProgressDialogImpl$2;

    invoke-direct {v0, p1}, Lcom/android/settings/network/SimOnboardingActivity$ProgressDialogImpl$2;-><init>(Ljava/lang/String;)V

    const v3, -0x3c0a30f7

    invoke-static {v3, v0, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    const/4 v7, 0x4

    const/4 v3, 0x0

    const/16 v6, 0xc06

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Landroidx/compose/material3/AlertDialogKt;->BasicAlertDialog(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    :goto_3
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance v0, Lcom/android/settings/network/SimOnboardingActivity$ProgressDialogImpl$3;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/network/SimOnboardingActivity$ProgressDialogImpl$3;-><init>(Lcom/android/settings/network/SimOnboardingActivity;Ljava/lang/String;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method

.method public final RestartDialogImpl(Landroidx/compose/runtime/Composer;I)V
    .locals 7

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x6d4c2c8c

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    const v1, 0x7f142beb

    invoke-static {p1, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/network/SimOnboardingActivity$RestartDialogImpl$restartDialogPresenter$1;

    invoke-direct {v2, p0}, Lcom/android/settings/network/SimOnboardingActivity$RestartDialogImpl$restartDialogPresenter$1;-><init>(Lcom/android/settings/network/SimOnboardingActivity;)V

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    new-instance v1, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    sget-object v2, Lcom/android/settings/network/SimOnboardingActivity;->onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iget-object v2, v2, Lcom/android/settings/network/SimOnboardingService;->targetSubInfo:Landroid/telephony/SubscriptionInfo;

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v6

    :goto_0
    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v4, 0x7f142bec

    invoke-static {v4, v2, p1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/android/settings/network/SimOnboardingActivity$RestartDialogImpl$restartDialogPresenter$2;

    invoke-direct {v4, p0}, Lcom/android/settings/network/SimOnboardingActivity$RestartDialogImpl$restartDialogPresenter$2;-><init>(Lcom/android/settings/network/SimOnboardingActivity;)V

    invoke-direct {v1, v2, v4, v3}, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    const v2, 0x7f142bee

    invoke-static {p1, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/settings/network/ComposableSingletons$SimOnboardingActivityKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v5, 0x0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt;->rememberAlertDialogPresenter(Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$alertDialogPresenter$1$1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/SimOnboardingActivity;->showRestartDialog:Landroidx/compose/runtime/MutableState;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v2, Lcom/android/settings/network/SimOnboardingActivity$RestartDialogImpl$1;

    invoke-direct {v2, v0, v6}, Lcom/android/settings/network/SimOnboardingActivity$RestartDialogImpl$1;-><init>(Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v1, v2}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Lcom/android/settings/network/SimOnboardingActivity$RestartDialogImpl$2;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/network/SimOnboardingActivity$RestartDialogImpl$2;-><init>(Lcom/android/settings/network/SimOnboardingActivity;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void

    :cond_4
    const-string p0, "showRestartDialog"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6
.end method

.method public final StartingDialogImpl(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 10

    const-string v0, "nextAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancelAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0xeae19ff

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v2, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    const v0, 0x7f142c44

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-direct {v2, v0, p1, v3}, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    new-instance v0, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    const v4, 0x7f142c36

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v4, p2, v3}, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    const v1, 0x7f142c38

    invoke-static {p3, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/settings/network/ComposableSingletons$SimOnboardingActivityKt;->lambda-5:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    sget-object v6, Lcom/android/settings/network/ComposableSingletons$SimOnboardingActivityKt;->lambda-6:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    shr-int/lit8 v1, p4, 0x3

    and-int/lit8 v1, v1, 0xe

    const v3, 0x36000

    or-int v8, v1, v3

    const/4 v9, 0x0

    move-object v1, p2

    move-object v3, v0

    move-object v7, p3

    invoke-static/range {v1 .. v9}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogWithIconKt;->SettingsAlertDialogWithIcon(Lkotlin/jvm/functions/Function0;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_0

    new-instance v0, Lcom/android/settings/network/SimOnboardingActivity$StartingDialogImpl$1;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/settings/network/SimOnboardingActivity$StartingDialogImpl$1;-><init>(Lcom/android/settings/network/SimOnboardingActivity;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void
.end method

.method public final finish()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/SimOnboardingActivity;->setProgressDialog(Z)V

    sget-object v0, Lcom/android/settings/network/SimOnboardingActivity;->onboardingService:Lcom/android/settings/network/SimOnboardingService;

    invoke-virtual {v0}, Lcom/android/settings/network/SimOnboardingService;->clear()V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingActivity;->context:Landroid/content/Context;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "context"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingActivity;->scope:Lkotlinx/coroutines/CoroutineScope;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "scope"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getShowDsdsProgressDialog()Landroidx/compose/runtime/MutableState;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingActivity;->showDsdsProgressDialog:Landroidx/compose/runtime/MutableState;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "showDsdsProgressDialog"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getShowError()Landroidx/compose/runtime/MutableState;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingActivity;->showError:Landroidx/compose/runtime/MutableState;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "showError"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingslib/spa/SpaBaseDialogActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/settingslib/spaprivileged/framework/common/ContextsKt;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p1

    const-string v0, "SimOnboardingActivity"

    if-nez p1, :cond_0

    const-string p1, "It is not the admin user. Unable to toggle subscription."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/network/SimOnboardingActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "sub_id"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object v1, p0, Lcom/android/settings/network/SimOnboardingActivity;->callbackListener:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1, v1}, Lcom/android/settings/network/SimOnboardingActivity;->initServiceData(Landroid/content/Context;ILkotlin/jvm/functions/Function1;)V

    sget-object v1, Lcom/android/settings/network/SimOnboardingActivity;->onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iget v2, v1, Lcom/android/settings/network/SimOnboardingService;->targetSubId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "The subscription id is not usable."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/network/SimOnboardingActivity;->finish()V

    return-void

    :cond_1
    iget-object v1, v1, Lcom/android/settings/network/SimOnboardingService;->activeSubInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "onboardingService.activeSubInfoList is empty, start ToggleSubscriptionDialogActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->getIntent(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/network/SimOnboardingActivity;->finish()V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->get(Landroid/app/FragmentManager;)Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/SimOnboardingActivity;->switchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    sget v0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->$r8$clinit:I

    const-class v0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    const-string v1, "SwitchRemovableSidecar"

    invoke-static {p1, v1, v0}, Lcom/android/settings/SidecarFragment;->get(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/Class;)Lcom/android/settings/SidecarFragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    iput-object p1, p0, Lcom/android/settings/network/SimOnboardingActivity;->switchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    sget v0, Lcom/android/settings/network/EnableMultiSimSidecar;->$r8$clinit:I

    const-class v0, Lcom/android/settings/network/EnableMultiSimSidecar;

    const-string v1, "EnableMultiSimSidecar"

    invoke-static {p1, v1, v0}, Lcom/android/settings/SidecarFragment;->get(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/Class;)Lcom/android/settings/SidecarFragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/EnableMultiSimSidecar;

    iput-object p1, p0, Lcom/android/settings/network/SimOnboardingActivity;->enableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    return-void
.end method

.method public final onStateChange(Lcom/android/settings/SidecarFragment;)V
    .locals 8

    sget-object v0, Lcom/android/settings/network/SimOnboardingActivity;->onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iget-object v1, p0, Lcom/android/settings/network/SimOnboardingActivity;->switchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    iget-object v2, p0, Lcom/android/settings/network/SimOnboardingActivity;->callbackListener:Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    const/4 v4, 0x3

    const-string v5, "SimOnboardingActivity"

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ne p1, v1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p1, v1, Lcom/android/settings/SidecarFragment;->mState:I

    if-eq p1, v7, :cond_1

    if-eq p1, v4, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string p1, "Failed to enable the eSIM profile."

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/network/SimOnboardingActivity;->switchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v6, v6}, Lcom/android/settings/SidecarFragment;->setState(II)V

    invoke-virtual {p0}, Lcom/android/settings/network/SimOnboardingActivity;->getShowError()Landroidx/compose/runtime/MutableState;

    move-result-object p0

    sget-object p1, Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;->ERROR_EUICC_SLOT:Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;->CALLBACK_ERROR:Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;

    check-cast v2, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1;

    invoke-virtual {v2, p0}, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_1
    const-string p1, "Successfully enable the eSIM profile."

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/network/SimOnboardingActivity;->switchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v6, v6}, Lcom/android/settings/SidecarFragment;->setState(II)V

    invoke-virtual {p0}, Lcom/android/settings/network/SimOnboardingActivity;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance v0, Lcom/android/settings/network/SimOnboardingActivity$handleSwitchToEuiccSubscriptionSidecarStateChange$1;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/network/SimOnboardingActivity$handleSwitchToEuiccSubscriptionSidecarStateChange$1;-><init>(Lcom/android/settings/network/SimOnboardingActivity;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v3, v3, v0, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    goto/16 :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/settings/network/SimOnboardingActivity;->switchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    if-ne p1, v1, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p1, v1, Lcom/android/settings/SidecarFragment;->mState:I

    if-eq p1, v7, :cond_4

    if-eq p1, v4, :cond_3

    goto/16 :goto_1

    :cond_3
    const-string p1, "Failed switching to removable slot."

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/network/SimOnboardingActivity;->switchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v6, v6}, Lcom/android/settings/SidecarFragment;->setState(II)V

    invoke-virtual {p0}, Lcom/android/settings/network/SimOnboardingActivity;->getShowError()Landroidx/compose/runtime/MutableState;

    move-result-object p0

    sget-object p1, Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;->ERROR_REMOVABLE_SLOT:Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;->CALLBACK_ERROR:Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;

    check-cast v2, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1;

    invoke-virtual {v2, p0}, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_4
    const-string p1, "Successfully switched to removable slot."

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/network/SimOnboardingActivity;->switchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v6, v6}, Lcom/android/settings/SidecarFragment;->setState(II)V

    iget-object p1, v0, Lcom/android/settings/network/SimOnboardingService;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->canDisablePhysicalSubscription()Z

    move-result p1

    if-ne p1, v1, :cond_5

    move v6, v1

    :cond_5
    iget-object p1, v0, Lcom/android/settings/network/SimOnboardingService;->targetSubInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz p1, :cond_6

    if-eqz v6, :cond_6

    iget-object v0, v0, Lcom/android/settings/network/SimOnboardingService;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-virtual {v0, p1, v1}, Landroid/telephony/SubscriptionManager;->setUiccApplicationsEnabled(IZ)V

    goto :goto_0

    :cond_6
    const-string p1, "SimOnboardingService"

    const-string v0, "The device does not support toggling pSIM. It is enough to just enable the removable slot."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/network/SimOnboardingActivity;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance v0, Lcom/android/settings/network/SimOnboardingActivity$handleSwitchToRemovableSlotSidecarStateChange$1;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/network/SimOnboardingActivity$handleSwitchToRemovableSlotSidecarStateChange$1;-><init>(Lcom/android/settings/network/SimOnboardingActivity;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v3, v3, v0, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/android/settings/network/SimOnboardingActivity;->enableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    if-ne p1, v1, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/network/SimOnboardingActivity;->getShowDsdsProgressDialog()Landroidx/compose/runtime/MutableState;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/network/SimOnboardingActivity;->enableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p1, p1, Lcom/android/settings/SidecarFragment;->mState:I

    if-eq p1, v7, :cond_a

    if-eq p1, v4, :cond_9

    goto :goto_1

    :cond_9
    iget-object p1, p0, Lcom/android/settings/network/SimOnboardingActivity;->enableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v6, v6}, Lcom/android/settings/SidecarFragment;->setState(II)V

    const-string p1, "Failed to switch to DSDS without rebooting."

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/network/SimOnboardingActivity;->getShowError()Landroidx/compose/runtime/MutableState;

    move-result-object p0

    sget-object p1, Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;->ERROR_ENABLE_DSDS:Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;->CALLBACK_ERROR:Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;

    check-cast v2, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1;

    invoke-virtual {v2, p0}, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_a
    iget-object p1, p0, Lcom/android/settings/network/SimOnboardingActivity;->enableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v6, v6}, Lcom/android/settings/SidecarFragment;->setState(II)V

    const-string p1, "Successfully switched to DSDS without reboot."

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, v0, Lcom/android/settings/network/SimOnboardingService;->targetSubId:I

    invoke-static {p0, p1, v2}, Lcom/android/settings/network/SimOnboardingActivity;->initServiceData(Landroid/content/Context;ILkotlin/jvm/functions/Function1;)V

    sget-object p1, Lcom/android/settings/spa/network/SimOnboardingPageProvider;->INSTANCE:Lcom/android/settings/spa/network/SimOnboardingPageProvider;

    iget p1, v0, Lcom/android/settings/network/SimOnboardingService;->targetSubId:I

    const-string v0, "SimOnboardingPageProvider/"

    invoke-static {p1, v0}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/settings/spa/SpaActivity;->Companion:Lcom/android/settings/spa/SpaActivity$Companion;

    invoke-static {p0, p1}, Lcom/android/settings/spa/SpaActivity$Companion;->startSpaActivity(Landroid/content/Context;Ljava/lang/String;)V

    :cond_b
    :goto_1
    return-void
.end method

.method public final registerSidecarReceiverFlow(Landroidx/compose/runtime/Composer;I)V
    .locals 6

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x2b1e51f4

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, p0, Lcom/android/settings/network/SimOnboardingActivity;->switchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/settings/network/SimOnboardingActivity;->sidecarReceiverFlow(Lcom/android/settings/SidecarFragment;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const v2, 0x47f2cab5

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    sget-object v3, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->LocalLifecycleOwner:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/LifecycleOwner;

    new-instance v4, Lcom/android/settings/network/SimOnboardingActivity$registerSidecarReceiverFlow$1;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/network/SimOnboardingActivity$registerSidecarReceiverFlow$1;-><init>(Lcom/android/settings/network/SimOnboardingActivity;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v3, v2, v4}, Lcom/android/settingslib/spa/framework/util/FlowsKt;->collectLatestWithLifecycle(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v3, p0, Lcom/android/settings/network/SimOnboardingActivity;->switchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/android/settings/network/SimOnboardingActivity;->sidecarReceiverFlow(Lcom/android/settings/SidecarFragment;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    const v4, 0x47f2cb69

    invoke-virtual {p1, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    sget-object v4, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->LocalLifecycleOwner:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/LifecycleOwner;

    new-instance v5, Lcom/android/settings/network/SimOnboardingActivity$registerSidecarReceiverFlow$2;

    invoke-direct {v5, p0, v1}, Lcom/android/settings/network/SimOnboardingActivity$registerSidecarReceiverFlow$2;-><init>(Lcom/android/settings/network/SimOnboardingActivity;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v4, v2, v5}, Lcom/android/settingslib/spa/framework/util/FlowsKt;->collectLatestWithLifecycle(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    :goto_3
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v0, p0, Lcom/android/settings/network/SimOnboardingActivity;->enableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/android/settings/network/SimOnboardingActivity;->sidecarReceiverFlow(Lcom/android/settings/SidecarFragment;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    goto :goto_4

    :cond_4
    move-object v0, v1

    :goto_4
    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    sget-object v3, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->LocalLifecycleOwner:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/LifecycleOwner;

    new-instance v4, Lcom/android/settings/network/SimOnboardingActivity$registerSidecarReceiverFlow$3;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/network/SimOnboardingActivity$registerSidecarReceiverFlow$3;-><init>(Lcom/android/settings/network/SimOnboardingActivity;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v3, v2, v4}, Lcom/android/settingslib/spa/framework/util/FlowsKt;->collectLatestWithLifecycle(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    :goto_5
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v0, Lcom/android/settings/network/SimOnboardingActivity$registerSidecarReceiverFlow$4;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/network/SimOnboardingActivity$registerSidecarReceiverFlow$4;-><init>(Lcom/android/settings/network/SimOnboardingActivity;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method

.method public final setProgressDialog(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/SimOnboardingActivity;->showProgressDialog:Landroidx/compose/runtime/MutableState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    const-string v0, "sim_action_dialog_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "progress_state"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "setProgressState:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SimOnboardingActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p0, "showProgressDialog"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
