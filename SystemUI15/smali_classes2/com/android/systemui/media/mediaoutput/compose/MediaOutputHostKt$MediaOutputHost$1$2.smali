.class final Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $backStackEntry$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $dismissCallback:Lcom/android/systemui/media/mediaoutput/compose/common/DismissCallback;

.field final synthetic $feature:Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

.field final synthetic $isSupportMultipleMediaSession$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $navController:Landroidx/navigation/NavHostController;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/State;Landroidx/navigation/NavHostController;Lcom/android/systemui/media/mediaoutput/compose/common/Feature;Lcom/android/systemui/media/mediaoutput/compose/common/DismissCallback;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State;",
            "Landroidx/navigation/NavHostController;",
            "Lcom/android/systemui/media/mediaoutput/compose/common/Feature;",
            "Lcom/android/systemui/media/mediaoutput/compose/common/DismissCallback;",
            "Landroidx/compose/runtime/State;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2;->$backStackEntry$delegate:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2;->$navController:Landroidx/navigation/NavHostController;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2;->$feature:Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2;->$dismissCallback:Lcom/android/systemui/media/mediaoutput/compose/common/DismissCallback;

    iput-object p5, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2;->$isSupportMultipleMediaSession$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0xb

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_1

    :cond_1
    :goto_0
    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState;->Companion:Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$Companion;->rememberDismissState(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/State;

    move-result-object v2

    move-object v14, v1

    check-cast v14, Landroidx/compose/runtime/ComposerImpl;

    const v1, 0x4ba70eec    # 2.1896664E7f

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v4, 0x0

    if-ne v1, v3, :cond_2

    sget-object v1, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v4, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    check-cast v1, Landroidx/compose/runtime/MutableState;

    const/4 v5, 0x0

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    new-instance v6, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$1;

    iget-object v7, v0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2;->$navController:Landroidx/navigation/NavHostController;

    iget-object v8, v0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2;->$dismissCallback:Lcom/android/systemui/media/mediaoutput/compose/common/DismissCallback;

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$1;-><init>(Landroidx/navigation/NavHostController;Lcom/android/systemui/media/mediaoutput/compose/common/DismissCallback;)V

    invoke-static {v2, v6, v14, v5, v5}, Landroidx/activity/compose/BackHandlerKt;->BackHandler(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    iget-object v2, v0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2;->$backStackEntry$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    const v6, 0x4ba70ff5    # 2.1897194E7f

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v6, v0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2;->$backStackEntry$delegate:Landroidx/compose/runtime/State;

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    iget-object v7, v0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2;->$backStackEntry$delegate:Landroidx/compose/runtime/State;

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v6, :cond_3

    if-ne v8, v3, :cond_4

    :cond_3
    new-instance v8, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$2$1;

    invoke-direct {v8, v7, v1, v4}, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$2$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v14, v2, v8}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v3, v0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2;->$navController:Landroidx/navigation/NavHostController;

    sget-object v1, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->Companion:Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Companion;

    iget-object v2, v0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2;->$feature:Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Companion;->getSelectedScreen(Lcom/android/systemui/media/mediaoutput/compose/common/Feature;)Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$3;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$3;

    sget-object v9, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$4;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$4;

    new-instance v13, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5;

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2;->$navController:Landroidx/navigation/NavHostController;

    iget-object v2, v0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2;->$isSupportMultipleMediaSession$delegate:Landroidx/compose/runtime/State;

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2;->$dismissCallback:Lcom/android/systemui/media/mediaoutput/compose/common/DismissCallback;

    invoke-direct {v13, v1, v2, v0}, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5;-><init>(Landroidx/navigation/NavHostController;Landroidx/compose/runtime/State;Lcom/android/systemui/media/mediaoutput/compose/common/DismissCallback;)V

    const/16 v16, 0x0

    const/16 v17, 0x39c

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v15, 0x1b0008

    invoke-static/range {v3 .. v17}, Landroidx/navigation/compose/NavHostKt;->NavHost(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
