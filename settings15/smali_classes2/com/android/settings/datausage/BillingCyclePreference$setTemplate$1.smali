.class final Lcom/android/settings/datausage/BillingCyclePreference$setTemplate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $subId:I

.field final synthetic $template:Landroid/net/NetworkTemplate;

.field final synthetic this$0:Lcom/android/settings/datausage/BillingCyclePreference;


# direct methods
.method public constructor <init>(ILcom/android/settings/datausage/BillingCyclePreference;Landroid/net/NetworkTemplate;)V
    .locals 0

    iput p1, p0, Lcom/android/settings/datausage/BillingCyclePreference$setTemplate$1;->$subId:I

    iput-object p2, p0, Lcom/android/settings/datausage/BillingCyclePreference$setTemplate$1;->this$0:Lcom/android/settings/datausage/BillingCyclePreference;

    iput-object p3, p0, Lcom/android/settings/datausage/BillingCyclePreference$setTemplate$1;->$template:Landroid/net/NetworkTemplate;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    move-object p2, p1

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const p2, 0x67e5ff35

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget p2, p0, Lcom/android/settings/datausage/BillingCyclePreference$setTemplate$1;->$subId:I

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result p2

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCyclePreference$setTemplate$1;->this$0:Lcom/android/settings/datausage/BillingCyclePreference;

    iget v2, p0, Lcom/android/settings/datausage/BillingCyclePreference$setTemplate$1;->$subId:I

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez p2, :cond_2

    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, p2, :cond_3

    :cond_2
    iget-object p2, v1, Lcom/android/settings/datausage/BillingCyclePreference;->repository:Lcom/android/settings/datausage/lib/BillingCycleRepository;

    iget-object v1, p2, Lcom/android/settings/datausage/lib/BillingCycleRepository;->telephonyRepository:Lcom/android/settings/network/telephony/TelephonyRepository;

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/TelephonyRepository;->isDataEnabledFlow(I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v2, Lcom/android/settings/datausage/lib/BillingCycleRepository$isModifiableFlow$$inlined$map$1;

    invoke-direct {v2, v1, p2}, Lcom/android/settings/datausage/lib/BillingCycleRepository$isModifiableFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settings/datausage/lib/BillingCycleRepository;)V

    const/4 p2, -0x1

    invoke-static {v2, p2}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {p2, v1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast v3, Lkotlinx/coroutines/flow/Flow;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v2, 0x38

    invoke-static {v3, v1, p1, v2}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    new-instance v2, Lcom/android/settings/datausage/BillingCyclePreference$setTemplate$1$1;

    iget-object v3, p0, Lcom/android/settings/datausage/BillingCyclePreference$setTemplate$1;->this$0:Lcom/android/settings/datausage/BillingCyclePreference;

    iget-object p0, p0, Lcom/android/settings/datausage/BillingCyclePreference$setTemplate$1;->$template:Landroid/net/NetworkTemplate;

    invoke-direct {v2, p1, v1, v3, p0}, Lcom/android/settings/datausage/BillingCyclePreference$setTemplate$1$1;-><init>(Landroidx/compose/runtime/Composer;Landroidx/compose/runtime/MutableState;Lcom/android/settings/datausage/BillingCyclePreference;Landroid/net/NetworkTemplate;)V

    invoke-static {v2, p2, p1, p2, v0}, Lcom/android/settingslib/spa/widget/preference/PreferenceKt;->Preference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;ZLandroidx/compose/runtime/Composer;II)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
