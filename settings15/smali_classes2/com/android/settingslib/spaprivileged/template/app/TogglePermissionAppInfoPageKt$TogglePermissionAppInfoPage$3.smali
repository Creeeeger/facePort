.class final Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$3;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt;->TogglePermissionAppInfoPage(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;Ljava/lang/String;ILcom/android/settingslib/spaprivileged/model/app/IPackageManagers;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u00020\u0004H\u000b\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lcom/android/settingslib/spaprivileged/model/app/AppRecord;",
        "Landroid/content/pm/PackageInfo;",
        "invoke",
        "(Landroid/content/pm/PackageInfo;Landroidx/compose/runtime/Composer;I)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $packageName:Ljava/lang/String;

.field final synthetic $restrictionsProviderFactory:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $this_TogglePermissionAppInfoPage:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;"
        }
    .end annotation
.end field

.field final synthetic $userId:I


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;ILkotlin/jvm/functions/Function2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$3;->$this_TogglePermissionAppInfoPage:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;

    iput p2, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$3;->$userId:I

    iput-object p3, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$3;->$restrictionsProviderFactory:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$3;->$packageName:Ljava/lang/String;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Landroid/content/pm/PackageInfo;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    const-string p3, "$this$AppInfoPage"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p3, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$3;->$this_TogglePermissionAppInfoPage:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;

    move-object v0, p2

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    const v1, 0x570a37bb

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v1, 0x535939b1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v6, 0x0

    if-nez v1, :cond_1

    if-ne v2, v3, :cond_2

    :cond_1
    new-instance v1, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$rememberRecord$1$1;

    invoke-direct {v1, p3, p1, v6}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$rememberRecord$1$1;-><init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;Landroid/content/pm/ApplicationInfo;Lkotlin/coroutines/Continuation;)V

    new-instance p1, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p1, v1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    sget-object p3, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {p1, p3}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    check-cast v2, Lkotlinx/coroutines/flow/Flow;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 p3, 0x38

    invoke-static {v2, v6, v0, p3}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/settingslib/spaprivileged/model/app/AppRecord;

    if-nez v7, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$3;->$this_TogglePermissionAppInfoPage:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;

    invoke-interface {v1, v7, p2}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;->isAllowed(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function0;

    move-result-object v8

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$3;->$this_TogglePermissionAppInfoPage:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;

    const v2, -0x6c7c0bfe

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v2, 0xedc5cdf

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_4

    if-ne v4, v3, :cond_5

    :cond_4
    new-instance v2, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$rememberIsChangeable$1$1;

    invoke-direct {v2, v1, v7, v6}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$rememberIsChangeable$1$1;-><init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;Lcom/android/settingslib/spaprivileged/model/app/AppRecord;Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {v1, v2}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    check-cast v4, Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4, v1, v0, p3}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance p3, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$3$switchModel$1;

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$3;->$this_TogglePermissionAppInfoPage:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;

    move-object v0, p3

    move-object v2, p2

    move-object v3, v8

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$3$switchModel$1;-><init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Lcom/android/settingslib/spaprivileged/model/app/AppRecord;)V

    iget v0, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$3;->$userId:I

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$3;->$this_TogglePermissionAppInfoPage:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;

    invoke-interface {v1}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;->getSwitchRestrictionKeys()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$3;->$this_TogglePermissionAppInfoPage:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;

    invoke-interface {v2}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;->getEnhancedConfirmationKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$3;->$packageName:Ljava/lang/String;

    new-instance v6, Lcom/android/settingslib/spaprivileged/model/enterprise/EnhancedConfirmation;

    invoke-direct {v6, v2, v3}, Lcom/android/settingslib/spaprivileged/model/enterprise/EnhancedConfirmation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    new-instance v2, Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;

    invoke-direct {v2, v0, v1, v6}, Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;-><init>(ILjava/util/List;Lcom/android/settingslib/spaprivileged/model/enterprise/EnhancedConfirmation;)V

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$3;->$restrictionsProviderFactory:Lkotlin/jvm/functions/Function2;

    const/16 v1, 0x40

    invoke-static {p3, v2, v0, p2, v1}, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceKt;->RestrictedSwitchPreference(Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$3;->$this_TogglePermissionAppInfoPage:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;

    invoke-interface {p0, v7, v8, p2, p1}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;->InfoPageAdditionalContent(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
