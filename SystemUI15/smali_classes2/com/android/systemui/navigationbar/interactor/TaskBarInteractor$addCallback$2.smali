.class public final Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $action:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$2;->this$0:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$2;->$action:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x31af1c32

    if-eq v2, v3, :cond_4

    const v3, 0x392cb822

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$2;->this$0:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;

    if-eqz p1, :cond_3

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    if-eqz p1, :cond_3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    :cond_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    iput-object p1, v1, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->userUnlocked:Ljava/lang/Boolean;

    goto :goto_2

    :cond_4
    const-string p1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$2;->this$0:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p1, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->userUnlocked:Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$2;->$action:Ljava/lang/Runnable;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$2;->this$0:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$2;->this$0:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->userUnlocked:Ljava/lang/Boolean;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Receive "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " userUnlocked="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " for userid="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "TaskBarInteractor"

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
