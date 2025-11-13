.class public final Landroidx/appcompat/widget/SeslProgressBar$RefreshProgressRunnable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/appcompat/widget/SeslProgressBar;


# direct methods
.method private constructor <init>(Landroidx/appcompat/widget/SeslProgressBar;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar$RefreshProgressRunnable;->this$0:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/widget/SeslProgressBar;Landroidx/appcompat/widget/SeslProgressBar$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar$RefreshProgressRunnable;-><init>(Landroidx/appcompat/widget/SeslProgressBar;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar$RefreshProgressRunnable;->this$0:Landroidx/appcompat/widget/SeslProgressBar;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar$RefreshProgressRunnable;->this$0:Landroidx/appcompat/widget/SeslProgressBar;

    iget-object v1, v1, Landroidx/appcompat/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Landroidx/appcompat/widget/SeslProgressBar$RefreshProgressRunnable;->this$0:Landroidx/appcompat/widget/SeslProgressBar;

    iget-object v4, v4, Landroidx/appcompat/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;

    iget-object v5, p0, Landroidx/appcompat/widget/SeslProgressBar$RefreshProgressRunnable;->this$0:Landroidx/appcompat/widget/SeslProgressBar;

    iget v6, v4, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;->id:I

    iget v7, v4, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;->progress:I

    iget-boolean v8, v4, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;->fromUser:Z

    iget-boolean v10, v4, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;->animate:Z

    const/4 v9, 0x1

    invoke-virtual/range {v5 .. v10}, Landroidx/appcompat/widget/SeslProgressBar;->doRefreshProgress(IIZZZ)V

    sget-object v5, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;->sPool:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v5, v4}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar$RefreshProgressRunnable;->this$0:Landroidx/appcompat/widget/SeslProgressBar;

    iget-object v1, v1, Landroidx/appcompat/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar$RefreshProgressRunnable;->this$0:Landroidx/appcompat/widget/SeslProgressBar;

    iput-boolean v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mRefreshIsPosted:Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
