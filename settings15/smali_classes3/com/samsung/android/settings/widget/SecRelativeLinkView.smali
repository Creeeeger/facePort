.class public final Lcom/samsung/android/settings/widget/SecRelativeLinkView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLastClickTime:J

.field public final mLinkContainer:Landroid/widget/LinearLayout;

.field public final mParentView:Landroid/view/View;

.field public mTargetFragment:Lcom/android/settings/SettingsPreferenceFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0a00

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mParentView:Landroid/view/View;

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mParentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mParentView:Landroid/view/View;

    const v0, 0x7f0a08ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mLinkContainer:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mLinkContainer:Landroid/widget/LinearLayout;

    const-string v1, "RelativeLinkView"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    const-string p0, "The current screen doesn\'t have link data."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mContext:Landroid/content/Context;

    const-string v2, "Settings_Relative_Link_View"

    const-string v3, "hide"

    invoke-static {v0, v2, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    instance-of v0, p1, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/settings/SettingsPreferenceFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mParentView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->setFooterView(Landroid/view/View;Z)V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mTargetFragment:Lcom/android/settings/SettingsPreferenceFragment;

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Failed to attach relative view. "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/widget/TextView;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mContext:Landroid/content/Context;

    const v3, 0x7f15096a

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Landroidx/preference/SecPreferenceUtils;->applyTitleLargerTextIfNeeded(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mParentView:Landroid/view/View;

    const v2, 0x7f0a08ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Landroidx/preference/SecPreferenceUtils;->applyTitleLargerTextIfNeeded(Landroid/widget/TextView;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    const v1, 0x7f080ab4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/samsung/android/settings/widget/SecRelativeLinkView$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView$1;-><init>(Lcom/samsung/android/settings/widget/SecRelativeLinkView;Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mLinkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final startFooterViewLink(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V
    .locals 6

    const-string v0, "RelativeLinkView"

    const-string/jumbo v1, "setHighlightMenuKey : "

    iget v2, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    if-lez v2, :cond_0

    iget-object v2, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    iget-object v3, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(ILjava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsApplication;

    invoke-virtual {v2}, Lcom/android/settings/SettingsApplication;->getHomeActivity()Lcom/android/settings/homepage/SettingsHomepageActivity;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v2, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

    iget-object v2, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/homepage/TopLevelSettings;->setHighlightMenuKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->runType:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "Broadcast"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    :cond_2
    iget-object v1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->fragment:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    iget v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->linkedTitleRes:I

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    :goto_1
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object p0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->fragment:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, v4, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    iget-object p0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->extras:Landroid/os/Bundle;

    iput-object p0, v4, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    iget p0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    if-lez p0, :cond_4

    move v2, p0

    :cond_4
    iput v2, v4, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_2

    :cond_5
    iget-object v1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_9

    iget v1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    if-lez v1, :cond_6

    iget-object v1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const-string v4, "callerMetric"

    iget v5, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const-string v4, "flowId"

    iget-object v5, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    invoke-static {v1, v4}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/android/settings/Utils;->isLaunchModeSingleInstance(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, -0x1

    :cond_7
    invoke-virtual {p0, v3, p1, v2, v3}, Landroid/content/Context;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_2

    :cond_8
    const-string p0, "intent is not available"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_2
    return-void
.end method
