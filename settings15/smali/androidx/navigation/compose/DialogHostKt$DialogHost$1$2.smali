.class final Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2;
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
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $backStackEntry:Landroidx/navigation/NavBackStackEntry;

.field final synthetic $destination:Landroidx/navigation/compose/DialogNavigator$Destination;

.field final synthetic $dialogNavigator:Landroidx/navigation/compose/DialogNavigator;

.field final synthetic $dialogsToDispose:Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/snapshots/SnapshotStateList;"
        }
    .end annotation
.end field

.field final synthetic $saveableStateHolder:Landroidx/compose/runtime/saveable/SaveableStateHolder;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/compose/DialogNavigator;Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;Landroidx/compose/runtime/snapshots/SnapshotStateList;Landroidx/navigation/compose/DialogNavigator$Destination;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2;->$backStackEntry:Landroidx/navigation/NavBackStackEntry;

    iput-object p2, p0, Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2;->$dialogNavigator:Landroidx/navigation/compose/DialogNavigator;

    iput-object p3, p0, Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2;->$saveableStateHolder:Landroidx/compose/runtime/saveable/SaveableStateHolder;

    iput-object p4, p0, Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2;->$dialogsToDispose:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iput-object p5, p0, Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2;->$destination:Landroidx/navigation/compose/DialogNavigator$Destination;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0x3

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    move-object p2, p1

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p2, p0, Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2;->$backStackEntry:Landroidx/navigation/NavBackStackEntry;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2;->$dialogNavigator:Landroidx/navigation/compose/DialogNavigator;

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2;->$dialogsToDispose:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iget-object v2, p0, Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2;->$backStackEntry:Landroidx/navigation/NavBackStackEntry;

    iget-object v3, p0, Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2;->$dialogNavigator:Landroidx/navigation/compose/DialogNavigator;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_2

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v0, :cond_3

    :cond_2
    new-instance v4, Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2$1$1;

    invoke-direct {v4, v1, v2, v3}, Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2$1$1;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateList;Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/compose/DialogNavigator;)V

    invoke-virtual {p1, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {p2, v4, p1}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    iget-object p2, p0, Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2;->$backStackEntry:Landroidx/navigation/NavBackStackEntry;

    iget-object v0, p0, Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2;->$saveableStateHolder:Landroidx/compose/runtime/saveable/SaveableStateHolder;

    new-instance v1, Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2$2;

    iget-object p0, p0, Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2;->$destination:Landroidx/navigation/compose/DialogNavigator$Destination;

    invoke-direct {v1, p0, p2}, Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2$2;-><init>(Landroidx/navigation/compose/DialogNavigator$Destination;Landroidx/navigation/NavBackStackEntry;)V

    const p0, -0x1da93fb4

    invoke-static {p0, v1, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/16 v1, 0x180

    invoke-static {p2, v0, p0, p1, v1}, Landroidx/navigation/compose/NavBackStackEntryProviderKt;->LocalOwnersProvider(Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/saveable/SaveableStateHolder;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
