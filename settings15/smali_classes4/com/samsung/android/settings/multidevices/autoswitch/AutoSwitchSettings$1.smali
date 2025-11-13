.class public final Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$1;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$1;->this$0:Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$1;->this$0:Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->updatePreferences$1()V

    return-void

    :cond_1
    :goto_0
    const-string p0, "AutoSwitchSettings"

    const-string p1, "handleMessage - Ignore msg"

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
