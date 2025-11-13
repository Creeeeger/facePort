.class public final Lcom/android/systemui/volume/panel/component/anc/data/repository/AncSliceRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/volume/panel/component/anc/data/repository/AncSliceRepository;


# instance fields
.field public final mainCoroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public final sliceViewManager:Landroidx/slice/SliceViewManager;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Landroidx/slice/SliceViewManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/anc/data/repository/AncSliceRepositoryImpl;->mainCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Lcom/android/systemui/volume/panel/component/anc/data/repository/AncSliceRepositoryImpl;->sliceViewManager:Landroidx/slice/SliceViewManager;

    return-void
.end method
