.class public final Lcom/android/systemui/qs/pipeline/data/repository/UserAutoAddRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/qs/pipeline/data/repository/UserAutoAddRepository$Companion;


# instance fields
.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final changeEvents:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final logger:Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/pipeline/data/repository/UserAutoAddRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/pipeline/data/repository/UserAutoAddRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserAutoAddRepository;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const/4 p0, 0x0

    const/16 p1, 0xa

    const/4 p2, 0x0

    const/4 p3, 0x5

    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    return-void
.end method
