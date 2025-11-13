.class public final Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final clearAllButton:Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterButtonViewModel;

.field public final manageButtonShouldLaunchHistory:Lkotlinx/coroutines/flow/Flow;

.field public final manageOrHistoryButton:Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterButtonViewModel;

.field public final manageOrHistoryButtonText:Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel$special$$inlined$map$1;

.field public final message:Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterMessageViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;Lcom/android/systemui/shared/notifications/domain/interactor/NotificationSettingsInteractor;Lcom/android/systemui/statusbar/notification/domain/interactor/SeenNotificationsInteractor;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterMessageViewModel;

    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/domain/interactor/SeenNotificationsInteractor;->hasFilteredOutSeenNotifications:Lkotlinx/coroutines/flow/StateFlowImpl;

    const v1, 0x7f1313ee    # 1.955E38f

    const v2, 0x7f080928

    invoke-direct {v0, v1, v2, p3}, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterMessageViewModel;-><init>(IILkotlinx/coroutines/flow/StateFlow;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel;->message:Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterMessageViewModel;

    new-instance p3, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel$clearAllButtonVisible$1;

    const/4 v1, 0x0

    invoke-direct {p3, v1}, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel$clearAllButtonVisible$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;->hasClearableNotifications:Lkotlinx/coroutines/flow/Flow;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterMessageViewModel;->isVisible:Lkotlinx/coroutines/flow/StateFlow;

    invoke-direct {v2, p1, v0, p3}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p3, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterButtonViewModel;

    const v2, 0x7f13038b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v3, v2}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    const v2, 0x7f130065

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v4, v2}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    check-cast p4, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object v2, p4, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->isShadeTouchable:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    sget-object v5, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel$clearAllButton$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel$clearAllButton$2;

    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object p4, p4, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->isShadeFullyExpanded:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v6, p4, v2, v5}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance p4, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel$clearAllButton$3;

    invoke-direct {p4, v1}, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel$clearAllButton$3;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v2, p4, v6}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance p4, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel$clearAllButton$4;

    invoke-direct {p4, v1}, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel$clearAllButton$4;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v2, p4}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/util/ui/AnimatedValueKt;->toAnimatedValueFlow(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-direct {p3, v3, v4, p1}, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterButtonViewModel;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel;->clearAllButton:Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterButtonViewModel;

    iget-object p1, p2, Lcom/android/systemui/shared/notifications/domain/interactor/NotificationSettingsInteractor;->isNotificationHistoryEnabled:Lkotlinx/coroutines/flow/Flow;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel;->manageButtonShouldLaunchHistory:Lkotlinx/coroutines/flow/Flow;

    new-instance p2, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel$special$$inlined$map$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterButtonViewModel;

    new-instance p3, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel$special$$inlined$map$2;

    invoke-direct {p3, v0}, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-direct {p1, p2, p2, p3}, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterButtonViewModel;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel;->manageOrHistoryButton:Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterButtonViewModel;

    return-void
.end method
