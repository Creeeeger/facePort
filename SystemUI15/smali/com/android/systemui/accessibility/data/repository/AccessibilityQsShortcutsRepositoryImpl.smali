.class public final Lcom/android/systemui/accessibility/data/repository/AccessibilityQsShortcutsRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/accessibility/data/repository/AccessibilityQsShortcutsRepository;


# static fields
.field public static final TILE_SPEC_TO_COMPONENT_MAPPING:Ljava/util/Map;


# instance fields
.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final manager:Landroid/view/accessibility/AccessibilityManager;

.field public final userA11yQsShortcutsRepositories:Landroid/util/SparseArray;

.field public final userA11yQsShortcutsRepositoryFactory:Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/systemui/accessibility/data/repository/AccessibilityQsShortcutsRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/accessibility/data/repository/AccessibilityQsShortcutsRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v1, Lkotlin/Pair;

    const-string v2, "ColorCorrection"

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v2, Lkotlin/Pair;

    const-string v3, "ColorInversion"

    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ONE_HANDED_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v3, Lkotlin/Pair;

    const-string v4, "onehanded"

    invoke-direct {v3, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->REDUCE_BRIGHT_COLORS_TILE_SERVICE_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v4, Lkotlin/Pair;

    const-string v5, "ReduceBrightColors"

    invoke-direct {v4, v5, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->FONT_SIZE_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v5, Lkotlin/Pair;

    const-string v6, "font_scaling"

    invoke-direct {v5, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ACCESSIBILITY_HEARING_AIDS_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v6, Lkotlin/Pair;

    const-string v7, "hearing_devices"

    invoke-direct {v6, v7, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v1 .. v6}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository$Factory;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-void
.end method
