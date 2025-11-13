.class Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$2;
.super Landroid/content/BroadcastReceiver;
.source "MobileDataOnlySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$2;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.intent.action.SIMHOTSWAP"

    .line 143
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "MobileDataOnlySettings"

    const-string p2, "FINISH : HOTSWAP"

    .line 144
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$2;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method
