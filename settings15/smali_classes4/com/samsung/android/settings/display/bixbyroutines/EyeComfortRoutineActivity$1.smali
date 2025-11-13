.class public final Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$1;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$1;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;

    iget-object p1, p1, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "blue_light_filter_opacity"

    const/4 v1, 0x5

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$1;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;

    iget-object v0, v0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mEyeComfortSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    if-eq v0, p1, :cond_0

    const-string v0, "EyeComfortRoutineActivity"

    const-string v1, "mEyeComfortColorTempObserver: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$1;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;

    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mEyeComfortSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method
