.class Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$1;
.super Ljava/lang/Object;
.source "AABluetoothSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 162
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "package"

    const-string v1, "com.google.android.projection.gearhead"

    const/4 v2, 0x0

    .line 163
    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 164
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 165
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
