.class final Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$CategoriesPanelSinglePane$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $category:Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;

.field final synthetic $expandedCategory$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $isExpanded:Z


# direct methods
.method public constructor <init>(ZLcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;",
            "Landroidx/compose/runtime/MutableState;",
            ")V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$CategoriesPanelSinglePane$1$1$1;->$isExpanded:Z

    iput-object p2, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$CategoriesPanelSinglePane$1$1$1;->$category:Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;

    iput-object p3, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$CategoriesPanelSinglePane$1$1$1;->$expandedCategory$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$CategoriesPanelSinglePane$1$1$1;->$expandedCategory$delegate:Landroidx/compose/runtime/MutableState;

    iget-boolean v1, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$CategoriesPanelSinglePane$1$1$1;->$isExpanded:Z

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$CategoriesPanelSinglePane$1$1$1;->$category:Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;

    :goto_0
    invoke-interface {v0, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
