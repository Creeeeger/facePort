.class Lcom/samsung/android/settings/security/SimPinLockSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "SimPinLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/security/SimPinLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/security/SimPinLockSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/security/SimPinLockSettings;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings$3;->this$0:Lcom/samsung/android/settings/security/SimPinLockSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "state"

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 154
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings$3;->this$0:Lcom/samsung/android/settings/security/SimPinLockSettings;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
