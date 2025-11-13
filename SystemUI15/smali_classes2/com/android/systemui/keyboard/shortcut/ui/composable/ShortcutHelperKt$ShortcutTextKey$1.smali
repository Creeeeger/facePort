.class final Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$ShortcutTextKey$1;
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
.field final synthetic $$changed:I

.field final synthetic $key:Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutKey$Text;

.field final synthetic $this_ShortcutTextKey:Landroidx/compose/foundation/layout/BoxScope;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/BoxScope;Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutKey$Text;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$ShortcutTextKey$1;->$this_ShortcutTextKey:Landroidx/compose/foundation/layout/BoxScope;

    iput-object p2, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$ShortcutTextKey$1;->$key:Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutKey$Text;

    iput p3, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$ShortcutTextKey$1;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p2, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$ShortcutTextKey$1;->$this_ShortcutTextKey:Landroidx/compose/foundation/layout/BoxScope;

    iget-object v0, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$ShortcutTextKey$1;->$key:Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutKey$Text;

    iget p0, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$ShortcutTextKey$1;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p0

    invoke-static {p2, v0, p1, p0}, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt;->access$ShortcutTextKey(Landroidx/compose/foundation/layout/BoxScope;Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutKey$Text;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
