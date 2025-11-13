.class Lcom/android/settings/ResetNetworkConfirm$2;
.super Ljava/lang/Object;
.source "ResetNetworkConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ResetNetworkConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ResetNetworkConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetNetworkConfirm;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$2;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 258
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$2;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-virtual {p1}, Lcom/android/settings/ResetNetworkConfirm;->getMetricsCategory()I

    move-result p1

    const/16 v0, 0x1238

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 261
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 266
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$2;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {p1}, Lcom/android/settings/ResetNetworkConfirm;->-$$Nest$fgetmSubId(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 267
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$2;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {p1}, Lcom/android/settings/ResetNetworkConfirm;->-$$Nest$mgetSubscriptionManager(Lcom/android/settings/ResetNetworkConfirm;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    .line 269
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$2;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v0, p1}, Lcom/android/settings/ResetNetworkConfirm;->-$$Nest$mstopMonitorSubscriptionChange(Lcom/android/settings/ResetNetworkConfirm;Landroid/telephony/SubscriptionManager;)V

    .line 270
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$2;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v0}, Lcom/android/settings/ResetNetworkConfirm;->-$$Nest$fgetmSubId(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/android/settings/ResetNetworkConfirm;->-$$Nest$misSubscriptionRemainActive(Lcom/android/settings/ResetNetworkConfirm;Landroid/telephony/SubscriptionManager;I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 271
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "subId "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$2;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v0}, Lcom/android/settings/ResetNetworkConfirm;->-$$Nest$fgetmSubId(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " disappear when confirm"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ResetNetworkConfirm"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm$2;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 277
    :cond_1
    sget-boolean p1, Lcom/samsung/android/settings/Rune;->FEATURE_RESET_NETWORK_ATT_PASSWORD_CONFIRM:Z

    if-eqz p1, :cond_3

    .line 278
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$2;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "SYSTEM_PHONE_PASSWORD"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 280
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$2;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    .line 281
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isNoSIM(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$2;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {p1}, Lcom/android/settings/ResetNetworkConfirm;->-$$Nest$fgetmLockPatternUtils(Lcom/android/settings/ResetNetworkConfirm;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    .line 282
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 283
    :goto_0
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$2;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v0}, Lcom/android/settings/ResetNetworkConfirm;->-$$Nest$fgetmIsATTReset(Lcom/android/settings/ResetNetworkConfirm;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 284
    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm$2;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {p0}, Lcom/android/settings/ResetNetworkConfirm;->-$$Nest$mstartPassword(Lcom/android/settings/ResetNetworkConfirm;)V

    return-void

    .line 290
    :cond_3
    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm$2;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {p0}, Lcom/android/settings/ResetNetworkConfirm;->-$$Nest$msecResetNetwork(Lcom/android/settings/ResetNetworkConfirm;)V

    return-void
.end method
