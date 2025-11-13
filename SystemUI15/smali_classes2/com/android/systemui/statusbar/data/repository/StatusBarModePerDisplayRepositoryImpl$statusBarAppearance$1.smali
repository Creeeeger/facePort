.class final Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$statusBarAppearance$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function5;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic Z$0:Z

.field synthetic Z$1:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$statusBarAppearance$1;->this$0:Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$ModifiedStatusBarAttributes;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    check-cast p4, Lcom/android/systemui/statusbar/phone/ongoingcall/shared/model/OngoingCallModel;

    check-cast p5, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$statusBarAppearance$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$statusBarAppearance$1;->this$0:Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;

    invoke-direct {v0, p0, p5}, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$statusBarAppearance$1;-><init>(Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$statusBarAppearance$1;->L$0:Ljava/lang/Object;

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$statusBarAppearance$1;->Z$0:Z

    iput-boolean p3, v0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$statusBarAppearance$1;->Z$1:Z

    iput-object p4, v0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$statusBarAppearance$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$statusBarAppearance$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x5

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$statusBarAppearance$1;->label:I

    if-nez v1, :cond_6

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$statusBarAppearance$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$ModifiedStatusBarAttributes;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$statusBarAppearance$1;->Z$0:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$statusBarAppearance$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/statusbar/phone/ongoingcall/shared/model/OngoingCallModel;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$statusBarAppearance$1;->this$0:Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;

    instance-of v2, v2, Lcom/android/systemui/statusbar/phone/ongoingcall/shared/model/OngoingCallModel$InCall;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_1

    sget-object p0, Lcom/android/systemui/statusbar/data/model/StatusBarMode;->SEMI_TRANSPARENT:Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    goto :goto_0

    :cond_1
    iget p0, p1, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$ModifiedStatusBarAttributes;->appearance:I

    and-int/lit8 v1, p0, 0x5

    if-ne v1, v0, :cond_2

    sget-object p0, Lcom/android/systemui/statusbar/data/model/StatusBarMode;->LIGHTS_OUT:Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    goto :goto_0

    :cond_2
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_3

    sget-object p0, Lcom/android/systemui/statusbar/data/model/StatusBarMode;->LIGHTS_OUT_TRANSPARENT:Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    goto :goto_0

    :cond_3
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_4

    sget-object p0, Lcom/android/systemui/statusbar/data/model/StatusBarMode;->OPAQUE:Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    goto :goto_0

    :cond_4
    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_5

    sget-object p0, Lcom/android/systemui/statusbar/data/model/StatusBarMode;->SEMI_TRANSPARENT:Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/android/systemui/statusbar/data/model/StatusBarMode;->TRANSPARENT:Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    :goto_0
    new-instance v0, Lcom/android/systemui/statusbar/data/model/StatusBarAppearance;

    iget-object v1, p1, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$ModifiedStatusBarAttributes;->appearanceRegions:Ljava/util/List;

    iget-object v2, p1, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$ModifiedStatusBarAttributes;->statusBarBounds:Lcom/android/systemui/statusbar/phone/BoundsPair;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$ModifiedStatusBarAttributes;->navbarColorManagedByIme:Z

    invoke-direct {v0, p0, v2, v1, p1}, Lcom/android/systemui/statusbar/data/model/StatusBarAppearance;-><init>(Lcom/android/systemui/statusbar/data/model/StatusBarMode;Lcom/android/systemui/statusbar/phone/BoundsPair;Ljava/util/List;Z)V

    move-object p0, v0

    :goto_1
    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
