.class final Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$toggleActionButton$action$1;
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
.field final synthetic $cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field final synthetic $isChecked:Z

.field final synthetic $templateId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;ZLcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$toggleActionButton$action$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$toggleActionButton$action$1;->$templateId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$toggleActionButton$action$1;->$isChecked:Z

    iput-object p4, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$toggleActionButton$action$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$toggleActionButton$action$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getSecControlViewHolder()Lcom/android/systemui/controls/ui/SecControlViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->actionIcon:Lcom/android/systemui/controls/ui/view/ControlsActionButton;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$toggleActionButton$action$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$toggleActionButton$action$1;->$templateId:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$toggleActionButton$action$1;->$isChecked:Z

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$toggleActionButton$action$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    iget-object v4, v0, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->actionIconProgress:Landroid/widget/ProgressBar;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    iget-object v0, v0, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->actionIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    iget-object v4, v1, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, v6

    :goto_1
    iget-object v4, v4, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/service/controls/CustomControl;->getCustomSound()I

    move-result v5

    :cond_2
    iget-object v4, v1, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz v4, :cond_3

    move-object v6, v4

    :cond_3
    iget-object v4, v6, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    iget v4, v4, Lcom/android/systemui/controls/controller/ControlInfo;->deviceType:I

    xor-int/lit8 v6, v3, 0x1

    check-cast p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;

    invoke-virtual {p0, v5, v4, v0, v6}, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->playClick(IILandroid/view/View;Z)V

    :cond_4
    new-instance p0, Landroid/service/controls/actions/BooleanAction;

    xor-int/lit8 v0, v3, 0x1

    invoke-direct {p0, v2, v0}, Landroid/service/controls/actions/BooleanAction;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->action(Landroid/service/controls/actions/ControlAction;)V

    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
