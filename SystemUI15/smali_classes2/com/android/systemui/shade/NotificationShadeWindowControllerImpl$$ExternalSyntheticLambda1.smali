.class public final synthetic Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/io/PrintWriter;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_EM_TOKEN_CAPTURE_WINDOW:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->engineerModeManager:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;

    iget-boolean v0, v0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;->isCaptureEnabled:Z

    const-string v1, "  EMM="

    invoke-static {v1, v0, p0}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_BOUNCER_WINDOW:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    invoke-virtual {v0, p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->applyBouncer(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    :cond_2
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mSecNotificationShadeWindowStateInteractor:Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor;

    iget-object v0, v0, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor;->repository:Lcom/android/systemui/shade/data/repository/SecNotificationShadeWindowStateRepository;

    iget-object v1, v0, Lcom/android/systemui/shade/data/repository/SecNotificationShadeWindowStateRepository;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowState;->shadeOrQsExpanded:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v3, v0, Lcom/android/systemui/shade/data/repository/SecNotificationShadeWindowStateRepository;->_shadeOrQsExpanded:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v3, v2, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarState:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-object v0, v0, Lcom/android/systemui/shade/data/repository/SecNotificationShadeWindowStateRepository;->_statusBarState:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0, v2, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->applyHelper(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
