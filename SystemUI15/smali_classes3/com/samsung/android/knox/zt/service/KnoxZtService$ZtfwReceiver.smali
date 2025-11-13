.class Lcom/samsung/android/knox/zt/service/KnoxZtService$ZtfwReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/zt/service/KnoxZtService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/knox/zt/service/KnoxZtService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$ZtfwReceiver;->this$0:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/knox/zt/service/KnoxZtService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/zt/service/KnoxZtService$ZtfwReceiver;-><init>(Lcom/samsung/android/knox/zt/service/KnoxZtService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.android.knox.zt.devicetrust.monitor.action.ZERO_TRUST_FRAMEWORK_STARTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    const-string p2, "onReceive() - ACTION_ZERO_TRUST_FRAMEWORK_STARTED"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$ZtfwReceiver;->this$0:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->onKnoxZtFrameworkStarted()V

    :cond_0
    return-void
.end method
