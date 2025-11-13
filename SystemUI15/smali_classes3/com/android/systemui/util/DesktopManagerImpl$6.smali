.class Lcom/android/systemui/util/DesktopManagerImpl$6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/DesktopManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/DesktopManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/DesktopManagerImpl$6;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDesktopModeStateChanged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DesktopManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl$6;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$mupdateDesktopMode(Lcom/android/systemui/util/DesktopManagerImpl;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl$6;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$mstartSystemUIDesktopIfNeeded(Lcom/android/systemui/util/DesktopManagerImpl;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl$6;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$mcontrolDesktopSettingsObserver(Lcom/android/systemui/util/DesktopManagerImpl;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$6;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/util/DesktopManagerImpl;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/util/DesktopManager$Callback;->onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    goto :goto_0

    :cond_0
    return-void
.end method
