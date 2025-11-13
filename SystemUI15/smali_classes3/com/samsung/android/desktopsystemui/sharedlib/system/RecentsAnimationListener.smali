.class public interface abstract Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract onAnimationCanceled(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onAnimationStart(Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public abstract onTasksAppeared([Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;)V
.end method
