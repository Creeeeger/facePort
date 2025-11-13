.class public Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;
.super Landroid/widget/FrameLayout;
.source "RemoteComposePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$ClickCallbacks;
    }
.end annotation


# static fields
.field private static final blacklist MAX_SUPPORTED_MAJOR_VERSION:I = 0x0

.field private static final blacklist MAX_SUPPORTED_MINOR_VERSION:I = 0x1


# instance fields
.field private blacklist mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private blacklist applyContentBehavior(I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/4 v3, -0x1

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->removeAllViews()V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/ScrollView;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->removeAllViews()V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v2, v4

    new-instance v4, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    invoke-virtual {v4, v0}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v4, v0, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/HorizontalScrollView;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->removeAllViews()V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v2, v4

    new-instance v4, Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/widget/HorizontalScrollView;->setBackgroundColor(I)V

    invoke-virtual {v4, v0}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v4, v0, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    nop

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setBackgroundColor(I)V

    new-instance v2, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic blacklist lambda$addClickListener$0(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$ClickCallbacks;ILjava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$ClickCallbacks;->click(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist addClickListener(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$ClickCallbacks;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v1, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$ClickCallbacks;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->addClickListener(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;)V

    return-void
.end method

.method public blacklist setDebug(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setDebug(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setDebug(Z)V

    :goto_0
    return-void
.end method

.method public blacklist setDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V
    .locals 4

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->canBeDisplayed(IIJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getContentScroll()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->applyContentBehavior(I)V

    goto :goto_0

    :cond_0
    const-string v0, "RemoteComposePlayer"

    const-string v1, "Unsupported document "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V

    :goto_0
    return-void
.end method

.method public blacklist setTheme(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getTheme()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setTheme(I)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    :cond_0
    return-void
.end method
