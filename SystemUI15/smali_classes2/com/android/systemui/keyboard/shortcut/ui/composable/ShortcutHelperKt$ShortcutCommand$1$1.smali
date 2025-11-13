.class final Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$ShortcutCommand$1$1;
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
.field final synthetic $key:Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutKey;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutKey;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$ShortcutCommand$1$1;->$key:Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutKey;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroidx/compose/foundation/layout/BoxScope;

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

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$ShortcutCommand$1$1;->$key:Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutKey;

    instance-of v1, v0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutKey$Text;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x41f83735

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$ShortcutCommand$1$1;->$key:Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutKey;

    check-cast p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutKey$Text;

    and-int/lit8 p3, p3, 0xe

    invoke-static {p1, p0, p2, p3}, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt;->access$ShortcutTextKey(Landroidx/compose/foundation/layout/BoxScope;Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutKey$Text;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_2

    :cond_4
    instance-of v0, v0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutKey$Icon;

    if-eqz v0, :cond_5

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x41f8378c

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$ShortcutCommand$1$1;->$key:Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutKey;

    check-cast p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutKey$Icon;

    and-int/lit8 p3, p3, 0xe

    invoke-static {p1, p0, p2, p3}, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt;->access$ShortcutIconKey(Landroidx/compose/foundation/layout/BoxScope;Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutKey$Icon;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_2

    :cond_5
    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const p0, 0x41f837ae

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
