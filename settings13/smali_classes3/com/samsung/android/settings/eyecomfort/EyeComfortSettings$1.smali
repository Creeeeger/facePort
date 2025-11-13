.class Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "EyeComfortSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$1;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 133
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-static {}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive : action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.android.settings.ECS_SCHEDULE_START"

    .line 135
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "com.android.settings.ECS_SCHEDULE_END"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 136
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$1;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->-$$Nest$mupdateDescriptionPreference(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)V

    :cond_1
    return-void
.end method
