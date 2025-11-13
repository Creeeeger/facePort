.class Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$1;
.super Landroid/database/ContentObserver;
.source "EyeComfortRoutineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;Landroid/os/Handler;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$1;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 49
    iget-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$1;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "blue_light_filter_opacity"

    const/4 v1, 0x5

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 50
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$1;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->-$$Nest$fgetmEyeComfortSeekBar(Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;)Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$1;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->-$$Nest$fgetmEyeComfortSeekBar(Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;)Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$1;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->-$$Nest$fgetmEyeComfortSeekBar(Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;)Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method
