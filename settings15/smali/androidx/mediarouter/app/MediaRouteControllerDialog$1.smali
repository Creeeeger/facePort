.class public final Landroidx/mediarouter/app/MediaRouteControllerDialog$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRouteInVolumeSliderTouched:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRouteInVolumeSliderTouched:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mHasPendingUpdate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mPendingUpdateAnimationNeeded:Z

    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->update(Z)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->clearGroupListAnimation(Z)V

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroidx/mediarouter/app/MediaRouteControllerDialog$11;

    invoke-direct {v1, p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$11;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
