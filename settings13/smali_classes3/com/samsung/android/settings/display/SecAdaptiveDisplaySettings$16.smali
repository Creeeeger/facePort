.class Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$16;
.super Ljava/lang/Object;
.source "SecAdaptiveDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)V
    .locals 0

    .line 697
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$16;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 700
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$16;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fputmIsFocusableGreen(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Z)V

    .line 701
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$16;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmIsFocusableGreen(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$16;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmCustomSeekBarGreen(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/widget/SeekBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 702
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$16;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$16;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmCustomSeekBarGreen(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/widget/SeekBar;

    move-result-object p0

    .line 703
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    add-int/lit8 p0, p0, -0xb

    const-string p2, "sec_display_temperature_green"

    .line 702
    invoke-static {p1, p2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method
