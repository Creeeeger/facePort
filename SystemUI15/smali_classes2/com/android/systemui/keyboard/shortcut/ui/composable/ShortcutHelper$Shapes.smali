.class public final Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelper$Shapes;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelper$Shapes;

.field public static final singlePaneCategory:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

.field public static final singlePaneFirstCategory:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field public static final singlePaneLastCategory:Landroidx/compose/foundation/shape/RoundedCornerShape;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelper$Shapes;

    invoke-direct {v0}, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelper$Shapes;-><init>()V

    sput-object v0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelper$Shapes;->INSTANCE:Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelper$Shapes;

    sget-object v0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelper$Dimensions;->INSTANCE:Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelper$Dimensions;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelper$Dimensions;->SinglePaneCategoryCornerRadius:F

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {v0, v0, v2, v2, v1}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-a9UjIt4$default(FFFFI)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelper$Shapes;->singlePaneFirstCategory:Landroidx/compose/foundation/shape/RoundedCornerShape;

    const/4 v1, 0x3

    invoke-static {v2, v2, v0, v0, v1}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-a9UjIt4$default(FFFFI)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelper$Shapes;->singlePaneLastCategory:Landroidx/compose/foundation/shape/RoundedCornerShape;

    sget-object v0, Landroidx/compose/ui/graphics/RectangleShapeKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    sput-object v0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelper$Shapes;->singlePaneCategory:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
