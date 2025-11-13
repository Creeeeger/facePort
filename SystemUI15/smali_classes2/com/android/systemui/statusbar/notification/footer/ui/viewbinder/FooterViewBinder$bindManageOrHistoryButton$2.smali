.class final Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2;
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
.field final synthetic $footer:Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

.field final synthetic $launchNotificationHistory:Landroid/view/View$OnClickListener;

.field final synthetic $launchNotificationSettings:Landroid/view/View$OnClickListener;

.field final synthetic $viewModel:Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel;Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel;",
            "Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;",
            "Landroid/view/View$OnClickListener;",
            "Landroid/view/View$OnClickListener;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2;->$viewModel:Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2;->$footer:Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2;->$launchNotificationHistory:Landroid/view/View$OnClickListener;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2;->$launchNotificationSettings:Landroid/view/View$OnClickListener;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v6, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2;->$viewModel:Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2;->$footer:Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2;->$launchNotificationHistory:Landroid/view/View$OnClickListener;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2;->$launchNotificationSettings:Landroid/view/View$OnClickListener;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2;-><init>(Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel;Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2;->L$0:Ljava/lang/Object;

    return-object v6
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v6, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2;->$viewModel:Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2;->$footer:Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2;->$launchNotificationHistory:Landroid/view/View$OnClickListener;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2;->$launchNotificationSettings:Landroid/view/View$OnClickListener;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2$1;-><init>(Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel;Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p1, v0, v0, v6, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v2, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2$2;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2;->$viewModel:Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2;->$footer:Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

    invoke-direct {v2, v3, v4, v0}, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2$2;-><init>(Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel;Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0, v0, v2, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v2, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2$3;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2;->$viewModel:Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2;->$footer:Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

    invoke-direct {v2, v3, v4, v0}, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2$3;-><init>(Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel;Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0, v0, v2, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v2, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2$4;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2;->$viewModel:Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2;->$footer:Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

    invoke-direct {v2, v3, p0, v0}, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2$4;-><init>(Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel;Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0, v0, v2, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
