.class public final Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    new-instance p1, Lcom/android/systemui/statusbar/phone/BoundsPair;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;

    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->startSideContent:Landroid/view/View;

    invoke-static {p2}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;

    iget-object p3, p3, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->endSideContent:Landroid/view/View;

    invoke-static {p3}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/android/systemui/statusbar/phone/BoundsPair;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;

    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->previousBounds:Lcom/android/systemui/statusbar/phone/BoundsPair;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->previousBounds:Lcom/android/systemui/statusbar/phone/BoundsPair;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->changeListeners:Lcom/android/systemui/util/ListenerSet;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$onStatusBarViewInitialized$listener$1;

    iget-object p2, p2, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$onStatusBarViewInitialized$listener$1;->this$0:Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;

    iget-object p2, p2, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;->_statusBarBounds:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
