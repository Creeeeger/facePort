.class public final Lcom/android/settings/network/BluetoothWiFiResetPreferenceController;
.super Lcom/android/settings/spa/preference/ComposePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\r\u0010\t\u001a\u00020\nH\u0017\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0007R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/android/settings/network/BluetoothWiFiResetPreferenceController;",
        "Lcom/android/settings/spa/preference/ComposePreferenceController;",
        "context",
        "Landroid/content/Context;",
        "preferenceKey",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "restrictionChecker",
        "Lcom/android/settings/network/NetworkResetRestrictionChecker;",
        "Content",
        "",
        "(Landroidx/compose/runtime/Composer;I)V",
        "getAvailabilityStatus",
        "",
        "reset",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "resetOperation",
        "Ljava/lang/Runnable;",
        "Companion",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8

.field private static final Companion:Lcom/android/settings/network/BluetoothWiFiResetPreferenceController$Companion;

.field private static final TAG:Ljava/lang/String; = "BluetoothWiFiResetPref"


# instance fields
.field private final restrictionChecker:Lcom/android/settings/network/NetworkResetRestrictionChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/network/BluetoothWiFiResetPreferenceController$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/network/BluetoothWiFiResetPreferenceController;->Companion:Lcom/android/settings/network/BluetoothWiFiResetPreferenceController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settings/spa/preference/ComposePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Lcom/android/settings/network/NetworkResetRestrictionChecker;

    invoke-direct {p2, p1}, Lcom/android/settings/network/NetworkResetRestrictionChecker;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/network/BluetoothWiFiResetPreferenceController;->restrictionChecker:Lcom/android/settings/network/NetworkResetRestrictionChecker;

    return-void
.end method

.method public static final synthetic access$getMContext$p$s-568736477(Lcom/android/settings/network/BluetoothWiFiResetPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$reset(Lcom/android/settings/network/BluetoothWiFiResetPreferenceController;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/BluetoothWiFiResetPreferenceController;->reset(Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method

.method private final reset(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 4

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 v2, 0x7ce

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    new-instance v0, Lcom/android/settings/network/BluetoothWiFiResetPreferenceController$reset$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/BluetoothWiFiResetPreferenceController$reset$1;-><init>(Lcom/android/settings/network/BluetoothWiFiResetPreferenceController;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public Content(Landroidx/compose/runtime/Composer;I)V
    .locals 6

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x44ef176

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

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

    new-instance v1, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    const v2, 0x7f141ec2

    invoke-static {p1, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/network/BluetoothWiFiResetPreferenceController$Content$dialogPresenter$1;

    check-cast v0, Lkotlinx/coroutines/internal/ContextScope;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/network/BluetoothWiFiResetPreferenceController$Content$dialogPresenter$1;-><init>(Lcom/android/settings/network/BluetoothWiFiResetPreferenceController;Lkotlinx/coroutines/internal/ContextScope;)V

    const/4 v0, 0x2

    invoke-direct {v1, v2, v3, v0}, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    new-instance v2, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    const v0, 0x7f1408bf

    invoke-static {p1, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4, v3}, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    const v0, 0x7f141ec5

    invoke-static {p1, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings/network/ComposableSingletons$BluetoothWiFiResetPreferenceControllerKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v5, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt;->rememberAlertDialogPresenter(Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$alertDialogPresenter$1$1;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/BluetoothWiFiResetPreferenceController$Content$1;

    invoke-direct {v1, p1, v0}, Lcom/android/settings/network/BluetoothWiFiResetPreferenceController$Content$1;-><init>(Landroidx/compose/runtime/Composer;Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$alertDialogPresenter$1$1;)V

    new-instance v0, Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;

    const-string v2, "no_network_reset"

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-direct {v0, v4, v2, v3}, Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;-><init>(ILjava/util/List;I)V

    const/16 v2, 0x40

    invoke-static {v1, v0, p1, v2}, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceKt;->RestrictedPreference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/android/settings/network/BluetoothWiFiResetPreferenceController$Content$2;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/network/BluetoothWiFiResetPreferenceController$Content$2;-><init>(Lcom/android/settings/network/BluetoothWiFiResetPreferenceController;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    iget-object p0, p0, Lcom/android/settings/network/BluetoothWiFiResetPreferenceController;->restrictionChecker:Lcom/android/settings/network/NetworkResetRestrictionChecker;

    iget-object v0, p0, Lcom/android/settings/network/NetworkResetRestrictionChecker;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkResetRestrictionChecker;->hasUserBaseRestriction()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x2

    :goto_1
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/spa/preference/ComposePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/spa/preference/ComposePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/spa/preference/ComposePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/spa/preference/ComposePreferenceController;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/spa/preference/ComposePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/spa/preference/ComposePreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/spa/preference/ComposePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public final resetOperation()Ljava/lang/Runnable;
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->isSimHardwareVisible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/ResetNetworkRequest;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lcom/android/settings/ResetNetworkRequest;-><init>(I)V

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/ResetNetworkRequest;->toResetNetworkOperationBuilder(Landroid/content/Context;Landroid/os/Looper;)Lcom/android/settings/network/ResetNetworkOperationBuilder;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/ResetNetworkRequest;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Lcom/android/settings/ResetNetworkRequest;-><init>(I)V

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/ResetNetworkRequest;->toResetNetworkOperationBuilder(Landroid/content/Context;Landroid/os/Looper;)Lcom/android/settings/network/ResetNetworkOperationBuilder;

    move-result-object p0

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->resetTelephonyAndNetworkPolicyManager(I)V

    :goto_0
    new-instance v0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/ResetNetworkOperationBuilder;I)V

    return-object v0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/spa/preference/ComposePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/spa/preference/ComposePreferenceController;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
