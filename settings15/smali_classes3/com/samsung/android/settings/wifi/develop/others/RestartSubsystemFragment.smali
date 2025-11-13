.class public Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mActivity:Landroidx/fragment/app/FragmentActivity;

.field public mBtnClickListener:Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment$1;

.field public mContentView:Landroid/view/View;

.field public mHandler:Landroid/os/Handler;

.field public mProgressDialog:Landroid/app/ProgressDialog;

.field public mRestartWifiButton:Landroid/widget/Button;

.field public mWifiManager:Landroid/net/wifi/WifiManager;

.field public final mWifiSubsystemRestartTrackingCallback:Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment$2;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment$1;-><init>(Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;->mBtnClickListener:Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment$1;

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment$2;-><init>(Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;->mWifiSubsystemRestartTrackingCallback:Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment$2;

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "RestartWifiSubsystemHandler"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p2, 0x7f0d0982

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;->mContentView:Landroid/view/View;

    return-object p1
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;->mBtnClickListener:Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment$1;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;->mBtnClickListener:Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment$1;

    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;->mContentView:Landroid/view/View;

    const v1, 0x7f0a05eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;->mRestartWifiButton:Landroid/widget/Button;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;->mBtnClickListener:Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment$1;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
