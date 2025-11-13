.class public final Lcom/samsung/android/settings/asbase/widget/SecSoundMode;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u000c\rB\u0013\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001d\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B%\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/samsung/android/settings/asbase/widget/SecSoundMode;",
        "Landroid/widget/LinearLayout;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "MultiButtonItem",
        "1",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public btnMute:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

.field public btnSound:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

.field public btnVibrate:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

.field public btnVibrateVisible:I

.field public checkBox:Landroid/widget/CheckBox;

.field public dividerView:Landroid/view/View;

.field public iconMotion:Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

.field public listener:Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity$onModeChangedListener$1;

.field public ringerMode:I

.field public selectedPosition:I

.field public soundModeContainer:Landroid/view/ViewGroup;

.field public textMute:Ljava/lang/String;

.field public textSound:Ljava/lang/String;

.field public textVibrate:Ljava/lang/String;

.field public volumeOptionView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->textSound:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->textVibrate:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->textMute:Ljava/lang/String;

    const/4 p1, 0x2

    iput p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->ringerMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->textSound:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->textVibrate:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->textMute:Ljava/lang/String;

    const/4 p1, 0x2

    iput p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->ringerMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->textSound:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->textVibrate:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->textMute:Ljava/lang/String;

    const/4 p1, 0x2

    iput p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->ringerMode:I

    return-void
.end method

.method public static final access$callModeSelectListener(Lcom/samsung/android/settings/asbase/widget/SecSoundMode;I)V
    .locals 5

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->listener:Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity$onModeChangedListener$1;

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity$onModeChangedListener$1;->this$0:Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->rowList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;

    invoke-virtual {v2, p1}, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->updateFromRinger(I)V

    const/4 v2, 0x0

    const-string/jumbo v3, "rowContainer"

    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->rowContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->rowContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    iget-boolean v3, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->isVolumeOptionSelected:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void

    :cond_5
    const-string p0, "listener"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final startModeChangeAnimation(Z)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnSound:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->imgIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    iget-object v5, v0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->waveS:Landroid/widget/ImageView;

    if-eqz v5, :cond_1

    iget-object v6, v0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->waveL:Landroid/widget/ImageView;

    if-eqz v6, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->iconMotion:Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    move v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->startSoundAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    const-string p0, "iconMotion"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string p0, "btnSound"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final updateButtonStatus(I)V
    .locals 10

    const/4 v0, 0x2

    const-string/jumbo v1, "volumeOptionView"

    const/4 v2, 0x1

    const-string v3, "btnSound"

    const-string v4, "btnVibrate"

    const-string v5, "btnMute"

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz p1, :cond_19

    const/16 v8, 0x8

    const-string v9, "iconMotion"

    if-eq p1, v2, :cond_d

    if-eq p1, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnMute:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->getDot()Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnSound:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->getDot()Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnVibrate:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->getDot()Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->iconMotion:Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnMute:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    if-eqz v0, :cond_4

    iget-object v9, v0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->imgIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->splashView:Landroid/widget/ImageView;

    invoke-virtual {p1, v9, v0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->startModeMuteChangeAnimation(Landroid/view/View;Landroid/view/View;)V

    goto :goto_1

    :cond_3
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_4
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_5
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_7
    :goto_1
    iput v6, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->ringerMode:I

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnSound:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    if-eqz p1, :cond_b

    invoke-virtual {p1, v6}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->setSelected(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnVibrate:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v6}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->setSelected(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnMute:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->setSelected(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->volumeOptionView:Landroid/view/View;

    if-eqz p0, :cond_8

    invoke-virtual {p0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_9
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_a
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_b
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_c
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_d
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnVibrate:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->getDot()Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnSound:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->getDot()Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnMute:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->getDot()Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_2

    :cond_e
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_f
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnVibrate:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    if-eqz p1, :cond_11

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->imgIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->iconMotion:Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->startVibrationAnimation(Landroid/view/View;)V

    goto :goto_3

    :cond_10
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_11
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_12
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_13
    :goto_3
    iput v2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->ringerMode:I

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnSound:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    if-eqz p1, :cond_17

    invoke-virtual {p1, v6}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->setSelected(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnVibrate:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    if-eqz p1, :cond_16

    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->setSelected(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnMute:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    if-eqz p1, :cond_15

    invoke-virtual {p1, v6}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->setSelected(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->volumeOptionView:Landroid/view/View;

    if-eqz p0, :cond_14

    invoke-virtual {p0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_14
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_15
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_16
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_17
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_18
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_19
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnSound:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->getDot()Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnVibrate:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->getDot()Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1b

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnMute:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->getDot()Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_4

    :cond_1a
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_1b
    :goto_4
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->startModeChangeAnimation(Z)V

    goto :goto_5

    :cond_1c
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_1d
    :goto_5
    iput v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->ringerMode:I

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnSound:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    if-eqz p1, :cond_21

    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->setSelected(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnVibrate:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    if-eqz p1, :cond_20

    invoke-virtual {p1, v6}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->setSelected(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->btnMute:Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;

    if-eqz p1, :cond_1f

    invoke-virtual {p1, v6}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$MultiButtonItem;->setSelected(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->volumeOptionView:Landroid/view/View;

    if-eqz p0, :cond_1e

    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    return-void

    :cond_1e
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_1f
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_20
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_21
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_22
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7
.end method
