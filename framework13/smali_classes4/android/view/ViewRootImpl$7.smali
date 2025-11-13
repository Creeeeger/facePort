.class Landroid/view/ViewRootImpl$7;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .line 2459
    iput-object p1, p0, Landroid/view/ViewRootImpl$7;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist toViewScreenState(I)I
    .locals 1
    .param p1, "displayState"    # I

    .line 2517
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2518
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    nop

    .line 2517
    :goto_0
    return v0
.end method


# virtual methods
.method public whitelist onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 2508
    return-void
.end method

.method public whitelist onDisplayChanged(I)V
    .locals 7
    .param p1, "displayId"    # I

    .line 2462
    iget-object v0, p0, Landroid/view/ViewRootImpl$7;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl$7;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 2463
    iget-object v0, p0, Landroid/view/ViewRootImpl$7;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 2464
    .local v0, "oldDisplayState":I
    iget-object v1, p0, Landroid/view/ViewRootImpl$7;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    .line 2465
    .local v1, "newDisplayState":I
    if-eq v0, v1, :cond_2

    .line 2466
    iget-object v2, p0, Landroid/view/ViewRootImpl$7;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v1, v2, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 2467
    iget-object v2, p0, Landroid/view/ViewRootImpl$7;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->pokeDrawLockIfNeeded()V

    .line 2468
    if-eqz v0, :cond_2

    .line 2469
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$7;->toViewScreenState(I)I

    move-result v2

    .line 2470
    .local v2, "oldScreenState":I
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl$7;->toViewScreenState(I)I

    move-result v3

    .line 2471
    .local v3, "newScreenState":I
    if-eq v2, v3, :cond_0

    .line 2472
    iget-object v4, p0, Landroid/view/ViewRootImpl$7;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    .line 2475
    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->-$$Nest$sfgetDEBUG_TRAVERSAL()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/view/ViewRootImpl;->-$$Nest$sfgetDEBUG_TRAVERSAL_PACKAGE_NAME()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/view/ViewRootImpl$7;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2476
    iget-object v4, p0, Landroid/view/ViewRootImpl$7;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Traversal, [4] mView="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/view/ViewRootImpl$7;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2477
    const-string v6, " oldDisplayState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2476
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    :cond_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2484
    :pswitch_0
    iget-object v4, p0, Landroid/view/ViewRootImpl$7;->this$0:Landroid/view/ViewRootImpl;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2485
    iget-object v4, p0, Landroid/view/ViewRootImpl$7;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 2500
    .end local v0    # "oldDisplayState":I
    .end local v1    # "newDisplayState":I
    .end local v2    # "oldScreenState":I
    .end local v3    # "newScreenState":I
    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 2504
    return-void
.end method
