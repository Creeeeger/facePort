.class public abstract Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public audioManager:Landroid/media/AudioManager;

.field public isVolumeOptionSelected:Z

.field public modeContainer:Landroid/view/ViewGroup;

.field public final onButtonSelectedListener:Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity$onModeChangedListener$1;

.field public final onModeChangedListener:Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity$onModeChangedListener$1;

.field public rowContainer:Landroid/view/ViewGroup;

.field public final rowList:Ljava/util/List;

.field public soundMode:Lcom/samsung/android/settings/asbase/widget/SecSoundMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->rowList:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity$onModeChangedListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity$onModeChangedListener$1;-><init>(Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->onButtonSelectedListener:Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity$onModeChangedListener$1;

    new-instance v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity$onModeChangedListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity$onModeChangedListener$1;-><init>(Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->onModeChangedListener:Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity$onModeChangedListener$1;

    return-void
.end method

.method public static getSuffix(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeValues;->rowStreamTypeToString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final addVolumeRow(ILjava/lang/String;Z)V
    .locals 12

    const-string v0, "header"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d09ec

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.samsung.android.settings.asbase.routine.action.ui.VolumeActionRow"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->getSuffix(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->fromIntent(Landroid/content/Intent;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object v3

    const-string/jumbo v4, "volume_level"

    invoke-static {v4, v1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v4, v3, v1}, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND$$ExternalSyntheticOutline0;->m(FLcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->getCurrentMode()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->audioManager:Landroid/media/AudioManager;

    const v4, 0x7f0a1126

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    const-string/jumbo v5, "requireViewById(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->titleView:Landroid/widget/TextView;

    const v4, 0x7f0a1124

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->levelText:Landroid/widget/TextView;

    const v4, 0x7f0a1118

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;

    iput-object v4, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->icon:Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;

    const v4, 0x7f0a1127

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroidx/appcompat/widget/SeslSeekBar;

    iput-object v4, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iput p1, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->streamType:I

    iput v3, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->ringerModeInt:I

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/16 v7, 0x64

    const/4 v8, -0x1

    const-string v9, "audioManager"

    const/16 v10, 0x8

    if-le p1, v7, :cond_4

    invoke-static {p1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeValues;->getAudioStream(I)I

    move-result p1

    iget v7, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->streamType:I

    packed-switch v7, :pswitch_data_0

    move v7, v6

    goto :goto_0

    :pswitch_0
    move v7, v10

    goto :goto_0

    :pswitch_1
    const/4 v7, 0x4

    goto :goto_0

    :pswitch_2
    const/4 v7, 0x3

    goto :goto_0

    :pswitch_3
    const/16 v7, 0x16

    goto :goto_0

    :pswitch_4
    move v7, v5

    :goto_0
    iget-object v11, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->audioManager:Landroid/media/AudioManager;

    if-eqz v11, :cond_3

    invoke-virtual {v11, p1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v11

    iput v11, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->volumeMin:I

    iget-object v11, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->audioManager:Landroid/media/AudioManager;

    if-eqz v11, :cond_2

    invoke-virtual {v11, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v11

    mul-int/lit8 v11, v11, 0xa

    iput v11, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->volumeMax:I

    if-eq v1, v8, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->audioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, v7}, Landroid/media/AudioManager;->semGetFineVolume(II)I

    move-result v1

    :goto_1
    iput v1, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->volumeLevel:I

    goto :goto_4

    :cond_1
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_4
    iget-object v7, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->audioManager:Landroid/media/AudioManager;

    if-eqz v7, :cond_24

    invoke-virtual {v7, p1}, Landroid/media/AudioManager;->getStreamMinVolumeInt(I)I

    move-result p1

    iput p1, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->volumeMin:I

    iget-object p1, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->audioManager:Landroid/media/AudioManager;

    if-eqz p1, :cond_23

    iget v7, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->streamType:I

    invoke-virtual {p1, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    iput p1, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->volumeMax:I

    if-eq v1, v8, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->getDefaultVolume()I

    move-result v1

    :goto_2
    iput v1, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->volumeLevel:I

    iget p1, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->streamType:I

    sget v1, Lcom/samsung/android/settings/asbase/widget/SecVolumeValues;->EAR_PROTECT_LIMIT_LEVEL_FOR_ROUTINE:I

    if-ne p1, v5, :cond_6

    goto :goto_3

    :cond_6
    if-ne p1, v3, :cond_7

    goto :goto_3

    :cond_7
    if-ne p1, v4, :cond_8

    :goto_3
    iget p1, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->ringerModeInt:I

    if-eq p1, v5, :cond_8

    iput v6, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->volumeLevel:I

    :cond_8
    :goto_4
    new-instance p1, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->icon:Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;

    const-string v7, "icon"

    if-eqz v1, :cond_22

    iget v8, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->streamType:I

    invoke-virtual {v1, p1, v8}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->initialize(Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;I)V

    iget-object p1, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->icon:Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;

    if-eqz p1, :cond_21

    iget v1, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->volumeLevel:I

    iget v8, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->ringerModeInt:I

    invoke-virtual {p1, v1, v8}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->updateLayoutForRoutine(II)V

    iget p1, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->volumeLevel:I

    iget-object v1, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->levelText:Landroid/widget/TextView;

    if-eqz v1, :cond_20

    int-to-float v8, p1

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    iget v9, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->volumeMax:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "%"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const-string/jumbo v8, "seekBar"

    if-eqz v1, :cond_1f

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMin(I)V

    iget-object v1, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v1, :cond_1e

    iget v9, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->volumeMax:I

    invoke-virtual {v1, v9}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    iget-object v1, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v1, :cond_1d

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setSeamless(Z)V

    iget-object v1, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v1, :cond_1c

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    iget-object p1, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p1, :cond_1b

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMode(I)V

    iget-object p1, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->icon:Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;

    if-eqz p1, :cond_1a

    iget p1, p1, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    const/16 v1, 0x66

    if-eq p1, v1, :cond_9

    const/16 v1, 0x69

    if-ne p1, v1, :cond_a

    :cond_9
    iget-object p1, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p1, :cond_19

    sget v1, Lcom/samsung/android/settings/asbase/widget/SecVolumeValues;->EAR_PROTECT_LIMIT_LEVEL_FOR_ROUTINE:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setOverlapPointForDualColor(I)V

    iget-object p1, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p1, :cond_18

    const-string v1, "#E8AB8E"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0606fe

    invoke-virtual {v7, v9, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    invoke-virtual {p1, v1, v7}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setDualModeOverlapColor(II)V

    :cond_a
    iget-object p1, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p1, :cond_17

    new-instance v1, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow$initSeekBar$1;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow$initSeekBar$1;-><init>(Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;)V

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    iget p1, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->ringerModeInt:I

    if-ne p1, v5, :cond_b

    goto :goto_6

    :cond_b
    iget p1, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->streamType:I

    if-ne p1, v3, :cond_c

    goto :goto_5

    :cond_c
    if-ne p1, v4, :cond_e

    :goto_5
    iget-object p1, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p1, :cond_d

    invoke-virtual {p1, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_6

    :cond_d
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_e
    :goto_6
    iget-object p1, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->titleView:Landroid/widget/TextView;

    const-string/jumbo v1, "titleView"

    if-eqz p1, :cond_16

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->titleView:Landroid/widget/TextView;

    if-eqz p1, :cond_15

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_f

    goto :goto_7

    :cond_f
    move v10, v6

    :goto_7
    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->soundMode:Lcom/samsung/android/settings/asbase/widget/SecSoundMode;

    const-string/jumbo p2, "rowContainer"

    if-eqz p1, :cond_11

    const-string/jumbo p1, "onModeChangedListener"

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->onModeChangedListener:Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity$onModeChangedListener$1;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->listener:Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity$onModeChangedListener$1;

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->rowContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_10

    const v1, 0x7f0a112b

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v1, "null cannot be cast to non-null type android.view.View"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    :cond_10
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_11
    :goto_8
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->rowList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->rowContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_14

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-nez p3, :cond_13

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070d76

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const/4 v0, -0x2

    invoke-direct {p1, v0, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0d0988

    invoke-virtual {p3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const-string/jumbo v0, "null cannot be cast to non-null type android.widget.Space"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/Space;

    invoke-virtual {p3, p1}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->rowContainer:Landroid/view/ViewGroup;

    if-eqz p0, :cond_12

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_9

    :cond_12
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_13
    :goto_9
    return-void

    :cond_14
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_15
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_16
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_17
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_18
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_19
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1a
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1b
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1c
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1d
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1e
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1f
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_20
    const-string p0, "levelText"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_21
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_22
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_23
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_24
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getCurrentMode()I
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->fromIntent(Landroid/content/Intent;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->audioManager:Landroid/media/AudioManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioManager;->semGetRingerModeInternal()I

    move-result p0

    int-to-float p0, p0

    const-string v1, "as_sound_mode"

    invoke-static {p0, v0, v1}, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND$$ExternalSyntheticOutline0;->m(FLcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    return p0

    :cond_0
    const-string p0, "audioManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "VolumeActionActivity"

    const-string v0, "OnCreate"

    invoke-static {p1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->audioManager:Landroid/media/AudioManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const p1, 0x7f0d0771

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    const p1, 0x7f0a027f

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v0, "requireViewById(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/Button;

    const v1, 0x7f0a027b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0a0eb4

    invoke-virtual {p0, v2}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->modeContainer:Landroid/view/ViewGroup;

    const v2, 0x7f0a1125

    invoke-virtual {p0, v2}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->rowContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->rowList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity$onCreate$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity$onCreate$1;-><init>(Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;I)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity$onCreate$1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity$onCreate$1;-><init>(Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;I)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "savedInstanceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->rowList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;

    invoke-virtual {v0}, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->streamType:I

    invoke-static {v2, v1}, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->getSuffix(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "volume_level"

    invoke-static {v2, v1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->volumeLevel:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "seekBar"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->rowList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;

    invoke-virtual {v0}, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->streamType:I

    invoke-static {v2, v1}, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->getSuffix(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "volume_level"

    invoke-static {v2, v1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v0, v0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->volumeLevel:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
