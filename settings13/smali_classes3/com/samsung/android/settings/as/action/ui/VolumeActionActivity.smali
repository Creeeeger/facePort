.class public Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "VolumeActionActivity.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/widget/ImageView;

.field private mIconActiveColor:Landroid/content/res/ColorStateList;

.field private mIconMutedColor:Landroid/content/res/ColorStateList;

.field private mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

.field private mStreamType:I

.field private mVolumeLevel:I

.field private mVolumeMax:I

.field private mVolumeMin:I


# direct methods
.method public static synthetic $r8$lambda$53-IFXgFQwTZ74Tg90ISMPK0zoc(Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iBTuKn-SCUx8SX7vdvLMpQrV5_8(Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIcon(Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIconActiveColor(Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;)Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mIconActiveColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIconMutedColor(Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;)Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mIconMutedColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSeekBar(Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;)Landroidx/appcompat/widget/SeslSeekBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVolumeMin(Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mVolumeMin:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmVolumeLevel(Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mVolumeLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private getIconRes()I
    .locals 2

    .line 87
    sget v0, Lcom/android/settings/R$drawable;->ic_routines_ic_sounds:I

    .line 88
    iget p0, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mStreamType:I

    if-eqz p0, :cond_1

    const/16 v1, 0xb

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    sget v0, Lcom/android/settings/R$drawable;->tw_ic_audio_bixby_mtrl:I

    goto :goto_0

    .line 90
    :cond_1
    sget v0, Lcom/android/settings/R$drawable;->tw_ic_audio_call_mtrl:I

    :goto_0
    return v0
.end method

.method private initIcon()V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->getIconRes()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    sget v0, Lcom/android/settings/R$color;->sec_volume_icon_color:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mIconActiveColor:Landroid/content/res/ColorStateList;

    .line 82
    sget v0, Lcom/android/settings/R$color;->sec_volume_icon_no_sound_color:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mIconMutedColor:Landroid/content/res/ColorStateList;

    .line 83
    iget-object v1, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mIcon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mVolumeLevel:I

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mIconActiveColor:Landroid/content/res/ColorStateList;

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private initSeekBar()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMin(I)V

    .line 101
    iget-object v0, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget v1, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mVolumeMax:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setSeamless(Z)V

    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->fromIntent(Landroid/content/Intent;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object v0

    .line 104
    iget v1, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mVolumeLevel:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "volume_level"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 105
    iget-object v1, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 106
    iget-object v0, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    new-instance v1, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity$1;-><init>(Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 3

    .line 53
    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->newInstance()Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object p1

    .line 54
    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;-><init>()V

    .line 55
    iget-object v1, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "volume_level"

    invoke-virtual {p1, v2, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 56
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;->setParameterValues(Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;)Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;

    .line 57
    invoke-virtual {v0}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;->build()Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult;

    move-result-object p1

    .line 58
    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult;->sendActivityResult(Landroid/app/Activity;)V

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 0

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public initVolume(I)V
    .locals 1

    .line 66
    iput p1, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mStreamType:I

    .line 67
    iget-object v0, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMinVolumeInt(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mVolumeMin:I

    .line 68
    iget-object v0, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mVolumeMax:I

    .line 69
    iget-object v0, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mVolumeLevel:I

    .line 70
    iget p1, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mStreamType:I

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 71
    sget p1, Lcom/android/settings/R$string;->sec_bixby_voice_volume:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 73
    sget p1, Lcom/android/settings/R$string;->sec_sound_in_call_volume:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 75
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->initSeekBar()V

    .line 76
    invoke-direct {p0}, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->initIcon()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 37
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "VolumeActionActivity"

    const-string v0, "OnCreate"

    .line 38
    invoke-static {p1, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 p1, 0x1

    .line 42
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 43
    sget p1, Lcom/android/settings/R$layout;->routine_volume_action_layout:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 46
    sget p1, Lcom/android/settings/R$id;->volume_default_icon:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mIcon:Landroid/widget/ImageView;

    .line 47
    sget p1, Lcom/android/settings/R$id;->volume_row_slider:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SeslSeekBar;

    iput-object p1, p0, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 49
    sget p1, Lcom/android/settings/R$id;->btn_done:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 50
    sget v0, Lcom/android/settings/R$id;->btn_cancel:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 52
    new-instance v1, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    new-instance p1, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
