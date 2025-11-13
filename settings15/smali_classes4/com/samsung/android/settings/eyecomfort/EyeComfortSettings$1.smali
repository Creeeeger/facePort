.class public final Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$1;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAnchorView:I

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onReceive : action = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "EyeComfortSettings"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.android.settings.ECS_SCHEDULE_START"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "com.android.settings.ECS_SCHEDULE_END"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$1;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->updateDescriptionPreference()V

    :cond_1
    return-void
.end method
