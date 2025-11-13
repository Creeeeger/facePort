.class Lcom/android/settings/MainClearConfirm$1;
.super Landroid/content/BroadcastReceiver;
.source "MainClearConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MainClearConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MainClearConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/MainClearConfirm;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/android/settings/MainClearConfirm$1;->this$0:Lcom/android/settings/MainClearConfirm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "MainClearConfirm"

    const-string p2, "RTN Reset broadcast Receiver [com.samsung.hiddenmenu.OMADM_CLEAR_DATA_DONE] in settings received"

    .line 172
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p2

    const-string v0, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {p2, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 174
    iget-object p2, p0, Lcom/android/settings/MainClearConfirm$1;->this$0:Lcom/android/settings/MainClearConfirm;

    invoke-static {p2}, Lcom/android/settings/MainClearConfirm;->-$$Nest$mcheckSDCardEncryptionEnabled(Lcom/android/settings/MainClearConfirm;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 175
    iget-object p0, p0, Lcom/android/settings/MainClearConfirm$1;->this$0:Lcom/android/settings/MainClearConfirm;

    invoke-static {p0}, Lcom/android/settings/MainClearConfirm;->-$$Nest$mdecryptSDCardBeforeFactoryReset(Lcom/android/settings/MainClearConfirm;)V

    goto :goto_0

    :cond_0
    const-string p2, "Starting MainClearModemReset() for RTN"

    .line 178
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object p0, p0, Lcom/android/settings/MainClearConfirm$1;->this$0:Lcom/android/settings/MainClearConfirm;

    invoke-static {p0}, Lcom/android/settings/MainClearConfirm;->-$$Nest$mstartMainClearModemReset(Lcom/android/settings/MainClearConfirm;)V

    :cond_1
    :goto_0
    return-void
.end method
