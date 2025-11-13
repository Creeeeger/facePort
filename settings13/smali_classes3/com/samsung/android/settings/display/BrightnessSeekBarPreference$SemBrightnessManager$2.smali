.class Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager$2;
.super Landroid/content/BroadcastReceiver;
.source "BrightnessSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager$2;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 663
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.intent.action.MAX_BRIGHTNESS_CHANGED"

    .line 664
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 665
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p2, -0x1

    const-string v0, "max_brightness"

    .line 669
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 670
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager$2;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;

    const/4 v1, 0x0

    const-string v2, "change_type"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->-$$Nest$fputmChangeType(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;I)V

    .line 671
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "received mMaxBrightness : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BrightnessSeekBarPreference"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "received mChangeType : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager$2;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;

    invoke-static {v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->-$$Nest$fgetmChangeType(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager$2;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;

    invoke-static {p0, p2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->-$$Nest$msetMaxBrightnessLimit(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;I)V

    :cond_1
    return-void
.end method
