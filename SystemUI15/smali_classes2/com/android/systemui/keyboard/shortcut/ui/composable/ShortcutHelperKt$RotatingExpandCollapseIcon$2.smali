.class final Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$RotatingExpandCollapseIcon$2;
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

.field final synthetic $isExpanded:Z


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$RotatingExpandCollapseIcon$2;->$isExpanded:Z

    iput p2, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$RotatingExpandCollapseIcon$2;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-boolean p2, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$RotatingExpandCollapseIcon$2;->$isExpanded:Z

    iget p0, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$RotatingExpandCollapseIcon$2;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p0

    invoke-static {p2, p1, p0}, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt;->access$RotatingExpandCollapseIcon(ZLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
