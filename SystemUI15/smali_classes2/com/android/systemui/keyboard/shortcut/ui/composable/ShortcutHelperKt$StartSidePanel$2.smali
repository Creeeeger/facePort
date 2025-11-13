.class final Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$StartSidePanel$2;
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

.field final synthetic $categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onCategoryClicked:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $onKeyboardSettingsClicked:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $selectedCategory:Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Modifier;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;Lkotlin/jvm/functions/Function1;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Ljava/util/List<",
            "Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;",
            ">;",
            "Lkotlin/jvm/functions/Function0;",
            "Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;",
            "Lkotlin/jvm/functions/Function1;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$StartSidePanel$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$StartSidePanel$2;->$categories:Ljava/util/List;

    iput-object p3, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$StartSidePanel$2;->$onKeyboardSettingsClicked:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$StartSidePanel$2;->$selectedCategory:Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;

    iput-object p5, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$StartSidePanel$2;->$onCategoryClicked:Lkotlin/jvm/functions/Function1;

    iput p6, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$StartSidePanel$2;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$StartSidePanel$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$StartSidePanel$2;->$categories:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$StartSidePanel$2;->$onKeyboardSettingsClicked:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$StartSidePanel$2;->$selectedCategory:Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;

    iget-object v4, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$StartSidePanel$2;->$onCategoryClicked:Lkotlin/jvm/functions/Function1;

    iget p0, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt$StartSidePanel$2;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperKt;->StartSidePanel(Landroidx/compose/ui/Modifier;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
