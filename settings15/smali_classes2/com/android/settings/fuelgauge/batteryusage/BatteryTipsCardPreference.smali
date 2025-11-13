.class public Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsCardPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mButtonColorResourceId:I

.field mDismissButtonLabel:Ljava/lang/CharSequence;

.field public mIconResourceId:I

.field mMainButtonLabel:Ljava/lang/CharSequence;

.field public mOnConfirmListener:Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController$$ExternalSyntheticLambda0;

.field public mOnRejectListener:Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsCardPreference;->mIconResourceId:I

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsCardPreference;->mButtonColorResourceId:I

    const p2, 0x7f0d0081

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->setViewId()V

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a1041

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a01b3

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0913

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsCardPreference;->mMainButtonLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a053e

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsCardPreference;->mDismissButtonLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsCardPreference;->mButtonColorResourceId:I

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsCardPreference;->mButtonColorResourceId:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setBackgroundColor(I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsCardPreference;->mIconResourceId:I

    if-eqz v0, :cond_1

    const v0, 0x7f0a0797

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsCardPreference;->mIconResourceId:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0913

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a01b3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0a053e

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsCardPreference;->mOnRejectListener:Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController$$ExternalSyntheticLambda0;

    if-eqz p0, :cond_2

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {p1, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->$r8$lambda$yKsko-cUQrjRTXkYMx6OXw-rDTs(Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsCardPreference;->mOnConfirmListener:Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController$$ExternalSyntheticLambda0;

    if-eqz p0, :cond_2

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {p1, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->$r8$lambda$j3e2OC_lNZlQeQLlGHFHIs5nnY8(Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;I)V

    :cond_2
    :goto_1
    return-void
.end method
