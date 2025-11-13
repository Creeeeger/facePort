.class Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "AndroidAutoCarDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment$1;->this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, -0x80000000

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 110
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_0

    .line 112
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment$1;->this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method
