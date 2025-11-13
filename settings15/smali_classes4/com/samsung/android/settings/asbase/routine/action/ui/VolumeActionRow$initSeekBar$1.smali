.class public final Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow$initSeekBar$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow$initSeekBar$1;->this$0:Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 7

    const-string/jumbo v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow$initSeekBar$1;->this$0:Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;

    if-eqz p3, :cond_1

    iget p3, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->volumeMax:I

    if-eq p2, p3, :cond_0

    iget p3, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->volumeMin:I

    if-ne p2, p3, :cond_1

    :cond_0
    const/16 p3, 0x29

    invoke-static {p3}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_1
    iget p3, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->volumeMin:I

    const/4 v0, 0x0

    if-ge p2, p3, :cond_2

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    iget p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->volumeMin:I

    iput p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->volumeLevel:I

    goto/16 :goto_6

    :cond_2
    iget p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->streamType:I

    sget p3, Lcom/samsung/android/settings/asbase/widget/SecVolumeValues;->EAR_PROTECT_LIMIT_LEVEL_FOR_ROUTINE:I

    const/4 p3, 0x2

    if-ne p1, p3, :cond_e

    iget p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->ringerModeInt:I

    const/4 v1, 0x1

    if-ne p1, p3, :cond_3

    if-nez p2, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    move v2, p3

    goto :goto_0

    :cond_4
    move v2, p1

    :goto_0
    iput v2, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->ringerModeInt:I

    if-eq p1, v2, :cond_e

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->listener:Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity$onModeChangedListener$1;

    if-eqz p1, :cond_d

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity$onModeChangedListener$1;->this$0:Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;

    iget-object v3, p1, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->soundMode:Lcom/samsung/android/settings/asbase/widget/SecSoundMode;

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    iget-object v5, v3, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->checkBox:Landroid/widget/CheckBox;

    if-eqz v5, :cond_7

    invoke-virtual {v5, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-eqz v2, :cond_6

    if-eq v2, v1, :cond_5

    move v5, v4

    goto :goto_1

    :cond_5
    move v5, v1

    goto :goto_1

    :cond_6
    move v5, p3

    :goto_1
    iput v5, v3, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->selectedPosition:I

    invoke-virtual {v3, v5}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->updateButtonStatus(I)V

    goto :goto_2

    :cond_7
    const-string p0, "checkBox"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_2
    iget-object p1, p1, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->rowList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;

    iget v5, v3, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->streamType:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_a

    goto :goto_4

    :cond_a
    if-ne v5, v1, :cond_9

    :goto_4
    if-eqz v2, :cond_c

    if-eq v2, v1, :cond_b

    move v5, v4

    goto :goto_5

    :cond_b
    move v5, v1

    goto :goto_5

    :cond_c
    move v5, p3

    :goto_5
    invoke-virtual {v3, v5}, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->updateFromRinger(I)V

    goto :goto_3

    :cond_d
    const-string p0, "listener"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_e
    iput p2, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->volumeLevel:I

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->icon:Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;

    if-eqz p1, :cond_10

    iget p3, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->ringerModeInt:I

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->updateLayoutForRoutine(II)V

    :goto_6
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->levelText:Landroid/widget/TextView;

    if-eqz p1, :cond_f

    iget p2, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->volumeLevel:I

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float/2addr p2, p3

    iget p0, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->volumeMax:I

    int-to-float p0, p0

    div-float/2addr p2, p0

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float/2addr p2, p0

    float-to-int p0, p2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "%"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_f
    const-string p0, "levelText"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_10
    const-string p0, "icon"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public final onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    const-string/jumbo p0, "seekBar"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    const-string/jumbo p0, "seekBar"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
