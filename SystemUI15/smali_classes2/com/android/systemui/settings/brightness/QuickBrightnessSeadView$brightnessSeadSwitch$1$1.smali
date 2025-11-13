.class public final Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$brightnessSeadSwitch$1$1;
.super Ljava/lang/Object;
.source "qb/95038059 db3c75f3dfc1e198c5997313fff67c86ad775b87c3fe11e5e20cca6a5c0102e0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $this_apply:Landroidx/appcompat/widget/SwitchCompat;

.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SwitchCompat;Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$brightnessSeadSwitch$1$1;->$this_apply:Landroidx/appcompat/widget/SwitchCompat;

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$brightnessSeadSwitch$1$1;->this$0:Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;

    iput-object p3, p0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$brightnessSeadSwitch$1$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    instance-of v0, p1, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$brightnessSeadSwitch$1$1;->$this_apply:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$brightnessSeadSwitch$1$1;->this$0:Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$brightnessSeadSwitch$1$1;->$context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    sget p1, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;->$r8$clinit:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "ead_enabled"

    const/4 v1, -0x2

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
