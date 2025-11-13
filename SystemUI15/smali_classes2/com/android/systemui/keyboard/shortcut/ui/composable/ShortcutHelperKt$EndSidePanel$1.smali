.class final Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$EndSidePanel$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $category:Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$EndSidePanel$1;->$category:Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$EndSidePanel$1;->$category:Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;

    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;->subCategories:Ljava/util/List;

    sget-object v0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$EndSidePanel$1$1;->INSTANCE:Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$EndSidePanel$1$1;

    sget-object v1, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$EndSidePanel$1$invoke$$inlined$items$default$1;->INSTANCE:Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$EndSidePanel$1$invoke$$inlined$items$default$1;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v0, :cond_0

    new-instance v3, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$EndSidePanel$1$invoke$$inlined$items$default$2;

    invoke-direct {v3, v0, p0}, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$EndSidePanel$1$invoke$$inlined$items$default$2;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-instance v0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$EndSidePanel$1$invoke$$inlined$items$default$3;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$EndSidePanel$1$invoke$$inlined$items$default$3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    new-instance v1, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$EndSidePanel$1$invoke$$inlined$items$default$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$EndSidePanel$1$invoke$$inlined$items$default$4;-><init>(Ljava/util/List;)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v4, -0x25b7f321

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/compose/foundation/lazy/LazyListInterval;

    invoke-direct {v1, v3, v0, p0}, Landroidx/compose/foundation/lazy/LazyListInterval;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    iget-object p0, p1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->intervals:Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    invoke-virtual {p0, v2, v1}, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->addInterval(ILandroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
