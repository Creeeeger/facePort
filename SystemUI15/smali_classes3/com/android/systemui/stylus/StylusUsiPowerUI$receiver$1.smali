.class public final Lcom/android/systemui/stylus/StylusUsiPowerUI$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/stylus/StylusUsiPowerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$receiver$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0xfb92306

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const p1, 0x2a5cb57c

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p1, "StylusUsiPowerUI.dismiss"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    sget p1, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-class p1, Lcom/android/systemui/stylus/StylusUsiPowerUI$receiver$1;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    iget-object p1, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$receiver$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    sget-object p2, Lcom/android/systemui/stylus/StylusUiEvent;->STYLUS_LOW_BATTERY_NOTIFICATION_DISMISSED:Lcom/android/systemui/stylus/StylusUiEvent;

    sget v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->USI_NOTIFICATION_ID:I

    invoke-virtual {p1, p2}, Lcom/android/systemui/stylus/StylusUsiPowerUI;->logUiEvent(Lcom/android/systemui/stylus/StylusUiEvent;)V

    iget-object p0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$receiver$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateSuppression$1;

    invoke-direct {p1, p0, v2}, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateSuppression$1;-><init>(Lcom/android/systemui/stylus/StylusUsiPowerUI;Z)V

    iget-object p0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const-string v0, "StylusUsiPowerUI.click"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    sget p2, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    sget-boolean p2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-class p2, Lcom/android/systemui/stylus/StylusUsiPowerUI$receiver$1;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    iget-object p2, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$receiver$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    sget-object v0, Lcom/android/systemui/stylus/StylusUiEvent;->STYLUS_LOW_BATTERY_NOTIFICATION_CLICKED:Lcom/android/systemui/stylus/StylusUiEvent;

    sget v1, Lcom/android/systemui/stylus/StylusUsiPowerUI;->USI_NOTIFICATION_ID:I

    invoke-virtual {p2, v0}, Lcom/android/systemui/stylus/StylusUsiPowerUI;->logUiEvent(Lcom/android/systemui/stylus/StylusUiEvent;)V

    iget-object p2, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$receiver$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateSuppression$1;

    invoke-direct {v0, p2, v2}, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateSuppression$1;-><init>(Lcom/android/systemui/stylus/StylusUsiPowerUI;Z)V

    iget-object p2, p2, Lcom/android/systemui/stylus/StylusUsiPowerUI;->handler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p2, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$receiver$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    iget-object p2, p2, Lcom/android/systemui/stylus/StylusUsiPowerUI;->inputDeviceId:Ljava/lang/Integer;

    if-nez p2, :cond_4

    return-void

    :cond_4
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$receiver$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    iget-object p0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->inputDeviceId:Ljava/lang/Integer;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string v0, "device_input_id"

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.android.settings.STYLUS_USI_DETAILS_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, ":settings:show_fragment_args"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    const/high16 p2, 0x4000000

    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    const/high16 p2, 0x10000000

    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "StylusUsiPowerUI"

    const-string p1, "Cannot open USI details page."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method
