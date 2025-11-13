.class Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$3;
.super Ljava/lang/Object;
.source "EyeComfortRoutineActivity.java"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->setEyeComfortSeekBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$3;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$3;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "blue_light_filter_opacity"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "eye comfort shield value: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EyeComfortRoutineActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 1

    .line 147
    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$3;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p1

    const-string v0, "blue_light_filter_opacity"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
