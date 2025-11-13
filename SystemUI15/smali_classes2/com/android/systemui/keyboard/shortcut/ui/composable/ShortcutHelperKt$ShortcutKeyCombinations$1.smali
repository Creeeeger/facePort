.class final Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$ShortcutKeyCombinations$1;
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
.field final synthetic $shortcut:Lcom/android/systemui/keyboard/shortcut/ui/composable/Shortcut;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyboard/shortcut/ui/composable/Shortcut;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$ShortcutKeyCombinations$1;->$shortcut:Lcom/android/systemui/keyboard/shortcut/ui/composable/Shortcut;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Landroidx/compose/foundation/layout/FlowRowScope;

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
    and-int/lit8 v0, p3, 0x5b

    const/16 v1, 0x12

    if-ne v0, v1, :cond_3

    move-object v0, p2

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_3

    :cond_3
    :goto_1
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$ShortcutKeyCombinations$1;->$shortcut:Lcom/android/systemui/keyboard/shortcut/ui/composable/Shortcut;

    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/Shortcut;->commands:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_5

    check-cast v2, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutCommand;

    move-object v4, p2

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    const v5, -0x60dce8f

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-lez v1, :cond_4

    const/16 v1, 0x10

    int-to-float v1, v1

    sget-object v5, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    and-int/lit8 v5, p3, 0xe

    or-int/lit8 v5, v5, 0x30

    invoke-static {p1, v1, v4, v5}, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt;->access$ShortcutOrSeparator-ziNgDLE(Landroidx/compose/foundation/layout/FlowRowScope;FLandroidx/compose/runtime/Composer;I)V

    :cond_4
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v1, 0x8

    invoke-static {v2, v4, v1}, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt;->access$ShortcutCommand(Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutCommand;Landroidx/compose/runtime/Composer;I)V

    move v1, v3

    goto :goto_2

    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_6
    sget-object p0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
