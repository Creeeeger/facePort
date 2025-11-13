.class Lcom/samsung/android/multiwindow/OverlayHandlerView$1;
.super Ljava/lang/Object;
.source "OverlayHandlerView.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/multiwindow/OverlayHandlerView;->createPopup()V
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

    .line 362
    iput-object p1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$1;->this$0:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDismiss()V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$1;->this$0:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->-$$Nest$mshowImmediately(Lcom/samsung/android/multiwindow/OverlayHandlerView;)V

    .line 366
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$1;->this$0:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->-$$Nest$fgetmMSActions(Lcom/samsung/android/multiwindow/OverlayHandlerView;)Lcom/samsung/android/multiwindow/MultiSplitActions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFreeformMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$1;->this$0:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->scheduleFadeAnimation(Z)V

    .line 369
    :cond_0
    return-void
.end method
