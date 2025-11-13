.class Lcom/samsung/android/multiwindow/OverlayHandlerView$3;
.super Ljava/lang/Object;
.source "OverlayHandlerView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/multiwindow/OverlayHandlerView;->schedulePopupAffordance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/multiwindow/OverlayHandlerView;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/multiwindow/OverlayHandlerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/multiwindow/OverlayHandlerView;

    .line 557
    iput-object p1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$3;->this$0:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onGlobalLayout$0$com-samsung-android-multiwindow-OverlayHandlerView$3()V
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$3;->this$0:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->-$$Nest$mdoPopupAffordance(Lcom/samsung/android/multiwindow/OverlayHandlerView;)V

    return-void
.end method

.method public whitelist onGlobalLayout()V
    .locals 4

    .line 560
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$3;->this$0:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->-$$Nest$fgetmAnchor(Lcom/samsung/android/multiwindow/OverlayHandlerView;)Lcom/samsung/android/multiwindow/MultiSplitHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 561
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$3;->this$0:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    new-instance v1, Lcom/samsung/android/multiwindow/OverlayHandlerView$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView$3$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/multiwindow/OverlayHandlerView$3;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 562
    return-void
.end method
