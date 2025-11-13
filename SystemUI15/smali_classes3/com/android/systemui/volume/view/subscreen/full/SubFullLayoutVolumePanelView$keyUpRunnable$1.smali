.class public final Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$keyUpRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$keyUpRunnable$1;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$keyUpRunnable$1;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isKeyDownAnimating:Z

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->keyUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v2, :cond_1

    move-object v2, v1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->keyDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p0, :cond_2

    move-object p0, v1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_4

    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v1, p0

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    :cond_4
    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {v2, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method
