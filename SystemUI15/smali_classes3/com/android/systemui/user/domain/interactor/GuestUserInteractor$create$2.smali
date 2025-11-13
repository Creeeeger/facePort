.class final Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$create$2;
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
.field final synthetic $dismissDialog:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $showDialog:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            "Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$create$2;->$showDialog:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$create$2;->this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    iput-object p3, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$create$2;->$dismissDialog:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$create$2;

    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$create$2;->$showDialog:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$create$2;->this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$create$2;->$dismissDialog:Lkotlin/jvm/functions/Function0;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$create$2;-><init>(Lkotlin/jvm/functions/Function1;Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$create$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$create$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$create$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$create$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$create$2;->$showDialog:Lkotlin/jvm/functions/Function1;

    new-instance v1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowUserCreationDialog;

    invoke-direct {v1, v2}, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowUserCreationDialog;-><init>(Z)V

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$create$2;->this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    iput v2, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$create$2;->label:I

    sget v1, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$createInBackground$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$createInBackground$2;-><init>(Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;Lkotlin/coroutines/Continuation;)V

    iget-object p1, p1, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$create$2;->$dismissDialog:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/16 v0, -0x2710

    if-eq p1, v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$create$2;->this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/qs/QSUserSwitcherEvent;->QS_USER_GUEST_ADD:Lcom/android/systemui/qs/QSUserSwitcherEvent;

    invoke-interface {p0, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$create$2;->this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->applicationContext:Landroid/content/Context;

    const v0, 0x7f130186

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_1
    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p0
.end method
