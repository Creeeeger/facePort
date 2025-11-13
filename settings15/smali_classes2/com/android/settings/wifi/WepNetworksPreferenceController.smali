.class public final Lcom/android/settings/wifi/WepNetworksPreferenceController;
.super Lcom/android/settings/spa/preference/ComposePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0017\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R%\u0010\u001a\u001a\u0010\u0012\u000c\u0012\n \u0019*\u0004\u0018\u00010\u00180\u00180\u00178\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u0014\u0010 \u001a\u00020\u00188BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006#\u00b2\u0006\u000e\u0010!\u001a\u0004\u0018\u00010\u00188\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\"\u001a\u00020\u00188\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Lcom/android/settings/wifi/WepNetworksPreferenceController;",
        "Lcom/android/settings/spa/preference/ComposePreferenceController;",
        "Landroid/content/Context;",
        "context",
        "",
        "preferenceKey",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "",
        "getAvailabilityStatus",
        "()I",
        "",
        "Content",
        "(Landroidx/compose/runtime/Composer;I)V",
        "getSummary",
        "()Ljava/lang/String;",
        "Landroid/net/wifi/WifiManager;",
        "wifiManager",
        "Landroid/net/wifi/WifiManager;",
        "getWifiManager",
        "()Landroid/net/wifi/WifiManager;",
        "setWifiManager",
        "(Landroid/net/wifi/WifiManager;)V",
        "Lcom/android/settingslib/spa/framework/compose/OverridableFlow;",
        "",
        "kotlin.jvm.PlatformType",
        "wepAllowedFlow",
        "Lcom/android/settingslib/spa/framework/compose/OverridableFlow;",
        "getWepAllowedFlow",
        "()Lcom/android/settingslib/spa/framework/compose/OverridableFlow;",
        "getCarrierAllowed",
        "()Z",
        "carrierAllowed",
        "checked",
        "openDialog",
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
.field public static final $stable:I = 0x8


# instance fields
.field private final wepAllowedFlow:Lcom/android/settingslib/spa/framework/compose/OverridableFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settingslib/spa/framework/compose/OverridableFlow;"
        }
    .end annotation
.end field

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settings/spa/preference/ComposePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-class p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WepNetworksPreferenceController;->wifiManager:Landroid/net/wifi/WifiManager;

    new-instance p1, Lcom/android/settingslib/spa/framework/compose/OverridableFlow;

    new-instance p2, Lcom/android/settings/wifi/WepNetworksPreferenceController$wepAllowedFlow$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/settings/wifi/WepNetworksPreferenceController$wepAllowedFlow$1;-><init>(Lcom/android/settings/wifi/WepNetworksPreferenceController;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settingslib/spa/framework/compose/OverridableFlow;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WepNetworksPreferenceController;->wepAllowedFlow:Lcom/android/settingslib/spa/framework/compose/OverridableFlow;

    return-void
.end method

.method private static final Content$lambda$0(Landroidx/compose/runtime/State;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method private static final Content$lambda$1(Landroidx/compose/runtime/MutableState;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final Content$lambda$2(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState;",
            "Z)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$Content$lambda$0(Landroidx/compose/runtime/State;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/wifi/WepNetworksPreferenceController;->Content$lambda$0(Landroidx/compose/runtime/State;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$Content$lambda$2(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/wifi/WepNetworksPreferenceController;->Content$lambda$2(Landroidx/compose/runtime/MutableState;Z)V

    return-void
.end method

.method public static final synthetic access$getCarrierAllowed(Lcom/android/settings/wifi/WepNetworksPreferenceController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WepNetworksPreferenceController;->getCarrierAllowed()Z

    move-result p0

    return p0
.end method

.method private final getCarrierAllowed()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/WepNetworksPreferenceController;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWepSupported()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public Content(Landroidx/compose/runtime/Composer;I)V
    .locals 10

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x30b630f7

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, p0, Lcom/android/settings/wifi/WepNetworksPreferenceController;->wepAllowedFlow:Lcom/android/settingslib/spa/framework/compose/OverridableFlow;

    iget-object v0, v0, Lcom/android/settingslib/spa/framework/compose/OverridableFlow;->flow:Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    const/16 v1, 0x38

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v1}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    const/4 v7, 0x0

    new-array v0, v7, [Ljava/lang/Object;

    sget-object v2, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$openDialog$2;->INSTANCE:Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$openDialog$2;

    const/4 v5, 0x6

    const/4 v1, 0x0

    const/16 v4, 0xc08

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/SaverKt$Saver$1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/compose/runtime/MutableState;

    iget-object v0, p0, Lcom/android/settings/wifi/WepNetworksPreferenceController;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    new-instance v9, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$1;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p0

    move-object v3, v6

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$1;-><init>(Landroidx/compose/runtime/Composer;Lcom/android/settings/wifi/WepNetworksPreferenceController;Landroidx/compose/runtime/MutableState;Landroid/net/wifi/WifiInfo;Landroidx/compose/runtime/MutableState;)V

    invoke-static {v9, p1, v7}, Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceKt;->SwitchPreference(Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;Landroidx/compose/runtime/Composer;I)V

    invoke-static {v8}, Lcom/android/settings/wifi/WepNetworksPreferenceController;->Content$lambda$1(Landroidx/compose/runtime/MutableState;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7b685d6

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p1, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v0, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    new-instance v1, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$2$1;

    invoke-direct {v1, v8}, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$2$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    move-object v0, v1

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v1, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    const v3, 0x7f142bfc

    invoke-static {p1, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$3;

    invoke-direct {v4, p0, v8}, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$3;-><init>(Lcom/android/settings/wifi/WepNetworksPreferenceController;Landroidx/compose/runtime/MutableState;)V

    const/4 v5, 0x2

    invoke-direct {v1, v3, v4, v5}, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    const v3, 0x7f1434a4    # 1.9699907E38f

    invoke-static {p1, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7b687a1

    invoke-virtual {p1, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p1, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_2

    if-ne v6, v2, :cond_3

    :cond_2
    new-instance v6, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$4$1;

    invoke-direct {v6, v8}, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$4$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {p1, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v2, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    invoke-direct {v2, v3, v6, v5}, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    const v3, 0x7f14369a

    invoke-static {p1, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/android/settings/wifi/ComposableSingletons$WepNetworksPreferenceControllerKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/16 v8, 0x10

    const/4 v4, 0x0

    const/high16 v7, 0x30000

    move-object v6, p1

    invoke-static/range {v0 .. v8}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogWithIconKt;->SettingsAlertDialogWithIcon(Lkotlin/jvm/functions/Function0;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    :cond_4
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance v0, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$5;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$5;-><init>(Lcom/android/settings/wifi/WepNetworksPreferenceController;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_5
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

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

.method public bridge synthetic getSummary()Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WepNetworksPreferenceController;->getSummary()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings/wifi/WepNetworksPreferenceController;->getCarrierAllowed()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f14329a

    goto :goto_0

    :cond_0
    const p0, 0x7f14329b

    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/spa/preference/ComposePreferenceController;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public final getWepAllowedFlow()Lcom/android/settingslib/spa/framework/compose/OverridableFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/settingslib/spa/framework/compose/OverridableFlow;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/settings/wifi/WepNetworksPreferenceController;->wepAllowedFlow:Lcom/android/settingslib/spa/framework/compose/OverridableFlow;

    return-object p0
.end method

.method public final getWifiManager()Landroid/net/wifi/WifiManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/WepNetworksPreferenceController;->wifiManager:Landroid/net/wifi/WifiManager;

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

.method public final setWifiManager(Landroid/net/wifi/WifiManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WepNetworksPreferenceController;->wifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
