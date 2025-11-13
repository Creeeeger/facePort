.class public final Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$brightnessSeadSwitch$1$2;
.super Ljava/lang/Object;
.source "qb/95038059 db3c75f3dfc1e198c5997313fff67c86ad775b87c3fe11e5e20cca6a5c0102e0"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $this_apply:Landroidx/appcompat/widget/SwitchCompat;

.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SwitchCompat;Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$brightnessSeadSwitch$1$2;->$this_apply:Landroidx/appcompat/widget/SwitchCompat;

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$brightnessSeadSwitch$1$2;->this$0:Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;

    iput-object p3, p0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$brightnessSeadSwitch$1$2;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$brightnessSeadSwitch$1$2;->$this_apply:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$brightnessSeadSwitch$1$2;->this$0:Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$brightnessSeadSwitch$1$2;->$context:Landroid/content/Context;

    const/4 v2, -0x2

    if-eqz p2, :cond_3

    iget-boolean v3, v0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;->cameraInUse:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notified_ead_camera_use"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    move v5, v4

    :cond_1
    iput-boolean v5, v0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;->cameraInUse:Z

    if-nez v5, :cond_4

    iget-object v3, v0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;->dialogCameraInUse:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-nez v3, :cond_2

    new-instance v3, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v4, 0x7f140604

    invoke-direct {v3, v1, v4}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f131091

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v4, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$createDialog$1$1;

    invoke-direct {v4, v0, v1}, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$createDialog$1$1;-><init>(Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object v3, v0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;->dialogCameraInUse:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_2
    iget-object v3, v0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;->dialogCameraInUse:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_3
    sget v3, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    :goto_0
    sget v3, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ead_enabled"

    invoke-static {v0, v1, p2, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    if-eqz p2, :cond_5

    const p1, 0x7f131321

    goto :goto_1

    :cond_5
    const p1, 0x7f131320

    :goto_1
    iget-object p2, p0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$brightnessSeadSwitch$1$2;->$this_apply:Landroidx/appcompat/widget/SwitchCompat;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$brightnessSeadSwitch$1$2;->$context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/CompoundButton;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method
