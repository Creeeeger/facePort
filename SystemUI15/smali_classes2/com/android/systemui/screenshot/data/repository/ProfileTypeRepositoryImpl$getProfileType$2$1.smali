.class final Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$2$1;
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
.field final synthetic $userId:I

.field label:I

.field final synthetic this$0:Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl;",
            "I",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$2$1;->this$0:Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl;

    iput p2, p0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$2$1;->$userId:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$2$1;

    iget-object v0, p0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$2$1;->this$0:Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl;

    iget p0, p0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$2$1;->$userId:I

    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$2$1;-><init>(Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$2$1;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$2$1;->this$0:Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl;->userManager:Landroid/os/UserManager;

    iget p0, p0, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl$getProfileType$2$1;->$userId:I

    invoke-virtual {p1, p0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "android.os.usertype.profile.CLONE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/screenshot/data/model/ProfileType;->CLONE:Lcom/android/systemui/screenshot/data/model/ProfileType;

    goto :goto_1

    :sswitch_1
    const-string p1, "android.os.usertype.profile.MANAGED"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/systemui/screenshot/data/model/ProfileType;->WORK:Lcom/android/systemui/screenshot/data/model/ProfileType;

    goto :goto_1

    :sswitch_2
    const-string p1, "android.os.usertype.profile.PRIVATE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/systemui/screenshot/data/model/ProfileType;->PRIVATE:Lcom/android/systemui/screenshot/data/model/ProfileType;

    goto :goto_1

    :sswitch_3
    const-string p1, "android.os.usertype.profile.COMMUNAL"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/android/systemui/screenshot/data/model/ProfileType;->COMMUNAL:Lcom/android/systemui/screenshot/data/model/ProfileType;

    goto :goto_1

    :cond_4
    :goto_0
    sget-object p0, Lcom/android/systemui/screenshot/data/model/ProfileType;->NONE:Lcom/android/systemui/screenshot/data/model/ProfileType;

    :goto_1
    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x5287aaed -> :sswitch_3
        -0x4e0e8e80 -> :sswitch_2
        -0x986a464 -> :sswitch_1
        0x7534089a -> :sswitch_0
    .end sparse-switch
.end method
