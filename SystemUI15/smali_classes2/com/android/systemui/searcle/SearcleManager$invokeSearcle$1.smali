.class public final Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/searcle/SearcleManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/searcle/SearcleManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$1;->this$0:Lcom/android/systemui/searcle/SearcleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$1;->this$0:Lcom/android/systemui/searcle/SearcleManager;

    iget-object v0, v0, Lcom/android/systemui/searcle/SearcleManager;->tipPopup:Lcom/android/systemui/searcle/SearcleTipPopup;

    iget-boolean v1, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->isTipPopupShowing:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/searcle/SearcleTipPopup;->hide()V

    :cond_0
    sget-object v0, Lcom/android/systemui/searcle/SearcleTipPopupUtil;->INSTANCE:Lcom/android/systemui/searcle/SearcleTipPopupUtil;

    iget-object v1, p0, Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$1;->this$0:Lcom/android/systemui/searcle/SearcleManager;

    iget-object v1, v1, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/searcle/SearcleTipPopupUtil;->getSearcleTipCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    const-string v0, "SearcleManager"

    const-string v2, "invokeSearcle skip remind"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$1;->this$0:Lcom/android/systemui/searcle/SearcleManager;

    iget-object v0, v0, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    const-string v2, "SearcleTipCount"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$1;->this$0:Lcom/android/systemui/searcle/SearcleManager;

    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleManager;->isInstalledCTSApp:Lcom/android/systemui/searcle/SearcleManager$CTSPackageState;

    sget-object v1, Lcom/android/systemui/searcle/SearcleManager$CTSPackageState;->UNKNOWN:Lcom/android/systemui/searcle/SearcleManager$CTSPackageState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleManager;->ctsBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleManager;->ctsBroadcastReceiver:Lcom/android/systemui/searcle/SearcleManager$ctsBroadcastReceiver$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method
