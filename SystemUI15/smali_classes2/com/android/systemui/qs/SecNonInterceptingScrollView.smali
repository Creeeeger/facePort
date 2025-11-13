.class public final Lcom/android/systemui/qs/SecNonInterceptingScrollView;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final heightAnimating:Lkotlin/jvm/functions/Function0;

.field public final panelSplitHelper$delegate:Lkotlin/Lazy;

.field public final panelTransitionStateListener:Lcom/android/systemui/qs/SecNonInterceptingScrollView$panelTransitionStateListener$1;

.field public qsExpanded:Lkotlin/jvm/functions/Function0;

.field public final scrollRange:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/SecNonInterceptingScrollView;->scrollRange:Lkotlin/jvm/functions/Function0;

    sget-object p2, Lcom/android/systemui/qs/SecNonInterceptingScrollView$panelSplitHelper$2;->INSTANCE:Lcom/android/systemui/qs/SecNonInterceptingScrollView$panelSplitHelper$2;

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/SecNonInterceptingScrollView;->panelSplitHelper$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/qs/SecNonInterceptingScrollView$panelTransitionStateListener$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/qs/SecNonInterceptingScrollView$panelTransitionStateListener$1;-><init>(Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/android/systemui/qs/SecNonInterceptingScrollView;->panelTransitionStateListener:Lcom/android/systemui/qs/SecNonInterceptingScrollView$panelTransitionStateListener$1;

    sget-object p1, Lcom/android/systemui/qs/SecNonInterceptingScrollView$heightAnimating$1;->INSTANCE:Lcom/android/systemui/qs/SecNonInterceptingScrollView$heightAnimating$1;

    iput-object p1, p0, Lcom/android/systemui/qs/SecNonInterceptingScrollView;->heightAnimating:Lkotlin/jvm/functions/Function0;

    sget-object p1, Lcom/android/systemui/qs/SecNonInterceptingScrollView$qsExpanded$1;->INSTANCE:Lcom/android/systemui/qs/SecNonInterceptingScrollView$qsExpanded$1;

    iput-object p1, p0, Lcom/android/systemui/qs/SecNonInterceptingScrollView;->qsExpanded:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final canScroll()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/SecNonInterceptingScrollView;->qsExpanded:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/SecNonInterceptingScrollView;->heightAnimating:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
