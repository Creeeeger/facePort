.class public final Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$onCreateView$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $this_apply:Landroid/widget/Button;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$onCreateView$1$1;->this$0:Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$onCreateView$1$1;->$this_apply:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "NoFavoriteFragment"

    const-string/jumbo v0, "startProviderSelectorActivity"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$onCreateView$1$1;->this$0:Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    iget-object p1, p1, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    sget-object v0, Lcom/android/systemui/controls/util/SALogger$Event$AddDevices;->INSTANCE:Lcom/android/systemui/controls/util/SALogger$Event$AddDevices;

    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/util/SALogger;->sendEvent(Lcom/android/systemui/controls/util/SALogger$Event;)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$onCreateView$1$1;->this$0:Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    iget-object p1, p1, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$onCreateView$1$1;->$this_apply:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;

    check-cast p1, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method
