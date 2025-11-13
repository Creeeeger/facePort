.class public final Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;

    return-void
.end method


# virtual methods
.method public final onFailure(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f143569

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final onSuccess()V
    .locals 0

    return-void
.end method
