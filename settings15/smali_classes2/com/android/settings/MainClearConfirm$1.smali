.class public final Lcom/android/settings/MainClearConfirm$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/MainClearConfirm;


# direct methods
.method public constructor <init>(Lcom/android/settings/MainClearConfirm;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/MainClearConfirm$1;->this$0:Lcom/android/settings/MainClearConfirm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "RTN Reset broadcast Receiver [com.samsung.hiddenmenu.OMADM_CLEAR_DATA_DONE] in settings received"

    const-string p2, "MainClearConfirm"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    const-string v0, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/MainClearConfirm$1;->this$0:Lcom/android/settings/MainClearConfirm;

    sget-object v0, Lcom/android/settings/MainClearConfirm;->mSalesCode:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/settings/MainClearConfirm;->checkSDCardEncryptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/MainClearConfirm$1;->this$0:Lcom/android/settings/MainClearConfirm;

    invoke-virtual {p0}, Lcom/android/settings/MainClearConfirm;->decryptSDCardBeforeFactoryReset()V

    goto :goto_0

    :cond_0
    const-string p1, "Starting MainClearModemReset() for RTN"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/MainClearConfirm$1;->this$0:Lcom/android/settings/MainClearConfirm;

    invoke-virtual {p0}, Lcom/android/settings/MainClearConfirm;->startMainClearModemReset()V

    :cond_1
    :goto_0
    return-void
.end method
