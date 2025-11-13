.class Lcom/android/internal/policy/DecorView$9;
.super Landroid/database/ContentObserver;
.source "DecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/DecorView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/policy/DecorView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/policy/DecorView;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/policy/DecorView;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2800
    iput-object p1, p0, Lcom/android/internal/policy/DecorView$9;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .line 2803
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$9;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$9;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getMultiSplitActions()Lcom/samsung/android/multiwindow/MultiSplitActions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isEmbeddedMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2804
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$9;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmMultiSplitHandler(Lcom/android/internal/policy/DecorView;)Lcom/samsung/android/multiwindow/MultiSplitHandler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 2806
    .local v0, "exist":Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/DecorView$9;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->isMultiSplitHandlerRequested()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2807
    iget-object v3, p0, Lcom/android/internal/policy/DecorView$9;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->addMultiSplitHandler()V

    goto :goto_1

    .line 2809
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/DecorView$9;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->removeMultiSplitHandler()V

    .line 2811
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/DecorView$9;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmMultiSplitHandler(Lcom/android/internal/policy/DecorView;)Lcom/samsung/android/multiwindow/MultiSplitHandler;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    if-eq v0, v1, :cond_4

    .line 2812
    iget-object v1, p0, Lcom/android/internal/policy/DecorView$9;->this$0:Lcom/android/internal/policy/DecorView;

    const-string/jumbo v2, "settings_option"

    invoke-static {v1, v2}, Lcom/android/internal/policy/DecorView;->-$$Nest$mrequestInvalidateRenderNode(Lcom/android/internal/policy/DecorView;Ljava/lang/String;)V

    .line 2816
    .end local v0    # "exist":Z
    :cond_4
    return-void
.end method
