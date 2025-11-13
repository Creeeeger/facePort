.class public final synthetic Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/graphics/Region;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1;ILandroid/graphics/Region;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1;

    iput p2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1;

    iget v1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Region;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mGestureDetector:Landroid/view/TwoFingerSwipeGestureDetector;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/TwoFingerSwipeGestureDetector;->setGestureExclusionRegion(Landroid/graphics/Region;)V

    :cond_1
    :goto_0
    return-void
.end method
