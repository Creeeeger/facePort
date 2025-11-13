.class public final Lcom/samsung/android/settings/asbase/routine/action/ui/SoundModeActionActivity;
.super Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/samsung/android/settings/asbase/routine/action/ui/SoundModeActionActivity;",
        "Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;",
        "<init>",
        "()V",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 14

    invoke-super {p0, p1}, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f14279f

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0987

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type com.samsung.android.settings.asbase.widget.SecSoundMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->soundMode:Lcom/samsung/android/settings/asbase/widget/SecSoundMode;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->hasVibrator(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    iput v0, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnVibrateVisible:I

    :cond_0
    const v0, 0x7f1427a2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getString(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f1427a3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f1427a1

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->textSound:Ljava/lang/String;

    iput-object v3, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->textVibrate:Ljava/lang/String;

    iput-object v4, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->textMute:Ljava/lang/String;

    const-string/jumbo v0, "onButtonSelectedListener"

    iget-object v3, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->onButtonSelectedListener:Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity$onModeChangedListener$1;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->listener:Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity$onModeChangedListener$1;

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->getCurrentMode()I

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->fromIntent(Landroid/content/Intent;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v8, "as_do_not_change_volume"

    invoke-virtual {v6, v8, v7}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "getBoolean(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    new-instance v7, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "getContext(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnSound:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    new-instance v7, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnVibrate:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    new-instance v7, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnMute:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    new-instance v7, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;-><init>(Landroid/content/Context;)V

    iput-object v7, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->iconMotion:Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

    iput v0, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->selectedPosition:I

    iget-object v0, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnSound:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    const-string v7, "btnSound"

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1, v5}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->bindView(Lcom/samsung/android/settings/asbase/widget/SecSoundMode;I)V

    iget-object v0, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnVibrate:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    const-string v8, "btnVibrate"

    if-eqz v0, :cond_14

    invoke-virtual {v0, p1, v4}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->bindView(Lcom/samsung/android/settings/asbase/widget/SecSoundMode;I)V

    iget-object v0, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnMute:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    const-string v9, "btnMute"

    if-eqz v0, :cond_13

    invoke-virtual {v0, p1, v3}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->bindView(Lcom/samsung/android/settings/asbase/widget/SecSoundMode;I)V

    invoke-virtual {p1, v4}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->startModeChangeAnimation(Z)V

    const v0, 0x7f0a0eb4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v10, "requireViewById(...)"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->soundModeContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v11, 0x7f0d09ed

    invoke-virtual {v0, v11, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v11, "inflate(...)"

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->volumeOptionView:Landroid/view/View;

    iget-object v11, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->soundModeContainer:Landroid/view/ViewGroup;

    if-eqz v11, :cond_12

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->volumeOptionView:Landroid/view/View;

    const-string/jumbo v11, "volumeOptionView"

    if-eqz v0, :cond_11

    const v12, 0x7f0a1123

    invoke-virtual {v0, v12}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v12, "null cannot be cast to non-null type android.widget.CheckBox"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->checkBox:Landroid/widget/CheckBox;

    iget-object v0, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->volumeOptionView:Landroid/view/View;

    if-eqz v0, :cond_10

    new-instance v11, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$onBind$1;

    const/4 v12, 0x1

    invoke-direct {v11, p1, v12}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$onBind$1;-><init>(Lcom/samsung/android/settings/asbase/widget/SecSoundMode;I)V

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->checkBox:Landroid/widget/CheckBox;

    const-string v11, "checkBox"

    if-eqz v0, :cond_f

    new-instance v12, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$addVolumeOptionView$2;

    invoke-direct {v12, p1}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$addVolumeOptionView$2;-><init>(Lcom/samsung/android/settings/asbase/widget/SecSoundMode;)V

    invoke-virtual {v0, v12}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0a0547

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->dividerView:Landroid/view/View;

    iget v12, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnVibrateVisible:I

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0907

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v12, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$onBind$1;

    const/4 v13, 0x0

    invoke-direct {v12, p1, v13}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$onBind$1;-><init>(Lcom/samsung/android/settings/asbase/widget/SecSoundMode;I)V

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a096d

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v12, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$onBind$1;

    const/4 v13, 0x2

    invoke-direct {v12, p1, v13}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$onBind$1;-><init>(Lcom/samsung/android/settings/asbase/widget/SecSoundMode;I)V

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0759

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v10, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$onBind$1;

    const/4 v12, 0x3

    invoke-direct {v10, p1, v12}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$onBind$1;-><init>(Lcom/samsung/android/settings/asbase/widget/SecSoundMode;I)V

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnSound:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    if-eqz v0, :cond_e

    iget-object v10, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->textSound:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->setText(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnVibrate:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    if-eqz v0, :cond_d

    iget-object v10, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->textVibrate:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->setText(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnMute:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    if-eqz v0, :cond_c

    iget-object v10, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->textMute:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->setText(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnSound:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->button:Landroid/view/View;

    const-string v7, "button"

    if-eqz v0, :cond_a

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnVibrate:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    if-eqz v0, :cond_9

    iget v8, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnVibrateVisible:I

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->button:Landroid/view/View;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnMute:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->button:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget v0, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->selectedPosition:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->updateButtonStatus(I)V

    iget-object v0, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->checkBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->modeContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->checkBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->isVolumeOptionSelected:Z

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f14268e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3, p1, v5}, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->addVolumeRow(ILjava/lang/String;Z)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f14284a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, v5}, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->addVolumeRow(ILjava/lang/String;Z)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f142850

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4, p1, v4}, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->addVolumeRow(ILjava/lang/String;Z)V

    return-void

    :cond_3
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string/jumbo p0, "modeContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_9
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_b
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_c
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_d
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_e
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_f
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_10
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_11
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_12
    const-string/jumbo p0, "soundModeContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_13
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_14
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_15
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method
