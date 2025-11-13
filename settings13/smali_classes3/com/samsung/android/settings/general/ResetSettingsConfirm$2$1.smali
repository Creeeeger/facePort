.class Lcom/samsung/android/settings/general/ResetSettingsConfirm$2$1;
.super Ljava/util/TimerTask;
.source "ResetSettingsConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;

.field final synthetic val$finalContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;Landroid/content/Context;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2$1;->this$1:Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;

    iput-object p2, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2$1;->val$finalContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 160
    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2$1;->val$finalContext:Landroid/content/Context;

    const-string v0, "power"

    .line 161
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const-string v0, "reset settings"

    .line 162
    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void
.end method
