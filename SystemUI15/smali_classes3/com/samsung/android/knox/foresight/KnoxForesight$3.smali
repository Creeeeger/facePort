.class Lcom/samsung/android/knox/foresight/KnoxForesight$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/foresight/KnoxForesight;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$3;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$3;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    iget-object p1, p1, Lcom/samsung/android/knox/foresight/KnoxForesight;->TAG:Ljava/lang/String;

    const-string v0, "Event intent comes"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "event"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$3;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/foresight/KnoxForesight;->notifyCallbacks(Ljava/lang/String;)V

    return-void
.end method
