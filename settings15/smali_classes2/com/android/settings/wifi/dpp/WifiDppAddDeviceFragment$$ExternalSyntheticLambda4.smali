.class public final synthetic Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda4;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda4;->f$1:Landroid/content/Intent;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
