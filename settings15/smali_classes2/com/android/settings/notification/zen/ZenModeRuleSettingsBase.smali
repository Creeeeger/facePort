.class public abstract Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;
.super Lcom/android/settings/notification/zen/ZenModeSettingsBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mBottomBar:Landroid/view/View;

.field public mCancelRuleClickListener:Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$SaveRuleClickListener;

.field public mDaysEmpty:Z

.field public mId:Ljava/lang/String;

.field public mIsFirst:Z

.field public mIsNew:Z

.field public mIsPortrait:Z

.field public mMenuLandscape:Landroid/view/Menu;

.field public mNameEmpty:Z

.field public mRule:Landroid/app/AutomaticZenRule;

.field public mSaveRuleClickListener:Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$SaveRuleClickListener;

.field public mSecScheduleTimeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->DEBUG:Z

    sput-boolean v0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mIsFirst:Z

    iput-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mIsNew:Z

    iput-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mNameEmpty:Z

    iput-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mDaysEmpty:Z

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ZenModeSettings"

    sget-boolean v2, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onCreate getIntent()="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    const-string p1, "No intent"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->toastAndFinish$1()V

    return-void

    :cond_1
    const-string v3, "android.service.notification.extra.RULE_ID"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v0, :cond_2

    const-string v0, "rule id is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mIsNew:Z

    :cond_2
    if-eqz v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "mId="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-static {v0, v4, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iput-boolean v3, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mIsFirst:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->refreshRuleOrFinish()Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    :cond_4
    const-string v0, "scheduleId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v0, "rulename"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "rulestate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    const-string v0, "dialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mSecScheduleTimeType:I

    if-eqz v2, :cond_5

    const-string p1, "restoreRule"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance p1, Landroid/app/AutomaticZenRule;

    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getScheduleConditionProvider()Landroid/content/ComponentName;

    move-result-object v6

    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZ)V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->setRule(Landroid/app/AutomaticZenRule;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->toastAndFinish$1()V

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v3, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mIsPortrait:Z

    new-instance p1, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$SaveRuleClickListener;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$SaveRuleClickListener;-><init>(Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;I)V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mCancelRuleClickListener:Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$SaveRuleClickListener;

    new-instance p1, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$SaveRuleClickListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$SaveRuleClickListener;-><init>(Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;I)V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mSaveRuleClickListener:Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$SaveRuleClickListener;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->onCreateInternal()V

    return-void
.end method

.method public abstract onCreateInternal()V
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iget-boolean p2, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mIsPortrait:Z

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p2

    const v0, 0x7f0f0009

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mMenuLandscape:Landroid/view/Menu;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->updateSaveButton()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0079

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->saveRule()V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a0074

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mIsPortrait:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mBottomBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a0cea

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecBottomBarButton;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mSaveRuleClickListener:Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$SaveRuleClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v1, 0x7f0a02cf

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecBottomBarButton;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mCancelRuleClickListener:Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$SaveRuleClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mBottomBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mIsFirst:Z

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mIsFirst:Z

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->refreshRuleOrFinish()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->updateControlsInternal()V

    :cond_5
    sget-boolean p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz p0, :cond_6

    const-string p0, "ZenModeSettings"

    const-string v0, "onResume"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "ZenModeSettings"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scheduleId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rulename"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    const-string v1, "rulestate"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "dialogState"

    iget v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mSecScheduleTimeType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f0a0299

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mBottomBar:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/android/settings/Utils;->setActionBarShadowAnimation(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public final onZenModeConfigChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->refreshRuleOrFinish()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->updateControlsInternal()V

    :cond_0
    return-void
.end method

.method public final refreshRuleOrFinish()Z
    .locals 15

    iget-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mIsNew:Z

    const-string v1, "mRule="

    const-string v2, "ZenModeSettings"

    sget-boolean v3, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->DEBUG:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mIsFirst:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    sget-object v6, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    iput-object v6, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    const/16 v6, 0x16

    iput v6, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    const/4 v6, 0x7

    iput v6, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v11

    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getScheduleConditionProvider()Landroid/content/ComponentName;

    move-result-object v9

    new-instance v0, Landroid/app/AutomaticZenRule;

    const/4 v13, 0x2

    const/4 v14, 0x1

    const-string v8, ""

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v14}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZ)V

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    if-eqz v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->setRule(Landroid/app/AutomaticZenRule;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->toastAndFinish$1()V

    return v5

    :cond_1
    return v4

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mIsFirst:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    if-eqz v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->setRule(Landroid/app/AutomaticZenRule;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->toastAndFinish$1()V

    return v5

    :cond_4
    return v4

    :cond_5
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->setRule(Landroid/app/AutomaticZenRule;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->toastAndFinish$1()V

    return v5

    :cond_6
    return v4
.end method

.method public final saveRule()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mIsNew:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, v2}, Landroid/app/AutomaticZenRule;->setModified(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, v0, Lcom/android/settings/notification/zen/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    const-string v0, "ZenModeSettings"

    const-string v1, "Not able to create schedule"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->isModified()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, v2}, Landroid/app/AutomaticZenRule;->setModified(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/zen/ZenModeBackend;->updateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)V

    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public abstract setRule(Landroid/app/AutomaticZenRule;)Z
.end method

.method public final toastAndFinish$1()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    const v1, 0x7f1438cc

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public abstract updateControlsInternal()V
.end method

.method public final updateEventRule(Landroid/service/notification/ZenModeConfig$EventInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule;->setConditionId(Landroid/net/Uri;)V

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/service/notification/SystemZenRules;->getTriggerDescriptionForScheduleEvent(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AutomaticZenRule;->setTriggerDescription(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->updateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)V

    return-void
.end method

.method public final updateSaveButton()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0cea

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecBottomBarButton;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mDaysEmpty:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mNameEmpty:Z

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/widget/SecBottomBarButton;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mMenuLandscape:Landroid/view/Menu;

    if-eqz v0, :cond_3

    const v3, 0x7f0a0079

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v4, 0x7f142310

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mMenuLandscape:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mDaysEmpty:Z

    if-nez v3, :cond_2

    iget-boolean p0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mNameEmpty:Z

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_3
    return-void
.end method

.method public final updateScheduleRule(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule;->setConditionId(Landroid/net/Uri;)V

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Landroid/service/notification/SystemZenRules;->getTriggerDescriptionForScheduleTime(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/AutomaticZenRule;->setTriggerDescription(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
