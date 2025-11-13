.class public final Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$notify$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $panelState:I

.field public final synthetic this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$notify$2;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;

    iput p2, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$notify$2;->$panelState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$notify$2;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;

    iget v1, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$notify$2;->$panelState:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.samsung.systemui.statusbar.EXPANDED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.samsung.systemui.statusbar.ANIMATING"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.samsung.systemui.statusbar.COLLAPSED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$notify$2;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;

    iget-object v4, v4, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->context:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_3
    iget v1, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$notify$2;->$panelState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$notify$2;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->statusBarManager$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SemStatusBarManager;

    if-eqz p0, :cond_6

    if-ne v0, v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p0, v3}, Landroid/app/SemStatusBarManager;->setPanelExpandState(Z)V

    :cond_6
    return-void
.end method
