.class Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$3;
.super Landroid/database/ContentObserver;
.source "BrightnessSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/os/Handler;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$3;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 129
    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$3;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "shown_max_brightness_dialog"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {p0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->-$$Nest$fputmAlreadyShownBrightMaxDialog(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Z)V

    return-void
.end method
