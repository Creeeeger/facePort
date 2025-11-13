.class Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager$3;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;Landroid/os/Handler;)V
    .locals 0

    .line 678
    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager$3;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 681
    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager$3;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;

    invoke-static {p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_brightness_mode_pms_enter"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {p1, v2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->-$$Nest$fputmIsHBMOnOff(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;Z)V

    .line 683
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hbm is enabled = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager$3;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;

    invoke-static {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->-$$Nest$fgetmIsHBMOnOff(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BrightnessSeekBarPreference"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager$3;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;

    invoke-static {p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->-$$Nest$fgetmOnHBMListener(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;)Landroidx/core/util/Consumer;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager$3;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;

    invoke-static {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->-$$Nest$fgetmIsHBMOnOff(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
