.class public abstract Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final EXTRA_APP_NAME:Ljava/lang/String; = "com.android.settings.wifi.extra.APP_NAME"


# instance fields
.field public mActivity:Lcom/android/settings/wifi/NetworkRequestDialogActivity;

.field public mAppName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;->mActivity:Lcom/android/settings/wifi/NetworkRequestDialogActivity;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;->mAppName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x55d

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onAttach(Landroid/content/Context;)V

    instance-of v0, p1, Lcom/android/settings/wifi/NetworkRequestDialogActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/settings/wifi/NetworkRequestDialogActivity;

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;->mActivity:Lcom/android/settings/wifi/NetworkRequestDialogActivity;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "com.android.settings.wifi.extra.APP_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;->mAppName:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;->mActivity:Lcom/android/settings/wifi/NetworkRequestDialogActivity;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->dismissDialogs()V

    iget-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;->reject()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public final onDetach()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;->mActivity:Lcom/android/settings/wifi/NetworkRequestDialogActivity;

    return-void
.end method

.method public onMatch(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public onUserSelectionCallbackRegistration(Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;)V
    .locals 0

    return-void
.end method

.method public final show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v0, p1}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, p2, v1}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    return-void
.end method
