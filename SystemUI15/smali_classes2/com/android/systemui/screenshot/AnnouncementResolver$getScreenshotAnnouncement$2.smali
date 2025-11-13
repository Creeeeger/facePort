.class final Lcom/android/systemui/screenshot/AnnouncementResolver$getScreenshotAnnouncement$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $announceCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $userId:I

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/screenshot/AnnouncementResolver;


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/AnnouncementResolver;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/systemui/screenshot/AnnouncementResolver;",
            "I",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/screenshot/AnnouncementResolver$getScreenshotAnnouncement$2;->$announceCallback:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/systemui/screenshot/AnnouncementResolver$getScreenshotAnnouncement$2;->this$0:Lcom/android/systemui/screenshot/AnnouncementResolver;

    iput p3, p0, Lcom/android/systemui/screenshot/AnnouncementResolver$getScreenshotAnnouncement$2;->$userId:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/systemui/screenshot/AnnouncementResolver$getScreenshotAnnouncement$2;

    iget-object v0, p0, Lcom/android/systemui/screenshot/AnnouncementResolver$getScreenshotAnnouncement$2;->$announceCallback:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/systemui/screenshot/AnnouncementResolver$getScreenshotAnnouncement$2;->this$0:Lcom/android/systemui/screenshot/AnnouncementResolver;

    iget p0, p0, Lcom/android/systemui/screenshot/AnnouncementResolver$getScreenshotAnnouncement$2;->$userId:I

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/systemui/screenshot/AnnouncementResolver$getScreenshotAnnouncement$2;-><init>(Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/AnnouncementResolver;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/screenshot/AnnouncementResolver$getScreenshotAnnouncement$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/screenshot/AnnouncementResolver$getScreenshotAnnouncement$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/AnnouncementResolver$getScreenshotAnnouncement$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/screenshot/AnnouncementResolver$getScreenshotAnnouncement$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/screenshot/AnnouncementResolver$getScreenshotAnnouncement$2;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Consumer;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/screenshot/AnnouncementResolver$getScreenshotAnnouncement$2;->$announceCallback:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/systemui/screenshot/AnnouncementResolver$getScreenshotAnnouncement$2;->this$0:Lcom/android/systemui/screenshot/AnnouncementResolver;

    iget v3, p0, Lcom/android/systemui/screenshot/AnnouncementResolver$getScreenshotAnnouncement$2;->$userId:I

    iput-object p1, p0, Lcom/android/systemui/screenshot/AnnouncementResolver$getScreenshotAnnouncement$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/screenshot/AnnouncementResolver$getScreenshotAnnouncement$2;->label:I

    invoke-virtual {v1, v3, p0}, Lcom/android/systemui/screenshot/AnnouncementResolver;->getScreenshotAnnouncement(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    :goto_0
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
