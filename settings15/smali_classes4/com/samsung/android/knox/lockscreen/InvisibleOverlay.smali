.class public Lcom/samsung/android/knox/lockscreen/InvisibleOverlay;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final TAG:Ljava/lang/String; = "LSO_InvisibleOverlay"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLSOView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "LSO_InvisibleOverlay"

    const-string v1, "InvisibleOverlay(context)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/InvisibleOverlay;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/InvisibleOverlay;->mLSOView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "LSO_InvisibleOverlay"

    const-string v0, "InvisibleOverlay(context,attrs)"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/InvisibleOverlay;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

    invoke-direct {p2, p1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/knox/lockscreen/InvisibleOverlay;->mLSOView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public changeVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/InvisibleOverlay;->mLSOView:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final getFrameLayout()Landroid/widget/FrameLayout;
    .locals 5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-eqz p0, :cond_1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    const-string v4, "LSO_InvisibleOverlay"

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getFrameLayout() : Attaching LockscreenOverlayView to "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    check-cast v1, Landroid/widget/FrameLayout;

    move-object p0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getFrameLayout() : Cannot attach FrameLayout. find parent view "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/InvisibleOverlay;->getFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    const-string v1, "LSO_InvisibleOverlay"

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/InvisibleOverlay;->mLSOView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "onAttachedToWindow() ignore Exception: "

    invoke-static {v1, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/InvisibleOverlay;->mLSOView:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_0
    const-string/jumbo p0, "onAttachedToWindow() : cannot find parentview for LSO. "

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
