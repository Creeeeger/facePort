.class public Lcom/samsung/android/settings/widget/SecRelativeLinkView;
.super Landroid/widget/LinearLayout;
.source "SecRelativeLinkView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLinkContainer:Landroid/widget/LinearLayout;

.field private mParentView:Landroid/view/View;

.field private mTargetFragment:Lcom/android/settings/SettingsPreferenceFragment;


# direct methods
.method static bridge synthetic -$$Nest$fgetmTargetFragment(Lcom/samsung/android/settings/widget/SecRelativeLinkView;)Lcom/android/settings/SettingsPreferenceFragment;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mTargetFragment:Lcom/android/settings/SettingsPreferenceFragment;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mContext:Landroid/content/Context;

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init()V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->sec_widget_relative_link_footerview:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mParentView:Landroid/view/View;

    .line 72
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mParentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->link_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mLinkContainer:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Object;)V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mLinkContainer:Landroid/widget/LinearLayout;

    const-string v1, "RelativeLinkView"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    const-string p0, "The current screen doesn\'t have link data."

    .line 193
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mContext:Landroid/content/Context;

    const-string v2, "Settings_Relative_Link_View"

    const-string v3, "hide"

    invoke-static {v0, v2, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 203
    :cond_1
    instance-of v0, p1, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_2

    .line 204
    check-cast p1, Lcom/android/settings/SettingsPreferenceFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mParentView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->setFooterView(Landroid/view/View;Z)V

    .line 205
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mTargetFragment:Lcom/android/settings/SettingsPreferenceFragment;

    goto :goto_0

    .line 207
    :cond_2
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

.method public getRelativeLinkView()Landroid/view/View;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mParentView:Landroid/view/View;

    return-object p0
.end method

.method public isValid()Z
    .locals 1

    .line 179
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mLinkContainer:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p0

    if-gtz p0, :cond_0

    const-string p0, "RelativeLinkView"

    const-string v0, "The current screen doesn\'t have link data."

    .line 180
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 147
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$style;->sec_relative_link_link:I

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-static {v0}, Landroidx/preference/SecPreferenceUtils;->applyTitleLargerTextIfNeeded(Landroid/widget/TextView;)V

    .line 149
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mParentView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->link_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Landroidx/preference/SecPreferenceUtils;->applyTitleLargerTextIfNeeded(Landroid/widget/TextView;)V

    const/4 v1, 0x1

    .line 150
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 151
    sget v1, Lcom/android/settings/R$drawable;->sec_widget_relative_link_item_background:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 153
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    new-instance v1, Lcom/samsung/android/settings/widget/SecRelativeLinkView$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView$1;-><init>(Lcom/samsung/android/settings/widget/SecRelativeLinkView;Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 165
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mLinkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public resetLinkData()V
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mLinkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method

.method public setTargetFragment(Ljava/lang/Object;)V
    .locals 1

    .line 219
    instance-of v0, p1, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 220
    check-cast p1, Lcom/android/settings/SettingsPreferenceFragment;

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mTargetFragment:Lcom/android/settings/SettingsPreferenceFragment;

    :cond_0
    return-void
.end method

.method public setTitleText(I)V
    .locals 1

    .line 78
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mParentView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->link_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1

    .line 82
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mParentView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->link_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public startFooterViewLink(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V
    .locals 5

    .line 100
    iget v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    if-lez v0, :cond_0

    iget v1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    if-lez v1, :cond_0

    .line 101
    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isSupportMultiPaneLayout(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "RelativeLinkView"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mContext:Landroid/content/Context;

    .line 105
    invoke-static {v0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mContext:Landroid/content/Context;

    .line 107
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsApplication;

    invoke-virtual {v0}, Lcom/android/settings/SettingsApplication;->getHomeActivity()Lcom/android/settings/homepage/SettingsHomepageActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHighlightMenuKey : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getMainFragment()Lcom/android/settings/homepage/TopLevelSettings;

    move-result-object v0

    iget-object v2, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/homepage/TopLevelSettings;->setHighlightMenuKey(Ljava/lang/String;Z)V

    .line 114
    :cond_2
    iget-object v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->runType:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v2, "Broadcast"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 116
    :cond_3
    iget-object v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->fragment:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 118
    iget v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->linkedTitleRes:I

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    iget v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 119
    :goto_0
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object p0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->fragment:Ljava/lang/String;

    .line 120
    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    iget-object v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->extras:Landroid/os/Bundle;

    .line 122
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 123
    iget p1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    if-lez p1, :cond_5

    move v2, p1

    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_1

    .line 127
    :cond_6
    iget-object v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_a

    .line 128
    iget v3, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    if-lez v3, :cond_7

    iget v4, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    if-lez v4, :cond_7

    const-string v4, "callerMetric"

    .line 129
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    iget-object v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iget v3, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    const-string v4, "flowId"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 134
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 135
    invoke-static {p0, p1}, Lcom/android/settings/Utils;->isLaunchModeSingleInstance(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v2, -0x1

    :cond_8
    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0, v0, p1, v2, v0}, Landroid/content/Context;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_1

    :cond_9
    const-string p0, "intent is not available"

    .line 137
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_1
    return-void
.end method
