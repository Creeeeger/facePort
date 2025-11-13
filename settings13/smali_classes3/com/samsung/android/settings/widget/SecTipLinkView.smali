.class public Lcom/samsung/android/settings/widget/SecTipLinkView;
.super Landroid/widget/LinearLayout;
.source "SecTipLinkView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mParentView:Landroid/view/View;

.field private mTipContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/settings/widget/SecTipLinkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecTipLinkView;->mContext:Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Lcom/samsung/android/settings/widget/SecTipLinkView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/widget/SecTipLinkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecTipLinkView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->sec_widget_tip_link_footerview:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecTipLinkView;->mParentView:Landroid/view/View;

    .line 68
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 69
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecTipLinkView;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecTipLinkView;->mParentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->tip_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecTipLinkView;->mTipContainer:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Object;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecTipLinkView;->mTipContainer:Landroid/widget/LinearLayout;

    const-string v1, "SecTipLinkView"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    const-string p0, "The current screen doesn\'t have link data."

    .line 143
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 147
    :cond_0
    instance-of v0, p1, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_1

    .line 148
    check-cast p1, Lcom/android/settings/SettingsPreferenceFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecTipLinkView;->mParentView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setFooterView(Landroid/view/View;Z)V

    goto :goto_0

    .line 150
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to attach relative view. "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 113
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 114
    new-instance v0, Landroid/widget/TextView;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecTipLinkView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$style;->sec_tip_desc:I

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 116
    :cond_1
    new-instance v0, Landroid/widget/TextView;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecTipLinkView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$style;->sec_tip_link:I

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 118
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    const/4 v1, 0x1

    .line 119
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 120
    sget v1, Lcom/android/settings/R$drawable;->sec_widget_tip_link_item_background:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 121
    new-instance v1, Lcom/samsung/android/settings/widget/SecTipLinkView$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/widget/SecTipLinkView$1;-><init>(Lcom/samsung/android/settings/widget/SecTipLinkView;Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecTipLinkView;->mContext:Landroid/content/Context;

    iget p1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 132
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecTipLinkView;->mTipContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public resetTipData()V
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecTipLinkView;->mTipContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method

.method public startFooterViewLink(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V
    .locals 3

    .line 74
    iget v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    if-lez v0, :cond_0

    iget v1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    if-lez v1, :cond_0

    .line 75
    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 77
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->runType:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "Broadcast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecTipLinkView;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 79
    :cond_1
    iget-object v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 81
    iget v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->linkedTitleRes:I

    if-eqz v0, :cond_2

    goto :goto_0

    .line 84
    :cond_2
    iget v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 85
    :goto_0
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecTipLinkView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object p0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->fragment:Ljava/lang/String;

    .line 86
    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    iget-object v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->extras:Landroid/os/Bundle;

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 89
    iget p1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    if-lez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_2

    .line 93
    :cond_4
    iget-object v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_7

    .line 94
    iget v1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    if-lez v1, :cond_5

    iget v2, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    if-lez v2, :cond_5

    const-string v2, "callerMetric"

    .line 95
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    iget-object v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iget v1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    const-string v2, "flowId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecTipLinkView;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 100
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecTipLinkView;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_6
    const-string p0, "SecTipLinkView"

    const-string p1, "intent is not available"

    .line 102
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    return-void
.end method
