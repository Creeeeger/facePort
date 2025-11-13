.class Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;
.super Ljava/lang/Object;
.source "ActivityTransitionCoordinator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityTransitionCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GhostViewListeners"
.end annotation


# instance fields
.field private greylist-max-o mDecor:Landroid/view/ViewGroup;

.field private greylist-max-o mMatrix:Landroid/graphics/Matrix;

.field private greylist-max-o mParent:Landroid/view/View;

.field private greylist-max-o mView:Landroid/view/View;

.field private greylist-max-o mViewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "decor"    # Landroid/view/ViewGroup;

    .line 1118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1115
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mMatrix:Landroid/graphics/Matrix;

    .line 1119
    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mView:Landroid/view/View;

    .line 1120
    iput-object p2, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mParent:Landroid/view/View;

    .line 1121
    iput-object p3, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mDecor:Landroid/view/ViewGroup;

    .line 1122
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 1123
    return-void
.end method


# virtual methods
.method public greylist-max-o getView()Landroid/view/View;
    .locals 1

    .line 1126
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mView:Landroid/view/View;

    return-object v0
.end method

.method public whitelist onPreDraw()Z
    .locals 4

    .line 1131
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/view/GhostView;->getGhost(Landroid/view/View;)Landroid/view/GhostView;

    move-result-object v0

    .line 1132
    .local v0, "ghostView":Landroid/view/GhostView;
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1135
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mView:Landroid/view/View;

    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mDecor:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mMatrix:Landroid/graphics/Matrix;

    invoke-static {v1, v2, v3}, Landroid/view/GhostView;->calculateMatrix(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V

    .line 1136
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/view/GhostView;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_1

    .line 1133
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->removeListener()V

    .line 1138
    :goto_1
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1152
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 1153
    return-void
.end method

.method public whitelist onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 1157
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->removeListener()V

    .line 1158
    return-void
.end method

.method public greylist-max-o removeListener()V
    .locals 1

    .line 1142
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 1145
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1147
    :goto_0
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mParent:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1148
    return-void
.end method
