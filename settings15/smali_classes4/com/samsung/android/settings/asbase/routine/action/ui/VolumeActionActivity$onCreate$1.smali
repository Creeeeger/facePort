.class public final Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity$onCreate$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity$onCreate$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity$onCreate$1;->this$0:Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity$onCreate$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity$onCreate$1;->this$0:Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity$onCreate$1;->this$0:Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->soundMode:Lcom/samsung/android/settings/asbase/widget/SecSoundMode;

    if-eqz v0, :cond_2

    iget v1, v0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->ringerMode:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;

    invoke-direct {v2, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;-><init>(Ljava/lang/Float;)V

    const-string v1, "as_sound_mode"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->checkBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->ringerMode:I

    sget v1, Lcom/samsung/android/settings/asbase/widget/SecVolumeValues;->EAR_PROTECT_LIMIT_LEVEL_FOR_ROUTINE:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;-><init>(Ljava/lang/Boolean;)V

    const-string v0, "as_do_not_change_volume"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "checkBox"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity$onCreate$1;->this$0:Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->rowList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;

    invoke-virtual {v1}, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->streamType:I

    invoke-static {v3, v2}, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->getSuffix(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "volume_level"

    invoke-static {v3, v2}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v1, v1, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->volumeLevel:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;

    invoke-direct {v3, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;-><init>(Ljava/lang/Float;)V

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity$onCreate$1;->this$0:Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    new-instance v3, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "intent_params"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity$onCreate$1;->this$0:Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
