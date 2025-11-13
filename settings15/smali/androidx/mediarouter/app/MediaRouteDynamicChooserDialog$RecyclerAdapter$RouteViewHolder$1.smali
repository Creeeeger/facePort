.class public final Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter$RouteViewHolder$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$2:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter$RouteViewHolder;

.field public final synthetic val$route:Landroidx/mediarouter/media/MediaRouter$RouteInfo;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter$RouteViewHolder;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter$RouteViewHolder$1;->this$2:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter$RouteViewHolder;

    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter$RouteViewHolder$1;->val$route:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter$RouteViewHolder$1;->val$route:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->selectRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V

    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter$RouteViewHolder$1;->this$2:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter$RouteViewHolder;

    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter$RouteViewHolder;->mImageView:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter$RouteViewHolder$1;->this$2:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter$RouteViewHolder;

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter$RouteViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
