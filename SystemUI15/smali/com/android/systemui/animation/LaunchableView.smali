.class public interface abstract Lcom/android/systemui/animation/LaunchableView;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public getPaddingForLaunchAnimation()Landroid/graphics/Rect;
    .locals 0

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public onActivityLaunchAnimationEnd()V
    .locals 0

    return-void
.end method

.method public abstract setShouldBlockVisibilityChanges(Z)V
.end method
