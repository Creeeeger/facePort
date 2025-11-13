.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda9;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda9;->f$0:Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda9;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda9;->f$0:Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Lcom/android/wm/shell/bubbles/BubbleController;->removeBubble(ILjava/lang/String;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleBarViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$9;

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/bubbles/BubbleController$9;->expansionChanged(Z)V

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda9;->f$0:Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleBarViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$9;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/bubbles/BubbleController$9;->expansionChanged(Z)V

    :cond_2
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleStateListener:Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$1;

    if-eqz v1, :cond_5

    const-string v1, "Overflow"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v4, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleBarLocation:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    iget-object v5, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mDeviceConfig:Lcom/android/wm/shell/bubbles/DeviceConfig;

    iget-boolean v5, v5, Lcom/android/wm/shell/bubbles/DeviceConfig;->isRtl:Z

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;->DEFAULT:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    if-ne v4, v6, :cond_3

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;->LEFT:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    if-ne v4, v5, :cond_4

    const/4 v2, 0x1

    :cond_4
    move v5, v2

    :goto_1
    invoke-virtual {v3, v1, v5, p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getBubbleBarExpandedViewBounds(Landroid/graphics/Rect;ZZ)V

    new-instance p0, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;

    invoke-direct {p0}, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;-><init>()V

    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {v2, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->expandedViewDropTargetSize:Landroid/graphics/Point;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleStateListener:Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$1;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$1;->onBubbleStateChange(Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
