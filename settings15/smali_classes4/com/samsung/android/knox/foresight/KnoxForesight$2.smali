.class Lcom/samsung/android/knox/foresight/KnoxForesight$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/foresight/KnoxForesight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/foresight/KnoxForesight;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$2;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "error"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "SUCCESS"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.foresight.COMMAND"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$2;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    iget-object v0, v0, Lcom/samsung/android/knox/foresight/KnoxForesight;->eventReceiver:Landroid/content/ComponentName;

    const-string v1, "eventReceiver"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.foresight"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$2;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    iget-object v1, v0, Lcom/samsung/android/knox/foresight/KnoxForesight;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/samsung/android/knox/foresight/KnoxForesight;->connection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object p0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$2;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/foresight/KnoxForesight;->notifyCallbacks(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$2;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    iget-object p2, p2, Lcom/samsung/android/knox/foresight/KnoxForesight;->TAG:Ljava/lang/String;

    const-string v0, "Download failed. Reason : "

    invoke-static {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$2;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/foresight/KnoxForesight;->notifyCallbacks(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
