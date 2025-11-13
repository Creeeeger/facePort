.class Lcom/android/settings/development/AtcmdPreferenceController$1;
.super Ljava/lang/Object;
.source "AtcmdPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/development/AtcmdPreferenceController;->rebootDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/AtcmdPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/development/AtcmdPreferenceController;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/settings/development/AtcmdPreferenceController$1;->this$0:Lcom/android/settings/development/AtcmdPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.REBOOT"

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.REBOOT_REASON"

    const-string v2, "[SecSettings]Block AT Commands"

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/development/AtcmdPreferenceController$1;->this$0:Lcom/android/settings/development/AtcmdPreferenceController;

    invoke-static {p0}, Lcom/android/settings/development/AtcmdPreferenceController;->access$000(Lcom/android/settings/development/AtcmdPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 91
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method
