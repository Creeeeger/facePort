.class public final Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver$1;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string v0, "AutoPowerOnOffReceiver"

    const-string v1, "mHandler.postDelayed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver$1;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;

    sget v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->releasePartial()V

    return-void
.end method
