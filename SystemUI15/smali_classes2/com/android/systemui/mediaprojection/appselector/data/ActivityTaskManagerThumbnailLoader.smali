.class public final Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/mediaprojection/appselector/data/RecentTaskThumbnailLoader;


# instance fields
.field public final activityManager:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field public final coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/shared/system/ActivityManagerWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader;->coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader;->activityManager:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    return-void
.end method


# virtual methods
.method public final captureThumbnail(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader$captureThumbnail$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader$captureThumbnail$2;-><init>(Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader;ILkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader;->coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final loadThumbnail(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader$loadThumbnail$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader$loadThumbnail$2;-><init>(Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader;ILkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader;->coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
