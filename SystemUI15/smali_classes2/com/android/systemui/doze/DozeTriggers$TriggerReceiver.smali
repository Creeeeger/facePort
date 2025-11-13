.class public final Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mRegistered:Z

.field public final synthetic this$0:Lcom/android/systemui/doze/DozeTriggers;


# direct methods
.method private constructor <init>(Lcom/android/systemui/doze/DozeTriggers;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;-><init>(Lcom/android/systemui/doze/DozeTriggers;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "com.android.systemui.doze.pulse"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "DozeTriggers"

    const-string p2, "Received pulse intent"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    sget-boolean p1, Lcom/android/systemui/doze/DozeTriggers;->sWakeDisplaySensorState:Z

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p1, p2}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZLcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda2;)V

    :cond_1
    return-void
.end method
