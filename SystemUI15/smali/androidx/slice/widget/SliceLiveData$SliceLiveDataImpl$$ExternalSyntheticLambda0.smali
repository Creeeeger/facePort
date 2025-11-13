.class public final synthetic Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/slice/SliceViewManager$SliceCallback;


# instance fields
.field public final synthetic f$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$$ExternalSyntheticLambda0;->f$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    return-void
.end method


# virtual methods
.method public final onSliceUpdated(Landroidx/slice/Slice;)V
    .locals 0

    iget-object p0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$$ExternalSyntheticLambda0;->f$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
