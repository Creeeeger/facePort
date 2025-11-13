.class Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$1;
.super Landroid/os/Handler;
.source "AutoSwitchSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$1;->this$0:Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 80
    iget-object p1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$1;->this$0:Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$1;->this$0:Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$1;->this$0:Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->updatePreferences()V

    return-void

    :cond_1
    :goto_0
    const-string p0, "AutoSwitchSettings"

    const-string p1, "handleMessage - Ignore msg"

    .line 81
    invoke-static {p0, p1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
