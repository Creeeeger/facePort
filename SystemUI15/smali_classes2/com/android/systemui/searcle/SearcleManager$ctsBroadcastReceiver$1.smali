.class public final Lcom/android/systemui/searcle/SearcleManager$ctsBroadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/searcle/SearcleManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/searcle/SearcleManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleManager$ctsBroadcastReceiver$1;->this$0:Lcom/android/systemui/searcle/SearcleManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static final onReceive$restSearcleTip(Lcom/android/systemui/searcle/SearcleManager;Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleManager;->tipPopup:Lcom/android/systemui/searcle/SearcleTipPopup;

    iget-boolean v1, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->isTipPopupShowing:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/searcle/SearcleTipPopup;->hideImmediate()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/searcle/SearcleManager;->currentDownCount:I

    sget-object p0, Lcom/android/systemui/searcle/SearcleTipPopupUtil;->INSTANCE:Lcom/android/systemui/searcle/SearcleTipPopupUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "SearcleTipFirstSeenTime"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p1}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "SearcleTipCount"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "android.permissionui.cts"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.voicerecognition.cts"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.input.cts"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.google.android.permissionui.gts"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceive action = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearcleManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x1f50b9c2

    if-eq v0, v1, :cond_4

    const v1, 0x5c1076e2

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleManager$ctsBroadcastReceiver$1;->this$0:Lcom/android/systemui/searcle/SearcleManager;

    sget-object p2, Lcom/android/systemui/searcle/SearcleManager$CTSPackageState;->INSTALLED:Lcom/android/systemui/searcle/SearcleManager$CTSPackageState;

    iput-object p2, p0, Lcom/android/systemui/searcle/SearcleManager;->isInstalledCTSApp:Lcom/android/systemui/searcle/SearcleManager$CTSPackageState;

    invoke-static {p0, p1}, Lcom/android/systemui/searcle/SearcleManager$ctsBroadcastReceiver$1;->onReceive$restSearcleTip(Lcom/android/systemui/searcle/SearcleManager;Landroid/content/Context;)V

    goto :goto_1

    :cond_4
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleManager$ctsBroadcastReceiver$1;->this$0:Lcom/android/systemui/searcle/SearcleManager;

    sget-object p2, Lcom/android/systemui/searcle/SearcleManager$CTSPackageState;->UNINSTALLED:Lcom/android/systemui/searcle/SearcleManager$CTSPackageState;

    iput-object p2, p0, Lcom/android/systemui/searcle/SearcleManager;->isInstalledCTSApp:Lcom/android/systemui/searcle/SearcleManager$CTSPackageState;

    invoke-static {p0, p1}, Lcom/android/systemui/searcle/SearcleManager$ctsBroadcastReceiver$1;->onReceive$restSearcleTip(Lcom/android/systemui/searcle/SearcleManager;Landroid/content/Context;)V

    :cond_6
    :goto_1
    return-void
.end method
