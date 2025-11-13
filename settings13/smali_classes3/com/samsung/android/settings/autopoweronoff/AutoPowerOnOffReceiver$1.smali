.class Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver$1;
.super Ljava/lang/Object;
.source "AutoPowerOnOffReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->startPowerOffConfirmDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver$1;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "AutoPowerOnOffReceiver"

    const-string v1, "mHandler.postDelayed"

    .line 147
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver$1;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;

    invoke-static {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->-$$Nest$mreleasePartial(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;)V

    return-void
.end method
