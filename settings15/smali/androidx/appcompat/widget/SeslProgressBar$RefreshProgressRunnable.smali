.class public final Landroidx/appcompat/widget/SeslProgressBar$RefreshProgressRunnable;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar$RefreshProgressRunnable;->$r8$classId:I

    iput-object p2, p0, Landroidx/appcompat/widget/SeslProgressBar$RefreshProgressRunnable;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar$RefreshProgressRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar$RefreshProgressRunnable;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback;

    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback;->mProgressBar:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/SeslProgressBar;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar$RefreshProgressRunnable;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/SeslProgressBar;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar$RefreshProgressRunnable;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/SeslProgressBar;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar$RefreshProgressRunnable;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/widget/SeslProgressBar;

    iget-object v1, v1, Landroidx/appcompat/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Landroidx/appcompat/widget/SeslProgressBar$RefreshProgressRunnable;->this$0:Ljava/lang/Object;

    check-cast v4, Landroidx/appcompat/widget/SeslProgressBar;

    iget-object v4, v4, Landroidx/appcompat/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;

    iget-object v5, p0, Landroidx/appcompat/widget/SeslProgressBar$RefreshProgressRunnable;->this$0:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Landroidx/appcompat/widget/SeslProgressBar;

    iget v7, v4, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;->id:I

    iget v8, v4, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;->progress:I

    iget-boolean v9, v4, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;->fromUser:Z

    iget-boolean v11, v4, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;->animate:Z

    const/4 v10, 0x1

    invoke-virtual/range {v6 .. v11}, Landroidx/appcompat/widget/SeslProgressBar;->doRefreshProgress(IIZZZ)V

    sget-object v5, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;->sPool:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v5, v4}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar$RefreshProgressRunnable;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/widget/SeslProgressBar;

    iget-object v1, v1, Landroidx/appcompat/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar$RefreshProgressRunnable;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/SeslProgressBar;

    iput-boolean v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mRefreshIsPosted:Z

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
