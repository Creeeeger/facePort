.class final Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarScaffoldKt$SnackbarScaffold$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field final synthetic $content:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field

.field final synthetic $currentSnackbarData:Landroidx/compose/material3/SnackbarData;

.field final synthetic $snackbarHostState:Landroidx/compose/material3/SnackbarHostState;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/material3/SnackbarData;Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SnackbarHostState;",
            "Landroidx/compose/material3/SnackbarData;",
            "Lkotlin/jvm/functions/Function3;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarScaffoldKt$SnackbarScaffold$2;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarScaffoldKt$SnackbarScaffold$2;->$currentSnackbarData:Landroidx/compose/material3/SnackbarData;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarScaffoldKt$SnackbarScaffold$2;->$content:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/foundation/layout/PaddingValues;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    and-int/lit8 v0, p3, 0xe

    if-nez v0, :cond_1

    move-object v0, p2

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr p3, v0

    :cond_1
    and-int/lit8 p3, p3, 0x5b

    const/16 v0, 0x12

    if-ne p3, v0, :cond_3

    move-object p3, p2

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_2

    :cond_3
    :goto_1
    sget-object p3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object p3, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalSnackbarHostState:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarScaffoldKt$SnackbarScaffold$2;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object p3

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarScaffoldKt$SnackbarScaffold$2$1;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarScaffoldKt$SnackbarScaffold$2;->$content:Lkotlin/jvm/functions/Function3;

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarScaffoldKt$SnackbarScaffold$2$1;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/PaddingValues;)V

    const p1, -0x5a0a2f4a

    invoke-static {p1, p2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p1

    const/16 v0, 0x38

    invoke-static {p3, p1, p2, v0}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarScaffoldKt$SnackbarScaffold$2;->$currentSnackbarData:Landroidx/compose/material3/SnackbarData;

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object p3, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    invoke-virtual {p1, p3}, Landroidx/compose/ui/Modifier$Companion;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const p1, -0x3cc74217

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p1, :cond_5

    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, p1, :cond_6

    :cond_5
    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarScaffoldKt$SnackbarScaffold$2$2$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarScaffoldKt$SnackbarScaffold$2$2$1$1;-><init>(Landroidx/compose/material3/SnackbarData;)V

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6
    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 p1, 0x0

    const/4 v1, 0x7

    invoke-static {p3, p0, p1, v0, v1}, Landroidx/compose/foundation/ClickableKt;->clickable-XHw0xAI$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object p1

    invoke-static {p1, p2, p0}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
