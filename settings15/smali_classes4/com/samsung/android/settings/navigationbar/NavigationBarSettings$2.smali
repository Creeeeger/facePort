.class public final Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x1

    sput-boolean p1, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sIsForceUpdate:Z

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
