.class public final Landroidx/mediarouter/app/MediaRouteControllerDialog$9;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;


# direct methods
.method public synthetic constructor <init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;I)V
    .locals 0

    iput p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$9;->$r8$classId:I

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$9;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onAnimationEnd$androidx$mediarouter$app$MediaRouteControllerDialog$9(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method private final onAnimationRepeat$androidx$mediarouter$app$MediaRouteControllerDialog$12(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method private final onAnimationRepeat$androidx$mediarouter$app$MediaRouteControllerDialog$9(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method private final onAnimationStart$androidx$mediarouter$app$MediaRouteControllerDialog$12(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$9;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$9;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->finishAnimation(Z)V

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    iget p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$9;->$r8$classId:I

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4

    iget p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$9;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$9;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    iget-object v0, p1, Landroidx/mediarouter/app/OverlayListView;->mOverlayObjects:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;

    iget-boolean v2, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mIsAnimationStarted:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/widget/ListView;->getDrawingTime()J

    move-result-wide v2

    iput-wide v2, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mStartTime:J

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mIsAnimationStarted:Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$9;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupListFadeInAnimation:Landroidx/mediarouter/app/MediaRouteControllerDialog$1;

    iget p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupListAnimationDurationMs:I

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
