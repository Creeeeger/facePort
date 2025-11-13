.class public final Lcom/samsung/android/settings/display/BrightnessManager$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/BrightnessManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/BrightnessManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessManager$2;->this$0:Lcom/samsung/android/settings/display/BrightnessManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.intent.action.MAX_BRIGHTNESS_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "max_brightness"

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessManager$2;->this$0:Lcom/samsung/android/settings/display/BrightnessManager;

    const-string v2, "change_type"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v1, Lcom/samsung/android/settings/display/BrightnessManager;->mChangeType:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "received mMaxBrightness : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BrightnessSeekBarPreference"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "received mChangeType : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessManager$2;->this$0:Lcom/samsung/android/settings/display/BrightnessManager;

    iget v2, v2, Lcom/samsung/android/settings/display/BrightnessManager;->mChangeType:I

    invoke-static {p1, v2, v1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessManager$2;->this$0:Lcom/samsung/android/settings/display/BrightnessManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p2, 0xff

    :goto_0
    iput p2, p0, Lcom/samsung/android/settings/display/BrightnessManager;->mMaxBrightness:I

    iget p1, p0, Lcom/samsung/android/settings/display/BrightnessManager;->mScreenBrightnessMaximum:I

    if-le p2, p1, :cond_2

    iput p1, p0, Lcom/samsung/android/settings/display/BrightnessManager;->mMaxBrightness:I

    :cond_2
    iget p1, p0, Lcom/samsung/android/settings/display/BrightnessManager;->mMaxBrightness:I

    iget p2, p0, Lcom/samsung/android/settings/display/BrightnessManager;->mScreenBrightnessMinimum:I

    if-ge p1, p2, :cond_3

    iput p2, p0, Lcom/samsung/android/settings/display/BrightnessManager;->mMaxBrightness:I

    :cond_3
    return-void
.end method
