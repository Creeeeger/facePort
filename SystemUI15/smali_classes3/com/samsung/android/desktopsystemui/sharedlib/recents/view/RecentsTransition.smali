.class public Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/RecentsTransition;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAspectScaleAnimation(Landroid/content/Context;Landroid/os/Handler;ZLcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture;Ljava/lang/Runnable;)Landroid/app/ActivityOptions;
    .locals 1

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/RecentsTransition$1;

    invoke-direct {v0, p4}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/RecentsTransition$1;-><init>(Ljava/lang/Runnable;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture;->getFuture()Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p0, p1, p3, v0, p2}, Landroid/app/ActivityOptions;->makeMultiThumbFutureAspectScaleAnimation(Landroid/content/Context;Landroid/os/Handler;Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static createHardwareBitmap(IILjava/util/function/Consumer;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Canvas;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static drawViewIntoHardwareBitmap(IILandroid/view/View;FI)Landroid/graphics/Bitmap;
    .locals 1

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/RecentsTransition$3;

    invoke-direct {v0, p3, p4, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/RecentsTransition$3;-><init>(FILandroid/view/View;)V

    invoke-static {p0, p1, v0}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/RecentsTransition;->createHardwareBitmap(IILjava/util/function/Consumer;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static wrapStartedListener(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/IRemoteCallback;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/RecentsTransition$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/RecentsTransition$2;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-object v0
.end method
