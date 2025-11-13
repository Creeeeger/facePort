.class public final synthetic Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda4;->$r8$classId:I

    iget-object p0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v0, p0

    check-cast v0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;

    move-object v1, p1

    check-cast v1, Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "vc#captureViewPropertiesBg"

    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-wide p0, v1, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->elapsedRealtimeNanos:J

    iget v2, v0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mFrameIndexBg:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mFrameIndexBg:I

    iget-object v3, v0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->this$0:Lcom/android/app/viewcapture/ViewCapture;

    iget v3, v3, Lcom/android/app/viewcapture/ViewCapture;->mMemorySize:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    iput v4, v0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mFrameIndexBg:I

    :cond_0
    iget-object v2, v0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mFrameTimesNanosBg:[J

    iget v3, v0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mFrameIndexBg:I

    aput-wide p0, v2, v3

    iget-object p0, v0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mNodesBg:[Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    aget-object p0, p0, v3

    const/4 v2, 0x0

    move-object p1, v1

    move-object v3, v2

    move-object v5, v3

    :goto_0
    if-nez p0, :cond_1

    new-instance v6, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    invoke-direct {v6}, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;-><init>()V

    move-object v10, v6

    move-object v6, p0

    move-object p0, v10

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    iput-object v2, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    :goto_1
    iget v7, p1, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->childCount:I

    if-gez v7, :cond_5

    iget-object v7, p1, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->view:Landroid/view/View;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    iget v8, v0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mFrameIndexBg:I

    if-nez v8, :cond_2

    iget-object v8, v0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->this$0:Lcom/android/app/viewcapture/ViewCapture;

    iget v8, v8, Lcom/android/app/viewcapture/ViewCapture;->mMemorySize:I

    :goto_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    :cond_2
    goto :goto_2

    :goto_3
    iget-object v9, v0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mNodesBg:[Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    aget-object v8, v9, v8

    :goto_4
    if-eqz v8, :cond_3

    iget v9, v8, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->hashCode:I

    if-eq v9, v7, :cond_3

    iget-object v8, v8, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    goto :goto_4

    :cond_3
    if-eqz v8, :cond_4

    iget v7, v8, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->childCount:I

    goto :goto_5

    :cond_4
    move v7, v4

    :goto_5
    iput v7, p1, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->childCount:I

    goto :goto_6

    :cond_5
    move-object v8, v2

    :goto_6
    iget v7, p1, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->childCount:I

    iput v7, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->childCount:I

    iget-object v7, p1, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->view:Landroid/view/View;

    iput-object v2, p1, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->view:Landroid/view/View;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    iput-object v9, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->clazz:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v9

    iput v9, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->hashCode:I

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v9

    iput v9, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->id:I

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->left:I

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->top:I

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v9

    iput v9, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->right:I

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    iput v9, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->bottom:I

    invoke-virtual {v7}, Landroid/view/View;->getScrollX()I

    move-result v9

    iput v9, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->scrollX:I

    invoke-virtual {v7}, Landroid/view/View;->getScrollY()I

    move-result v9

    iput v9, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->scrollY:I

    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v9

    iput v9, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->translateX:F

    invoke-virtual {v7}, Landroid/view/View;->getTranslationY()F

    move-result v9

    iput v9, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->translateY:F

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v9

    iput v9, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->scaleX:F

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v9

    iput v9, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->scaleY:F

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v9

    iput v9, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->alpha:F

    invoke-virtual {v7}, Landroid/view/View;->getElevation()F

    move-result v9

    iput v9, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->elevation:F

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v9

    iput v9, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->visibility:I

    invoke-virtual {v7}, Landroid/view/View;->willNotDraw()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->willNotDraw:Z

    if-nez v3, :cond_6

    move-object v3, p0

    goto :goto_7

    :cond_6
    iput-object p0, v5, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    :goto_7
    if-eqz v8, :cond_8

    iget v5, v8, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->childCount:I

    :goto_8
    if-lez v5, :cond_8

    iget-object v8, v8, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    add-int/lit8 v5, v5, -0x1

    iget v7, v8, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->childCount:I

    add-int/2addr v5, v7

    if-nez v6, :cond_7

    new-instance v7, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    invoke-direct {v7}, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;-><init>()V

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    goto :goto_9

    :cond_7
    iget-object v7, v6, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    iput-object v2, v6, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    :goto_9
    iget-object v9, v8, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->clazz:Ljava/lang/Class;

    iput-object v9, v6, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->clazz:Ljava/lang/Class;

    iget v9, v8, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->hashCode:I

    iput v9, v6, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->hashCode:I

    iget v9, v8, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->childCount:I

    iput v9, v6, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->childCount:I

    iget v9, v8, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->id:I

    iput v9, v6, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->id:I

    iget v9, v8, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->left:I

    iput v9, v6, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->left:I

    iget v9, v8, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->top:I

    iput v9, v6, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->top:I

    iget v9, v8, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->right:I

    iput v9, v6, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->right:I

    iget v9, v8, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->bottom:I

    iput v9, v6, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->bottom:I

    iget v9, v8, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->scrollX:I

    iput v9, v6, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->scrollX:I

    iget v9, v8, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->scrollY:I

    iput v9, v6, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->scrollY:I

    iget v9, v8, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->scaleX:F

    iput v9, v6, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->scaleX:F

    iget v9, v8, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->scaleY:F

    iput v9, v6, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->scaleY:F

    iget v9, v8, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->translateX:F

    iput v9, v6, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->translateX:F

    iget v9, v8, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->translateY:F

    iput v9, v6, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->translateY:F

    iget v9, v8, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->alpha:F

    iput v9, v6, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->alpha:F

    iget v9, v8, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->visibility:I

    iput v9, v6, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->visibility:I

    iget-boolean v9, v8, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->willNotDraw:Z

    iput-boolean v9, v6, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->willNotDraw:Z

    iget-boolean v9, v8, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->clipChildren:Z

    iput-boolean v9, v6, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->clipChildren:Z

    iget v9, v8, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->elevation:F

    iput v9, v6, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->elevation:F

    iput-object v6, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    move-object p0, v6

    move-object v6, v7

    goto :goto_8

    :cond_8
    move-object v5, p0

    move-object p0, v6

    iget-object v6, p1, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    if-nez v6, :cond_9

    sget-object p0, Lcom/android/app/viewcapture/ViewCapture;->MAIN_EXECUTOR:Lcom/android/app/viewcapture/LooperExecutor;

    new-instance v2, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda8;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v1, p1, v4}, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;Lcom/android/app/viewcapture/ViewCapture$ViewRef;Lcom/android/app/viewcapture/ViewCapture$ViewRef;I)V

    invoke-virtual {p0, v2}, Lcom/android/app/viewcapture/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, v0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mNodesBg:[Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    iget p1, v0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mFrameIndexBg:I

    aput-object v3, p0, p1

    iget-object p0, v0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->this$0:Lcom/android/app/viewcapture/ViewCapture;

    iget-object p1, v0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_9
    move-object p1, v6

    goto/16 :goto_0

    :pswitch_0
    check-cast p0, Landroid/view/View;

    check-cast p1, Lcom/android/app/viewcapture/ViewCapture$WindowListener;

    iget-object v0, p1, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mRoot:Landroid/view/View;

    if-ne p0, v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    const/4 p0, 0x0

    iput-object p0, p1, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mRoot:Landroid/view/View;

    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
