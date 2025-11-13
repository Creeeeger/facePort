.class public final Lcom/android/systemui/qs/SecTileLayout;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final cellHeightSupplier:Ljava/util/function/IntSupplier;

.field public final cellMarginHorizontalSupplier:Ljava/util/function/IntSupplier;

.field public final cellWidthSupplier:Ljava/util/function/IntSupplier;

.field public final columnsSupplier:Ljava/util/function/IntSupplier;

.field public final getLayoutDirectionSupplier:Ljava/util/function/IntSupplier;

.field public final getRowTopFunction:Ljava/util/function/IntFunction;

.field public final records:Ljava/util/ArrayList;

.field public final rowsSupplier:Ljava/util/function/IntSupplier;

.field public final sidePaddingSupplier:Ljava/util/function/IntSupplier;


# direct methods
.method public constructor <init>(Ljava/util/function/IntSupplier;Ljava/util/function/IntSupplier;Ljava/util/function/IntSupplier;Ljava/util/function/IntConsumer;Ljava/util/function/IntSupplier;Ljava/util/function/Supplier;Ljava/util/function/IntSupplier;Ljava/util/function/IntFunction;Ljava/util/ArrayList;Ljava/util/function/IntSupplier;Ljava/util/function/IntSupplier;Ljava/util/function/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntSupplier;",
            "Ljava/util/function/IntSupplier;",
            "Ljava/util/function/IntSupplier;",
            "Ljava/util/function/IntConsumer;",
            "Ljava/util/function/IntSupplier;",
            "Ljava/util/function/Supplier<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/util/function/IntSupplier;",
            "Ljava/util/function/IntFunction<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;",
            ">;",
            "Ljava/util/function/IntSupplier;",
            "Ljava/util/function/IntSupplier;",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/SecTileLayout;->cellHeightSupplier:Ljava/util/function/IntSupplier;

    iput-object p2, p0, Lcom/android/systemui/qs/SecTileLayout;->cellMarginHorizontalSupplier:Ljava/util/function/IntSupplier;

    iput-object p3, p0, Lcom/android/systemui/qs/SecTileLayout;->cellWidthSupplier:Ljava/util/function/IntSupplier;

    iput-object p5, p0, Lcom/android/systemui/qs/SecTileLayout;->columnsSupplier:Ljava/util/function/IntSupplier;

    iput-object p7, p0, Lcom/android/systemui/qs/SecTileLayout;->getLayoutDirectionSupplier:Ljava/util/function/IntSupplier;

    iput-object p8, p0, Lcom/android/systemui/qs/SecTileLayout;->getRowTopFunction:Ljava/util/function/IntFunction;

    iput-object p9, p0, Lcom/android/systemui/qs/SecTileLayout;->records:Ljava/util/ArrayList;

    iput-object p10, p0, Lcom/android/systemui/qs/SecTileLayout;->rowsSupplier:Ljava/util/function/IntSupplier;

    iput-object p11, p0, Lcom/android/systemui/qs/SecTileLayout;->sidePaddingSupplier:Ljava/util/function/IntSupplier;

    sget-object p0, Lcom/android/systemui/qs/SecTileLayout$resourcePicker$2;->INSTANCE:Lcom/android/systemui/qs/SecTileLayout$resourcePicker$2;

    invoke-static {p0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    sget-object p0, Lcom/android/systemui/qs/SecTileLayout$settingsHelper$2;->INSTANCE:Lcom/android/systemui/qs/SecTileLayout$settingsHelper$2;

    invoke-static {p0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    return-void
.end method
