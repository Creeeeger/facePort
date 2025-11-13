.class public final Landroidx/mediarouter/app/MediaRouteControllerDialog$7;
.super Landroid/view/animation/Animation;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic val$endValue:I

.field public final synthetic val$startValue:I

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;IILandroid/view/View;)V
    .locals 0

    iput p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;->val$startValue:I

    iput p3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;->val$endValue:I

    iput-object p4, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    iget p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;->val$startValue:I

    iget v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;->val$endValue:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    sub-int/2addr p2, p1

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;->val$view:Landroid/view/View;

    invoke-static {p0, p2}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->setLayoutHeight(Landroid/view/View;I)V

    return-void
.end method
