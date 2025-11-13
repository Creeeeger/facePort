.class Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$MWIPSHistoryPreference;
.super Landroidx/preference/Preference;
.source "MobileWIPSSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MWIPSHistoryPreference"
.end annotation


# instance fields
.field private btn:Landroid/widget/LinearLayout;

.field private btnImg:Landroid/widget/TextView;

.field private newbadge:Z

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;Landroid/content/Context;Z)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$MWIPSHistoryPreference;->this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;

    .line 427
    invoke-direct {p0, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 428
    sget p1, Lcom/android/settings/R$layout;->sec_preference_mwips_history:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 429
    iput-boolean p3, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$MWIPSHistoryPreference;->newbadge:Z

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 434
    sget v0, Lcom/android/settings/R$id;->wifi_new_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$MWIPSHistoryPreference;->btn:Landroid/widget/LinearLayout;

    .line 435
    sget v0, Lcom/android/settings/R$id;->badge:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$MWIPSHistoryPreference;->btnImg:Landroid/widget/TextView;

    .line 436
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$MWIPSHistoryPreference;->newbadge:Z

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$MWIPSHistoryPreference;->btn:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$MWIPSHistoryPreference;->btn:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 441
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method
