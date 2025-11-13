.class public final Lcom/android/settings/wifi/WifiSettings$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/WifiSettings;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/wifi/WifiSettings$2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$2;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onSuccess$com$android$settings$wifi$WifiSettings$2()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onFailure(I)V
    .locals 2

    const/4 p1, 0x0

    iget v0, p0, Lcom/android/settings/wifi/WifiSettings$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$2;->this$0:Lcom/android/settings/wifi/WifiSettings;

    sget-boolean v1, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsForeground:Z

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$2;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f143567

    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$2;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_1

    const v0, 0x7f143569

    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess()V
    .locals 1

    iget v0, p0, Lcom/android/settings/wifi/WifiSettings$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$2;->this$0:Lcom/android/settings/wifi/WifiSettings;

    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsForeground:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
