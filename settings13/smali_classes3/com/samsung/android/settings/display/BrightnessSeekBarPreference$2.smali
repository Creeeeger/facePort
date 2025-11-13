.class Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$2;
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

    .line 119
    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$2;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$2;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->onBrightnessModeChanged()V

    return-void
.end method
