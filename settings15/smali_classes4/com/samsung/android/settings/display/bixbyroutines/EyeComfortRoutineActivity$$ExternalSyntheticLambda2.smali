.class public final synthetic Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5

    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;

    const p1, 0x7f0a060a

    const-string v0, "blue_light_filter_scheduled"

    const-string v1, "blue_light_filter_adaptive_mode"

    const-string v2, "blue_light_filter"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->setEyeComfortSeekbarContainer(Z)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->setEyeComfortState(Z)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0a060b

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "blue_light_filter_type"

    invoke-static {p1, p2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mEyeComfortSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p2

    const-string v0, "blue_light_filter_opacity"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->setEyeComfortSeekbarContainer(Z)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->setEyeComfortState(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->setEyeComfortSeekbarContainer(Z)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->setEyeComfortState(Z)V

    :goto_0
    return-void
.end method
