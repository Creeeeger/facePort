.class public final Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;


# direct methods
.method public constructor <init>(Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1;->this$1:Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1;->this$1:Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;

    iget-boolean v1, v0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mPinned:Z

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, v0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->this$0:Landroidx/slice/SliceViewManagerWrapper;

    iget-object v2, v0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroidx/slice/SliceViewManagerWrapper;->pinSlice(Landroid/net/Uri;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mPinned:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1;->this$1:Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;

    iget-object v1, v0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->this$0:Landroidx/slice/SliceViewManagerWrapper;

    iget-object v1, v1, Landroidx/slice/SliceViewManagerWrapper;->mContext:Landroid/content/Context;

    iget-object v0, v0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mUri:Landroid/net/Uri;

    sget-object v2, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Landroidx/collection/ArraySet;

    const-class v3, Landroid/app/slice/SliceManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/slice/SliceManager;

    new-instance v4, Landroidx/collection/ArraySet;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroidx/collection/ArraySet;-><init>(I)V

    if-eqz v2, :cond_2

    new-instance v5, Landroidx/collection/ArraySet$ElementIterator;

    invoke-direct {v5, v2}, Landroidx/collection/ArraySet$ElementIterator;-><init>(Landroidx/collection/ArraySet;)V

    :goto_0
    invoke-virtual {v5}, Landroidx/collection/IndexBasedArrayIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v5}, Landroidx/collection/IndexBasedArrayIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceSpec;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    new-instance v6, Landroid/app/slice/SliceSpec;

    iget-object v7, v2, Landroidx/slice/SliceSpec;->mType:Ljava/lang/String;

    iget v2, v2, Landroidx/slice/SliceSpec;->mRevision:I

    invoke-direct {v6, v7, v2}, Landroid/app/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    move-object v2, v6

    :goto_1
    invoke-virtual {v4, v2}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v0, v4}, Landroid/app/slice/SliceManager;->bindSlice(Landroid/net/Uri;Ljava/util/Set;)Landroid/app/slice/Slice;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/slice/SliceConvert;->wrap(Landroid/app/slice/Slice;Landroid/content/Context;)Landroidx/slice/Slice;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1;->this$1:Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;

    iget-object v1, v1, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1$1;

    invoke-direct {v2, p0, v0}, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1$1;-><init>(Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1;Landroidx/slice/Slice;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
