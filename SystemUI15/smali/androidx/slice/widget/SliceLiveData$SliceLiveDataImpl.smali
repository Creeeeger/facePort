.class public final Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;
.super Landroidx/lifecycle/LiveData;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mIntent:Landroid/content/Intent;

.field public final mListener:Landroidx/slice/widget/SliceLiveData$OnErrorListener;

.field public final mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

.field public final mSliceViewManager:Landroidx/slice/SliceViewManagerWrapper;

.field public final mUpdateSlice:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;

.field public mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    new-instance v0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;-><init>(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUpdateSlice:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;

    new-instance v0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$$ExternalSyntheticLambda0;-><init>(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    new-instance v0, Landroidx/slice/SliceViewManagerWrapper;

    invoke-direct {v0, p1}, Landroidx/slice/SliceViewManagerWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManagerWrapper;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;

    iput-object p2, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mIntent:Landroid/content/Intent;

    iput-object p3, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mListener:Landroidx/slice/widget/SliceLiveData$OnErrorListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    new-instance v0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;-><init>(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUpdateSlice:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;

    new-instance v0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$$ExternalSyntheticLambda0;-><init>(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    new-instance v0, Landroidx/slice/SliceViewManagerWrapper;

    invoke-direct {v0, p1}, Landroidx/slice/SliceViewManagerWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManagerWrapper;

    iput-object p2, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mIntent:Landroid/content/Intent;

    iput-object p3, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mListener:Landroidx/slice/widget/SliceLiveData$OnErrorListener;

    return-void
.end method


# virtual methods
.method public final onActive()V
    .locals 2

    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUpdateSlice:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManagerWrapper;

    iget-object p0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    invoke-virtual {v1, v0, p0}, Landroidx/slice/SliceViewManagerBase;->registerSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    :cond_0
    return-void
.end method

.method public final onInactive()V
    .locals 2

    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManagerWrapper;

    iget-object p0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    invoke-virtual {v1, v0, p0}, Landroidx/slice/SliceViewManagerBase;->unregisterSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    :cond_0
    return-void
.end method

.method public final onSliceError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mListener:Landroidx/slice/widget/SliceLiveData$OnErrorListener;

    if-eqz p0, :cond_1

    check-cast p0, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda2;

    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda2;->f$1:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/volume/VolumePanelDialog;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumePanelDialog;->removeSliceLiveData(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelDialog;->mLoadedSlices:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    const-string p0, "SliceLiveData"

    const-string v0, "Error binding slice"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
