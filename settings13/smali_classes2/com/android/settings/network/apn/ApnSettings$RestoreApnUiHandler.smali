.class Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/apn/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/apn/ApnSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/network/apn/ApnSettings;)V
    .locals 0

    .line 1575
    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/network/apn/ApnSettings;Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/network/apn/ApnSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1578
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 1580
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage : EVENT_RESTORE_DEFAULTAPN_COMPLETE, Activity : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ApnSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    invoke-static {}, Lcom/samsung/android/settings/network/apn/ApnUtils;->isSupportCpa()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1583
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    if-nez p1, :cond_1

    .line 1585
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/apn/ApnSettings;->access$100(Lcom/android/settings/network/apn/ApnSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "kddi_cpa_added"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Put Setting DB fail"

    .line 1587
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1593
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p0, v1}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fputmRestoreDefaultApnMode(Lcom/android/settings/network/apn/ApnSettings;Z)V

    return-void

    .line 1596
    :cond_2
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$mfillList(Lcom/android/settings/network/apn/ApnSettings;)V

    .line 1600
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p1, v1}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fputmRestoreDefaultApnMode(Lcom/android/settings/network/apn/ApnSettings;Z)V

    .line 1601
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    const/16 v0, 0x3e9

    invoke-static {p1, v0}, Lcom/android/settings/network/apn/ApnSettings;->access$200(Lcom/android/settings/network/apn/ApnSettings;I)V

    .line 1602
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    .line 1603
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    .line 1604
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->restore_default_apn_completed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 1602
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1606
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1607
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p0}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmSubId(Lcom/android/settings/network/apn/ApnSettings;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$mrestartPhoneStateListener(Lcom/android/settings/network/apn/ApnSettings;I)V

    :goto_1
    return-void
.end method
