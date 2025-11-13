.class Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper$2;
.super Landroid/view/IRecentsAnimationRunner$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;

.field final synthetic val$animationHandler:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper$2;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;

    iput-object p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper$2;->val$animationHandler:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;

    invoke-direct {p0}, Landroid/view/IRecentsAnimationRunner$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCanceled([I[Landroid/window/TaskSnapshot;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper$2;->val$animationHandler:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;

    invoke-static {p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/ThumbnailData;->wrap([I[Landroid/window/TaskSnapshot;)Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;->onAnimationCanceled(Ljava/util/HashMap;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/IRecentsAnimationController;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .locals 6

    new-instance v1, Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;

    invoke-direct {v1, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;-><init>(Landroid/view/IRecentsAnimationController;)V

    invoke-static {p2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;

    move-result-object v2

    invoke-static {p3}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper$2;->val$animationHandler:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;->onAnimationStart(Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onTasksAppeared([Landroid/view/RemoteAnimationTarget;)V
    .locals 4

    array-length v0, p1

    new-array v0, v0, [Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;-><init>(Landroid/view/RemoteAnimationTarget;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper$2;->val$animationHandler:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;

    invoke-interface {p0, v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;->onTasksAppeared([Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;)V

    return-void
.end method
