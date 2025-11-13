.class public final Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategoryBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final icon:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public final labelResId:I

.field public final subCategories:Ljava/util/List;


# direct methods
.method public constructor <init>(ILandroidx/compose/ui/graphics/vector/ImageVector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategoryBuilder;->labelResId:I

    iput-object p2, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategoryBuilder;->icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategoryBuilder;->subCategories:Ljava/util/List;

    return-void
.end method
