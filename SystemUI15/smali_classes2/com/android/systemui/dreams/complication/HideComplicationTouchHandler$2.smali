.class public final Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$2;->this$0:Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$2;->this$0:Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;

    iget-object v0, v0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;->mOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->containsState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "HideComplicationHandler"

    const-string v1, "Hiding complications..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$2;->this$0:Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;

    iget-object v0, v0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;->mVisibilityController:Lcom/android/systemui/complication/Complication$VisibilityController;

    check-cast v0, Lcom/android/systemui/complication/ComplicationLayoutEngine;

    iget-object v1, v0, Lcom/android/systemui/complication/ComplicationLayoutEngine;->mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget v0, v0, Lcom/android/systemui/complication/ComplicationLayoutEngine;->mFadeOutDuration:I

    int-to-long v2, v0

    const/4 v0, 0x0

    invoke-static {v2, v3, v1, v0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(JLandroid/view/View;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$2;->this$0:Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;->mHiddenCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$2;->this$0:Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;

    iput-object v0, p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;->mHiddenCallback:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method
