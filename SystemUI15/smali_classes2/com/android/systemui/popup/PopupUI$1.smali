.class Lcom/android/systemui/popup/PopupUI$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/popup/PopupUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/popup/PopupUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/popup/PopupUI$1;->this$0:Lcom/android/systemui/popup/PopupUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUI$1;->this$0:Lcom/android/systemui/popup/PopupUI;

    invoke-static {v0}, Lcom/android/systemui/popup/PopupUI;->-$$Nest$fgetmLogWrapper(Lcom/android/systemui/popup/PopupUI;)Lcom/android/systemui/basic/util/LogWrapper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PopupUIReceiver.onReceive() action : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PopupUI"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/popup/PopupUI$1;->this$0:Lcom/android/systemui/popup/PopupUI;

    invoke-static {p0}, Lcom/android/systemui/popup/PopupUI;->-$$Nest$fgetmViewModelList(Lcom/android/systemui/popup/PopupUI;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;

    invoke-interface {p1, p2}, Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;->show(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/popup/PopupUI$1;->this$0:Lcom/android/systemui/popup/PopupUI;

    invoke-static {p0}, Lcom/android/systemui/popup/PopupUI;->-$$Nest$fgetmViewModelList(Lcom/android/systemui/popup/PopupUI;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;

    invoke-interface {p1}, Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;->dismiss()V

    goto :goto_1

    :cond_1
    return-void
.end method
