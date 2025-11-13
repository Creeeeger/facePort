.class Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "NavigationBarGestureDetailedSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method
