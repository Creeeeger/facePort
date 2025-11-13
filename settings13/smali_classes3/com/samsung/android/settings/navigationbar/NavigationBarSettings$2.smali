.class Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "NavigationBarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x1

    .line 99
    invoke-static {p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->setForceUpdateState(Z)V

    .line 100
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method
