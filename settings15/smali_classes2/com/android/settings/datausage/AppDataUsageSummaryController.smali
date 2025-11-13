.class public final Lcom/android/settings/datausage/AppDataUsageSummaryController;
.super Lcom/android/settings/spa/preference/ComposePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\r\u0010\u0012\u001a\u00020\u0013H\u0017\u00a2\u0006\u0002\u0010\u0014J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u000e\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u000cR\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019\u00b2\u0006\n\u0010\u001a\u001a\u00020\tX\u008a\u0084\u0002\u00b2\u0006\n\u0010\u001b\u001a\u00020\tX\u008a\u0084\u0002\u00b2\u0006\n\u0010\u001c\u001a\u00020\tX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/android/settings/datausage/AppDataUsageSummaryController;",
        "Lcom/android/settings/spa/preference/ComposePreferenceController;",
        "context",
        "Landroid/content/Context;",
        "preferenceKey",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "backgroundUsageFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;",
        "dataFlow",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;",
        "dataUsageFormatter",
        "Lcom/android/settings/datausage/lib/DataUsageFormatter;",
        "emptyDataUsage",
        "foregroundUsageFlow",
        "totalUsageFlow",
        "Content",
        "",
        "(Landroidx/compose/runtime/Composer;I)V",
        "getAvailabilityStatus",
        "",
        "update",
        "data",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core",
        "totalUsage",
        "foregroundUsage",
        "backgroundUsage"
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


# instance fields
.field private final backgroundUsageFlow:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow;"
        }
    .end annotation
.end field

.field private final dataFlow:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow;"
        }
    .end annotation
.end field

.field private final dataUsageFormatter:Lcom/android/settings/datausage/lib/DataUsageFormatter;

.field private final emptyDataUsage:Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;

.field private final foregroundUsageFlow:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow;"
        }
    .end annotation
.end field

.field private final totalUsageFlow:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settings/spa/preference/ComposePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p2, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;->AllZero:Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController;->dataFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v0, Lcom/android/settings/datausage/lib/DataUsageFormatter;

    invoke-direct {v0, p1}, Lcom/android/settings/datausage/lib/DataUsageFormatter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController;->dataUsageFormatter:Lcom/android/settings/datausage/lib/DataUsageFormatter;

    new-instance v0, Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;

    invoke-static {p1}, Lcom/android/settingslib/spaprivileged/framework/compose/StringResourcesKt;->getPlaceholder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/android/settingslib/spaprivileged/framework/compose/StringResourcesKt;->getPlaceholder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController;->emptyDataUsage:Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;

    new-instance p1, Lcom/android/settings/datausage/AppDataUsageSummaryController$special$$inlined$map$1;

    const/4 v0, 0x0

    invoke-direct {p1, p2, p0, v0}, Lcom/android/settings/datausage/AppDataUsageSummaryController$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;Lcom/android/settings/datausage/AppDataUsageSummaryController;I)V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController;->totalUsageFlow:Lkotlinx/coroutines/flow/Flow;

    new-instance p1, Lcom/android/settings/datausage/AppDataUsageSummaryController$special$$inlined$map$1;

    const/4 v0, 0x1

    invoke-direct {p1, p2, p0, v0}, Lcom/android/settings/datausage/AppDataUsageSummaryController$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;Lcom/android/settings/datausage/AppDataUsageSummaryController;I)V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController;->foregroundUsageFlow:Lkotlinx/coroutines/flow/Flow;

    new-instance p1, Lcom/android/settings/datausage/AppDataUsageSummaryController$special$$inlined$map$1;

    const/4 v0, 0x2

    invoke-direct {p1, p2, p0, v0}, Lcom/android/settings/datausage/AppDataUsageSummaryController$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;Lcom/android/settings/datausage/AppDataUsageSummaryController;I)V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController;->backgroundUsageFlow:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method

.method private static final Content$lambda$6$lambda$3(Landroidx/compose/runtime/State;)Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State;",
            ")",
            "Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;"
        }
    .end annotation

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;

    return-object p0
.end method

.method private static final Content$lambda$6$lambda$4(Landroidx/compose/runtime/State;)Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State;",
            ")",
            "Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;"
        }
    .end annotation

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;

    return-object p0
.end method

.method private static final Content$lambda$6$lambda$5(Landroidx/compose/runtime/State;)Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State;",
            ")",
            "Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;"
        }
    .end annotation

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;

    return-object p0
.end method

.method public static final synthetic access$Content$lambda$6$lambda$3(Landroidx/compose/runtime/State;)Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/datausage/AppDataUsageSummaryController;->Content$lambda$6$lambda$3(Landroidx/compose/runtime/State;)Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$Content$lambda$6$lambda$4(Landroidx/compose/runtime/State;)Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/datausage/AppDataUsageSummaryController;->Content$lambda$6$lambda$4(Landroidx/compose/runtime/State;)Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$Content$lambda$6$lambda$5(Landroidx/compose/runtime/State;)Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/datausage/AppDataUsageSummaryController;->Content$lambda$6$lambda$5(Landroidx/compose/runtime/State;)Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDataUsageFormatter$p(Lcom/android/settings/datausage/AppDataUsageSummaryController;)Lcom/android/settings/datausage/lib/DataUsageFormatter;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController;->dataUsageFormatter:Lcom/android/settings/datausage/lib/DataUsageFormatter;

    return-object p0
.end method


# virtual methods
.method public Content(Landroidx/compose/runtime/Composer;I)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v3, -0x21a7b083

    invoke-virtual {p1, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->Top:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v4, v5, p1, v2}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v4

    iget v5, p1, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {p1, v3}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v8, p1, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v8, v8, Landroidx/compose/runtime/Applier;

    if-eqz v8, :cond_4

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v8, p1, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v8, :cond_0

    invoke-virtual {p1, v7}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_0
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v4, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v6, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v6, p1, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v6, :cond_1

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    invoke-static {v5, p1, v5, v4}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_2
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController;->totalUsageFlow:Lkotlinx/coroutines/flow/Flow;

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController;->emptyDataUsage:Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;

    const/16 v5, 0x8

    invoke-static {v3, v4, p1, v5}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController;->foregroundUsageFlow:Lkotlinx/coroutines/flow/Flow;

    iget-object v6, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController;->emptyDataUsage:Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;

    invoke-static {v4, v6, p1, v5}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController;->backgroundUsageFlow:Lkotlinx/coroutines/flow/Flow;

    iget-object v7, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController;->emptyDataUsage:Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;

    invoke-static {v6, v7, p1, v5}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    new-instance v6, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1;

    invoke-direct {v6, p1, v3, v2}, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1;-><init>(Landroidx/compose/runtime/Composer;Landroidx/compose/runtime/MutableState;I)V

    invoke-static {v6, v2, p1, v2, v1}, Lcom/android/settingslib/spa/widget/preference/PreferenceKt;->Preference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;ZLandroidx/compose/runtime/Composer;II)V

    new-instance v3, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1;

    invoke-direct {v3, p1, v4, v0}, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1;-><init>(Landroidx/compose/runtime/Composer;Landroidx/compose/runtime/MutableState;I)V

    invoke-static {v3, v2, p1, v2, v1}, Lcom/android/settingslib/spa/widget/preference/PreferenceKt;->Preference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;ZLandroidx/compose/runtime/Composer;II)V

    new-instance v3, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1;

    invoke-direct {v3, p1, v5, v1}, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$1;-><init>(Landroidx/compose/runtime/Composer;Landroidx/compose/runtime/MutableState;I)V

    invoke-static {v3, v2, p1, v2, v1}, Lcom/android/settingslib/spa/widget/preference/PreferenceKt;->Preference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;ZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$2;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$2;-><init>(Lcom/android/settings/datausage/AppDataUsageSummaryController;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void

    :cond_4
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 p0, 0x0

    throw p0
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

.method public final update(Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController;->dataFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast p0, Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
