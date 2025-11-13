.class Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;
.super Ljava/lang/Object;
.source "NearbyScanning.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->createNeaybyScanningView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 160
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 161
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.easysetup"

    const-string v2, "com.samsung.android.easysetup.appupdate.view.EasySetupAboutSetting"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-static {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isShowingMultiPaneLayout(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "NearbyScanning"

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "MultiPane true"

    .line 165
    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    const v0, 0xffff

    invoke-static {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/homepage/HomepageUtils;->getPopOverBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string v0, "MultiPane false"

    .line 168
    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x10000000

    .line 169
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 170
    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-static {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 173
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method
