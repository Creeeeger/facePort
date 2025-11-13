.class Lcom/samsung/android/settings/general/ResetSettingsConfirm$4;
.super Ljava/lang/Object;
.source "ResetSettingsConfirm.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/general/ResetSettingsConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$4;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$4;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->-$$Nest$fputmService(Lcom/samsung/android/settings/general/ResetSettingsConfirm;Landroid/os/Messenger;)V

    .line 282
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "svc connected: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ResetSettings"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$4;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-virtual {p1}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->registerAccCallbackToService()V

    .line 284
    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$4;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->resetAccHelper()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$4;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->-$$Nest$fputmService(Lcom/samsung/android/settings/general/ResetSettingsConfirm;Landroid/os/Messenger;)V

    const-string p0, "ResetSettings"

    const-string p1, "svc disconnected"

    .line 290
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
