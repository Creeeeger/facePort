.class public abstract Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;
.super Lcom/android/settings/notification/zen/ZenModeSettingsBase;
.source "ZenModeRuleSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$SaveRuleClickListener;,
        Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$CancelRuleClickListener;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z


# instance fields
.field protected mCancelRuleClickListener:Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$CancelRuleClickListener;

.field protected mContext:Landroid/content/Context;

.field protected mDaysEmpty:Z

.field protected mDisableListeners:Z

.field protected mId:Ljava/lang/String;

.field private mIsFirst:Z

.field protected mIsNew:Z

.field protected mNameEmpty:Z

.field protected mRule:Landroid/app/AutomaticZenRule;

.field protected mSaveRuleClickListener:Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$SaveRuleClickListener;

.field protected mSecScheduleTimeType:I


# direct methods
.method static bridge synthetic -$$Nest$mgetZenRule(Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;)Landroid/app/AutomaticZenRule;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->getZenRule()Landroid/app/AutomaticZenRule;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 45
    sget-boolean v0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->DEBUG:Z

    sput-boolean v0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mIsFirst:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mIsNew:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mNameEmpty:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mDaysEmpty:Z

    return-void
.end method

.method private defaultNewSchedule()Lcom/android/settings/notification/zen/ZenRuleInfo;
    .locals 1

    .line 185
    new-instance p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {p0}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 186
    sget-object v0, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    const/16 v0, 0x16

    .line 187
    iput v0, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    const/4 v0, 0x7

    .line 188
    iput v0, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 189
    new-instance v0, Lcom/android/settings/notification/zen/ZenRuleInfo;

    invoke-direct {v0}, Lcom/android/settings/notification/zen/ZenRuleInfo;-><init>()V

    .line 190
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settings/notification/zen/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    .line 191
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getScheduleConditionProvider()Landroid/content/ComponentName;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settings/notification/zen/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method private getNewDefaultZenRule()Landroid/app/AutomaticZenRule;
    .locals 9

    .line 177
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->defaultNewSchedule()Lcom/android/settings/notification/zen/ZenRuleInfo;

    move-result-object p0

    .line 178
    new-instance v8, Landroid/app/AutomaticZenRule;

    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/settings/notification/zen/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    const-string v1, ""

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZ)V

    return-object v8
.end method

.method private getZenRule()Landroid/app/AutomaticZenRule;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object p0

    return-object p0
.end method

.method private refreshRuleOrFinish()Z
    .locals 5

    .line 308
    iget-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mIsNew:Z

    const-string v1, "mRule="

    const-string v2, "ZenModeSettings"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mIsFirst:Z

    if-eqz v0, :cond_2

    .line 309
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->getNewDefaultZenRule()Landroid/app/AutomaticZenRule;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    .line 310
    sget-boolean v0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->setRule(Landroid/app/AutomaticZenRule;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->toastAndFinish()V

    return v3

    :cond_1
    return v4

    .line 316
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mIsFirst:Z

    if-eqz v0, :cond_5

    .line 317
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->getZenRule()Landroid/app/AutomaticZenRule;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    .line 318
    sget-boolean v0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->setRule(Landroid/app/AutomaticZenRule;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 320
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->toastAndFinish()V

    return v3

    :cond_4
    return v4

    .line 325
    :cond_5
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->setRule(Landroid/app/AutomaticZenRule;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 326
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->toastAndFinish()V

    return v3

    :cond_6
    return v4
.end method

.method private restoreRule(Landroid/net/Uri;Ljava/lang/String;Z)Landroid/app/AutomaticZenRule;
    .locals 9

    .line 146
    sget-boolean p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "ZenModeSettings"

    const-string/jumbo v0, "restoreRule"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    new-instance p0, Landroid/app/AutomaticZenRule;

    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getScheduleConditionProvider()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    move v8, p3

    invoke-direct/range {v1 .. v8}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZ)V

    return-object p0
.end method

.method private toastAndFinish()V
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->zen_mode_rule_not_found_text:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 338
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private updateControls()V
    .locals 1

    const/4 v0, 0x1

    .line 346
    iput-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mDisableListeners:Z

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->updateControlsInternal()V

    const/4 v0, 0x0

    .line 356
    iput-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mDisableListeners:Z

    return-void
.end method


# virtual methods
.method protected disableSaveButton()V
    .locals 1

    .line 168
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 169
    sget v0, Lcom/android/settings/R$id;->save_button:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/widget/SecBottomBarButton;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecBottomBarButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public getHelpResource()I
    .locals 0

    .line 269
    sget p0, Lcom/android/settings/R$string;->help_uri_interruptions:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 78
    sget-boolean v1, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->DEBUG:Z

    const-string v2, "ZenModeSettings"

    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate getIntent()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    const-string p1, "No intent"

    .line 80
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->toastAndFinish()V

    return-void

    :cond_1
    const-string v3, "android.service.notification.extra.RULE_ID"

    .line 85
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v0, :cond_2

    const-string/jumbo v0, "rule id is null"

    .line 87
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iput-boolean v3, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mIsNew:Z

    :cond_2
    if-eqz v1, :cond_3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_3
    iput-boolean v3, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mIsFirst:Z

    if-nez p1, :cond_4

    .line 96
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->refreshRuleOrFinish()Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_4
    const-string/jumbo v0, "scheduleId"

    .line 100
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "rulename"

    .line 101
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rulestate"

    .line 102
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "dialogState"

    .line 103
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mSecScheduleTimeType:I

    .line 104
    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->restoreRule(Landroid/net/Uri;Ljava/lang/String;Z)Landroid/app/AutomaticZenRule;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->setRule(Landroid/app/AutomaticZenRule;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 106
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->toastAndFinish()V

    .line 110
    :cond_5
    new-instance p1, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$CancelRuleClickListener;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$CancelRuleClickListener;-><init>(Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;)V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mCancelRuleClickListener:Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$CancelRuleClickListener;

    .line 111
    new-instance p1, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$SaveRuleClickListener;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$SaveRuleClickListener;-><init>(Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;)V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mSaveRuleClickListener:Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$SaveRuleClickListener;

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->onCreateInternal()V

    return-void
.end method

.method protected abstract onCreateInternal()V
.end method

.method public onResume()V
    .locals 3

    .line 237
    invoke-super {p0}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->onResume()V

    .line 239
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 240
    sget v1, Lcom/android/settings/R$id;->save_button:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecBottomBarButton;

    if-eqz v1, :cond_0

    .line 242
    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mSaveRuleClickListener:Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$SaveRuleClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    :cond_0
    sget v1, Lcom/android/settings/R$id;->cancel_button:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecBottomBarButton;

    if-eqz v0, :cond_1

    .line 246
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mCancelRuleClickListener:Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$CancelRuleClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 251
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mIsFirst:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 252
    iput-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mIsFirst:Z

    .line 254
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->refreshRuleOrFinish()Z

    move-result v0

    if-nez v0, :cond_4

    .line 255
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->updateControls()V

    .line 257
    :cond_4
    sget-boolean p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz p0, :cond_5

    const-string p0, "ZenModeSettings"

    const-string/jumbo v0, "onResume"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "ZenModeSettings"

    const-string/jumbo v1, "onSaveInstanceState"

    .line 136
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "scheduleId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "rulename"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    const-string/jumbo v1, "rulestate"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    iget v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mSecScheduleTimeType:I

    const-string v1, "dialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 263
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 264
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/android/settings/Utils;->setActionBarShadowAnimation(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle;Landroid/view/View;)V

    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 1

    .line 300
    invoke-super {p0}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->onZenModeConfigChanged()V

    .line 301
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->refreshRuleOrFinish()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->updateControls()V

    :cond_0
    return-void
.end method

.method protected abstract setRule(Landroid/app/AutomaticZenRule;)Z
.end method

.method protected abstract updateControlsInternal()V
.end method

.method protected updateRule(Landroid/net/Uri;)V
    .locals 0

    .line 294
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0, p1}, Landroid/app/AutomaticZenRule;->setConditionId(Landroid/net/Uri;)V

    return-void
.end method

.method protected updateSaveButton()V
    .locals 2

    .line 159
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 161
    sget v1, Lcom/android/settings/R$id;->save_button:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecBottomBarButton;

    if-eqz v0, :cond_1

    .line 163
    iget-boolean v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mDaysEmpty:Z

    if-nez v1, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mNameEmpty:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecBottomBarButton;->setEnabled(Z)V

    :cond_1
    return-void
.end method
