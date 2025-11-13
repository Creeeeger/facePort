.class public final synthetic Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->BLUE_LIGHT_FILTER_OPACITY_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->finish()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iget-object p2, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "blue_light_filter"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string v0, "blue_light_filter_switch"

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterAdaptiveMode()Z

    move-result p1

    const-string p2, "blue_light_filter_scheduled"

    const-string v0, "blue_light_filter_adaptive_mode"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iget-object v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iget-object p2, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "blue_light_filter_type"

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iget-object p2, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, 0x5

    const-string v1, "blue_light_filter_opacity"

    invoke-static {p2, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->toJsonString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "intent_params"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->finish()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
