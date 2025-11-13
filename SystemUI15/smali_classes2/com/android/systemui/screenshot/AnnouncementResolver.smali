.class public final Lcom/android/systemui/screenshot/AnnouncementResolver;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mainScope:Lkotlinx/coroutines/CoroutineScope;

.field public final messages:Lcom/android/systemui/screenshot/resources/Messages;

.field public final profileTypes:Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/resources/Messages;Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepository;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/AnnouncementResolver;->messages:Lcom/android/systemui/screenshot/resources/Messages;

    iput-object p2, p0, Lcom/android/systemui/screenshot/AnnouncementResolver;->profileTypes:Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepository;

    iput-object p3, p0, Lcom/android/systemui/screenshot/AnnouncementResolver;->mainScope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public final getScreenshotAnnouncement(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/android/systemui/screenshot/AnnouncementResolver$getScreenshotAnnouncement$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/screenshot/AnnouncementResolver$getScreenshotAnnouncement$1;

    iget v1, v0, Lcom/android/systemui/screenshot/AnnouncementResolver$getScreenshotAnnouncement$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/screenshot/AnnouncementResolver$getScreenshotAnnouncement$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/screenshot/AnnouncementResolver$getScreenshotAnnouncement$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/screenshot/AnnouncementResolver$getScreenshotAnnouncement$1;-><init>(Lcom/android/systemui/screenshot/AnnouncementResolver;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/screenshot/AnnouncementResolver$getScreenshotAnnouncement$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/screenshot/AnnouncementResolver$getScreenshotAnnouncement$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/android/systemui/screenshot/AnnouncementResolver$getScreenshotAnnouncement$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/screenshot/AnnouncementResolver;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object p0, v0, Lcom/android/systemui/screenshot/AnnouncementResolver$getScreenshotAnnouncement$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/screenshot/AnnouncementResolver$getScreenshotAnnouncement$1;->label:I

    iget-object p2, p0, Lcom/android/systemui/screenshot/AnnouncementResolver;->profileTypes:Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepository;

    check-cast p2, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl;

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl;->getProfileType(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/android/systemui/screenshot/data/model/ProfileType;

    sget-object p1, Lcom/android/systemui/screenshot/AnnouncementResolver$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v3, :cond_5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    iget-object p0, p0, Lcom/android/systemui/screenshot/AnnouncementResolver;->messages:Lcom/android/systemui/screenshot/resources/Messages;

    iget-object p0, p0, Lcom/android/systemui/screenshot/resources/Messages;->savingScreenshotAnnouncement$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/screenshot/AnnouncementResolver;->messages:Lcom/android/systemui/screenshot/resources/Messages;

    iget-object p0, p0, Lcom/android/systemui/screenshot/resources/Messages;->savingToWorkProfileAnnouncement$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/screenshot/AnnouncementResolver;->messages:Lcom/android/systemui/screenshot/resources/Messages;

    iget-object p0, p0, Lcom/android/systemui/screenshot/resources/Messages;->savingToPrivateProfileAnnouncement$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_2
    return-object p0
.end method
