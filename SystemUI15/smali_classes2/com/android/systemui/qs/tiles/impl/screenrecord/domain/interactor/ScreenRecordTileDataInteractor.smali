.class public final Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileDataInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/base/interactor/QSTileDataInteractor;


# instance fields
.field public final screenRecordRepository:Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileDataInteractor;->screenRecordRepository:Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepository;

    return-void
.end method


# virtual methods
.method public final availability(Landroid/os/UserHandle;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final tileData(Landroid/os/UserHandle;Lkotlinx/coroutines/flow/ReadonlySharedFlow;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileDataInteractor;->screenRecordRepository:Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepository;

    check-cast p0, Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl;->screenRecordState:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method
