.class public final Landroidx/mediarouter/app/MediaRouteControllerDialog$7;
.super Landroid/view/animation/Animation;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic val$endValue:I

.field public final synthetic val$startValue:I

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .locals 0

    iput p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;->val$startValue:I

    iput p3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;->val$endValue:I

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;->val$view:Landroid/view/View;

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
