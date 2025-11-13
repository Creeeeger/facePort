.class public final Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final applyConsumer:Ljava/util/function/Consumer;

.field public final currentWindowStateSupplier:Ljava/util/function/Supplier;

.field public final isDebuggableSupplier:Ljava/util/function/BooleanSupplier;

.field public final isExpandedPredicate:Ljava/util/function/Predicate;

.field public final lpChangedSupplier:Ljava/util/function/Supplier;

.field public final lpSupplier:Ljava/util/function/Supplier;


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Predicate;Ljava/util/function/BooleanSupplier;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/shade/NotificationShadeWindowState;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/shade/NotificationShadeWindowState;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;->currentWindowStateSupplier:Ljava/util/function/Supplier;

    iput-object p2, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;->lpChangedSupplier:Ljava/util/function/Supplier;

    iput-object p3, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;->lpSupplier:Ljava/util/function/Supplier;

    iput-object p4, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;->isExpandedPredicate:Ljava/util/function/Predicate;

    iput-object p5, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;->isDebuggableSupplier:Ljava/util/function/BooleanSupplier;

    iput-object p6, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;->applyConsumer:Ljava/util/function/Consumer;

    return-void
.end method
