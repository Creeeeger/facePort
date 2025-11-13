.class public Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final TAG:Ljava/lang/String; = "LSO_LockscreenOverlayView"


# instance fields
.field public handler:Landroid/os/Handler;

.field public final lso:Lcom/samsung/android/knox/lockscreen/LSOInterface;

.field public final mContext:Landroid/content/Context;

.field public final mNotifier:Landroid/content/BroadcastReceiver;

.field public final mParentDimension:Landroid/graphics/Point;

.field public final mViewDimension:Landroid/graphics/Point;

.field public registered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView$1;-><init>(Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;)V

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView$2;-><init>(Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;)V

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mNotifier:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->calculateDeviceDimension()V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mViewDimension:Landroid/graphics/Point;

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-static {v0, p1}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/lockscreen/LSOInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->lso:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    if-nez p1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setVisibility(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->registered:Z

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final allowToBeVisible()Z
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mViewDimension:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-double v1, v1

    iget-object v3, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-double v4, v4

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v6

    cmpl-double v1, v1, v4

    if-ltz v1, :cond_0

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-double v0, v0

    iget v2, v3, Landroid/graphics/Point;->y:I

    int-to-double v2, v2

    mul-double/2addr v2, v6

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Screen Size("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")  : View Size("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mViewDimension:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mViewDimension:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    const-string v1, ")"

    const-string v2, "LSO_LockscreenOverlayView"

    invoke-static {v0, p0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    const-string p0, "LSOInterface View cannot be displayed as view size is not enough."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final calculateDeviceDimension()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    invoke-virtual {v0, p0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-void
.end method

.method public final finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->registerLSONotification()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->unregisterLSONotification()V

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->calculateDeviceDimension()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Size Changed("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")  : From("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")  To("

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    const-string p4, "LSO_LockscreenOverlayView"

    invoke-static {v0, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mViewDimension:Landroid/graphics/Point;

    iput p1, p3, Landroid/graphics/Point;->x:I

    iput p2, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->allowToBeVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->allowToBeVisible()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setVisibility(I)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final declared-synchronized registerLSONotification()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->registered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setLayout()Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.knox.intent.action.LSO_CONFIG_CHANGED_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mNotifier:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->registered:Z

    const-string v0, "LSO_LockscreenOverlayView"

    const-string v1, "Registered for Intent: android.intent.action.MEDIA_MOUNTED , com.samsung.android.knox.intent.action.LSO_CONFIG_CHANGED_INTERNAL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setLayout(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Landroid/view/View;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOContainerView;

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/knox/lockscreen/LSOContainerView;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemContainer;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "setLayout() Error while creating views: "

    const-string v0, "LSO_LockscreenOverlayView"

    invoke-static {p1, p0, v0}, Landroidx/glance/session/SessionManagerImpl$scope$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final setLayout()Z
    .locals 6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->lso:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {v0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getPreferences()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "android:alpha"

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    const/4 v1, 0x1

    move v2, v1

    :goto_1
    const/4 v3, 0x3

    const/4 v4, 0x0

    if-gt v1, v3, :cond_4

    iget-object v5, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->lso:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {v5, v1}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getData(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v5}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setLayout(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eq v1, v3, :cond_3

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    move v2, v4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    const-string p0, "LSO_LockscreenOverlayView"

    const-string v0, "No Lockscreen Overlay data found."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v4
.end method

.method public setVisibility(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->allowToBeVisible()Z

    move-result v2

    if-nez v2, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->allowToBeVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    if-ne v0, p1, :cond_2

    return-void

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public final declared-synchronized unregisterLSONotification()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->registered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mNotifier:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->registered:Z

    const-string v0, "LSO_LockscreenOverlayView"

    const-string v1, "Unregistered for Intent: android.intent.action.MEDIA_MOUNTED , com.samsung.android.knox.intent.action.LSO_CONFIG_CHANGED_INTERNAL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
