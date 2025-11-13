.class public Lcom/samsung/android/settings/as/action/ui/BixbyVolumeActionActivity;
.super Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;
.source "BixbyVolumeActionActivity.java"


# direct methods
.method public static synthetic $r8$lambda$fR2Xc0zVhVP5ezNmLFD6xaxrT7Q(Lcom/samsung/android/settings/as/action/ui/BixbyVolumeActionActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/action/ui/BixbyVolumeActionActivity;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fsAc5M21m4uxzMLkGu-gS8HkFSs(Lcom/samsung/android/settings/as/action/ui/BixbyVolumeActionActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/action/ui/BixbyVolumeActionActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;-><init>()V

    return-void
.end method

.method private isEnabledBixbyVolume()Z
    .locals 1

    .line 54
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSupportBixby()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/as/utils/SoundUtils;->isBixbyVoiceEnable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 1

    .line 39
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "bixbyvoice://com.samsung.android.bixby.agent/GoToFeature?featureName=BixbySettings"

    .line 40
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 44
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 0

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 23
    invoke-super {p0, p1}, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/settings/as/action/ui/BixbyVolumeActionActivity;->isEnabledBixbyVolume()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    .line 25
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->initVolume(I)V

    goto :goto_0

    .line 27
    :cond_0
    sget p1, Lcom/android/settings/R$layout;->routine_open_bixby_action_layout:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 29
    sget p1, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 34
    :cond_1
    sget p1, Lcom/android/settings/R$id;->btn_done:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 35
    sget v0, Lcom/android/settings/R$id;->btn_cancel:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 36
    sget v1, Lcom/android/settings/R$string;->sec_open_bixby_title:I

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 38
    new-instance v1, Lcom/samsung/android/settings/as/action/ui/BixbyVolumeActionActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/as/action/ui/BixbyVolumeActionActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/as/action/ui/BixbyVolumeActionActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    new-instance p1, Lcom/samsung/android/settings/as/action/ui/BixbyVolumeActionActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/as/action/ui/BixbyVolumeActionActivity$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/as/action/ui/BixbyVolumeActionActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method
