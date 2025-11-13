.class public final Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelper$Dimensions;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelper$Dimensions;

.field public static final SinglePaneCategoryCornerRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelper$Dimensions;

    invoke-direct {v0}, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelper$Dimensions;-><init>()V

    sput-object v0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelper$Dimensions;->INSTANCE:Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelper$Dimensions;

    const/16 v0, 0x1c

    int-to-float v0, v0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    sput v0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelper$Dimensions;->SinglePaneCategoryCornerRadius:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
