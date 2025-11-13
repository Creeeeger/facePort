.class final Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$toViewModel$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $model:Lcom/android/systemui/user/shared/model/UserActionModel;

.field final synthetic this$0:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;Lcom/android/systemui/user/shared/model/UserActionModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$toViewModel$1;->this$0:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    iput-object p2, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$toViewModel$1;->$model:Lcom/android/systemui/user/shared/model/UserActionModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$toViewModel$1;->this$0:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    iget-object v0, v0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->userSwitcherInteractor:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    iget-object v1, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$toViewModel$1;->$model:Lcom/android/systemui/user/shared/model/UserActionModel;

    sget v2, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->$r8$clinit:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->executeAction(Lcom/android/systemui/user/shared/model/UserActionModel;Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V

    iget-object v0, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$toViewModel$1;->$model:Lcom/android/systemui/user/shared/model/UserActionModel;

    sget-object v1, Lcom/android/systemui/user/shared/model/UserActionModel;->ADD_USER:Lcom/android/systemui/user/shared/model/UserActionModel;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$toViewModel$1;->this$0:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    iget-object p0, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->isFinishRequiredDueToExecutedAction:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
