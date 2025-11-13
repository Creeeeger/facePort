.class public final Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor$addCallback$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $action:Ljava/util/function/Consumer;

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor$addCallback$2;->this$0:Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor$addCallback$2;->$action:Ljava/util/function/Consumer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, 0x31af1c32

    if-eq p2, v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor$addCallback$2;->this$0:Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p1, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->userUnlocked:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor$addCallback$2;->$action:Ljava/util/function/Consumer;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->isEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method
