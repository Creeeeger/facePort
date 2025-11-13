.class public final Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$initBrightnessDetail$1$1$1;
.super Ljava/lang/Object;
.source "qb/95038059 db3c75f3dfc1e198c5997313fff67c86ad775b87c3fe11e5e20cca6a5c0102e0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $this_apply:Lcom/android/systemui/qs/SecQSSwitchPreference;

.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;Lcom/android/systemui/qs/SecQSSwitchPreference;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$initBrightnessDetail$1$1$1;->this$0:Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$initBrightnessDetail$1$1$1;->$this_apply:Lcom/android/systemui/qs/SecQSSwitchPreference;

    iput-object p3, p0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$initBrightnessDetail$1$1$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$initBrightnessDetail$1$1$1;->this$0:Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$initBrightnessDetail$1$1$1;->$this_apply:Lcom/android/systemui/qs/SecQSSwitchPreference;

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$initBrightnessDetail$1$1$1;->$context:Landroid/content/Context;

    sget v2, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7f0a0d3c

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    const-string v2, "ead_enabled"

    const/4 v3, -0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v2, v6, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v4, :cond_0

    move v6, v4

    :cond_0
    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    new-instance v5, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$brightnessSeadSwitch$1$1;

    invoke-direct {v5, v0, p1, v1}, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$brightnessSeadSwitch$1$1;-><init>(Landroidx/appcompat/widget/SwitchCompat;Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$brightnessSeadSwitch$1$2;

    invoke-direct {v5, v0, p1, v1}, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$brightnessSeadSwitch$1$2;-><init>(Landroidx/appcompat/widget/SwitchCompat;Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$initBrightnessDetail$1$1$1;->this$0:Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$initBrightnessDetail$1$1$1;->$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_2
    return-void
.end method
