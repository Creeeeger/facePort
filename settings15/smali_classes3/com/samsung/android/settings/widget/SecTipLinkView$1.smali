.class public final Lcom/samsung/android/settings/widget/SecTipLinkView$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/widget/SecTipLinkView;

.field public final synthetic val$linkData:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/widget/SecTipLinkView;Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecTipLinkView$1;->this$0:Lcom/samsung/android/settings/widget/SecTipLinkView;

    iput-object p2, p0, Lcom/samsung/android/settings/widget/SecTipLinkView$1;->val$linkData:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecTipLinkView$1;->this$0:Lcom/samsung/android/settings/widget/SecTipLinkView;

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecTipLinkView$1;->val$linkData:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    iget-object v1, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->runType:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "Broadcast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/samsung/android/settings/widget/SecTipLinkView;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->linkedTitleRes:I

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    :goto_0
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p1, p1, Lcom/samsung/android/settings/widget/SecTipLinkView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->fragment:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->extras:Landroid/os/Bundle;

    iput-object p1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    iget p0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    if-lez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    iput p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const-string v1, "callerMetric"

    iget v2, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const-string v1, "flowId"

    iget-object v2, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    iget-object v0, p1, Lcom/samsung/android/settings/widget/SecTipLinkView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p1, Lcom/samsung/android/settings/widget/SecTipLinkView;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_6
    const-string p0, "SecTipLinkView"

    const-string p1, "intent is not available"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    return-void
.end method
