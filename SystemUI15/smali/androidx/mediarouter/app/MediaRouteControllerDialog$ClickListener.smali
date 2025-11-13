.class public final Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V
    .locals 0

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const v1, 0x1020019

    if-eq p1, v1, :cond_6

    const v2, 0x102001a

    if-ne p1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const v1, 0x7f0a0765

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v1, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v1, :cond_9

    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz p1, :cond_9

    iget v2, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    const-wide/16 v2, 0x0

    if-eqz v0, :cond_2

    iget-wide v5, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    const-wide/16 v7, 0x202

    and-long/2addr v5, v7

    cmp-long v5, v5, v2

    if-eqz v5, :cond_2

    iget-object p1, v1, Landroid/support/v4/media/session/MediaControllerCompat;->mImpl:Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi29;

    iget-object p1, p1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerFwk:Landroid/media/session/MediaController;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi29;

    invoke-direct {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi29;-><init>(Landroid/media/session/MediaController$TransportControls;)V

    iget-object p1, v0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsFwk:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->pause()V

    const v4, 0x7f130c86

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    iget-wide v5, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    const-wide/16 v7, 0x1

    and-long/2addr v5, v7

    cmp-long v5, v5, v2

    if-eqz v5, :cond_3

    iget-object p1, v1, Landroid/support/v4/media/session/MediaControllerCompat;->mImpl:Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi29;

    iget-object p1, p1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerFwk:Landroid/media/session/MediaController;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi29;

    invoke-direct {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi29;-><init>(Landroid/media/session/MediaController$TransportControls;)V

    iget-object p1, v0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsFwk:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->stop()V

    const v4, 0x7f130c88

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    iget-wide v5, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    const-wide/16 v7, 0x204

    and-long/2addr v5, v7

    cmp-long p1, v5, v2

    if-eqz p1, :cond_4

    iget-object p1, v1, Landroid/support/v4/media/session/MediaControllerCompat;->mImpl:Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi29;

    iget-object p1, p1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerFwk:Landroid/media/session/MediaController;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi29;

    invoke-direct {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi29;-><init>(Landroid/media/session/MediaController$TransportControls;)V

    iget-object p1, v0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsFwk:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->play()V

    const v4, 0x7f130c87

    :cond_4
    :goto_1
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_9

    if-eqz v4, :cond_9

    const/16 p1, 0x4000

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    const-class v0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v1, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_3

    :cond_5
    const v0, 0x7f0a0763

    if-ne p1, v0, :cond_9

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v2, v2, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v2, v2, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    if-ne p1, v1, :cond_7

    const/4 v0, 0x2

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/mediarouter/media/MediaRouter;->unselect(I)V

    :cond_8
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_9
    :goto_3
    return-void
.end method
