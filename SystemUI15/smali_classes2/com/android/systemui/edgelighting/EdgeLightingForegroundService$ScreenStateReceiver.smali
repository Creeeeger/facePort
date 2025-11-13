.class public final Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;


# direct methods
.method private constructor <init>(Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_1
    :goto_0
    return-void
.end method
