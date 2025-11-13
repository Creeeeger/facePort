.class public final Lcom/android/systemui/qs/SecNonInterceptingScrollView$panelTransitionStateListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/PanelTransitionStateListener;


# instance fields
.field public final synthetic $scrollToOriginRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecNonInterceptingScrollView$panelTransitionStateListener$1;->$scrollToOriginRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPanelTransitionStateChanged(Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;)V
    .locals 1

    const/4 v0, 0x1

    iget p1, p1, Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;->state:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/SecNonInterceptingScrollView$panelTransitionStateListener$1;->$scrollToOriginRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
