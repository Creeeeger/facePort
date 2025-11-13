.class public final Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;)V
    .locals 0

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$3;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$3;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$3;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x2

    invoke-static {p1}, Landroidx/mediarouter/media/MediaRouter;->unselect(I)V

    :cond_0
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$3;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method
