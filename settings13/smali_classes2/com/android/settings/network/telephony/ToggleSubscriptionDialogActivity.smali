.class public Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;
.super Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;
.source "ToggleSubscriptionDialogActivity.java"

# interfaces
.implements Lcom/android/settings/SidecarFragment$Listener;
.implements Lcom/android/settings/network/telephony/ConfirmDialogFragment$OnConfirmListener;


# static fields
.field public static final ARG_enable:Ljava/lang/String; = "enable"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private isRtlMode:Z

.field private mActiveSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEnable:Z

.field private mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

.field private mIsEsimOperation:Z

.field private mSubInfo:Landroid/telephony/SubscriptionInfo;

.field private mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

.field private mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

.field private mTelMgr:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$78T2BIU3V0BqNoq0vsyRF-_b11k(Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->lambda$showEnableSimConfirmDialog$0(Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$D8d1lQlpNjtIhA-wtoS3wV78YOU(Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->lambda$showEnableSimConfirmDialog$1(Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Q89KscCVFY56IU6XoWqzBu0lwzU(Landroid/telephony/UiccCardInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->lambda$isMultipleEnabledProfilesSupported$5(Landroid/telephony/UiccCardInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$X4Io9w-GgOhSNhCEvefx2WCI5L0(Landroid/telephony/UiccSlotInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->lambda$isRemovableSimEnabled$4(Landroid/telephony/UiccSlotInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZvX8gfhd3pLhUrSFEbSow0swqGo(Landroid/telephony/UiccPortInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->lambda$isRemovableSimEnabled$3(Landroid/telephony/UiccPortInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$iFgom7cD9aeBih-xS6k4_hdMhoQ(Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->lambda$getSwitchDialogBodyList$2(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;-><init>()V

    return-void
.end method

.method private getEnableSubscriptionTitle()Ljava/lang/String;
    .locals 4

    .line 489
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-static {v0, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 491
    iget-object v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 494
    :cond_0
    sget v1, Lcom/android/settings/R$string;->sim_action_enable_sub_dialog_title:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 492
    :cond_1
    :goto_0
    sget v0, Lcom/android/settings/R$string;->sim_action_enable_sub_dialog_title_without_carrier_name:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIntent(Landroid/content/Context;IZ)Landroid/content/Intent;
    .locals 2

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo p0, "sub_id"

    .line 80
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "enable"

    .line 81
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private getSwitchDialogBodyList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 541
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mActiveSubInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;)V

    .line 542
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 549
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 550
    sget v1, Lcom/android/settings/R$string;->sim_action_cancel:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getSwitchDialogBodyMsg(Landroid/telephony/SubscriptionInfo;Z)Ljava/lang/String;
    .locals 6

    .line 507
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-static {v0, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 509
    invoke-static {p1, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_0

    .line 512
    iget-boolean p2, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-eqz p2, :cond_0

    .line 513
    sget p2, Lcom/android/settings/R$string;->sim_action_switch_sub_dialog_text_downloaded:I

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v3

    aput-object p1, v5, v4

    invoke-virtual {p0, p2, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 517
    :cond_0
    iget-boolean p2, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-eqz p2, :cond_1

    .line 518
    sget p2, Lcom/android/settings/R$string;->sim_action_switch_sub_dialog_text:I

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v3

    aput-object p1, v5, v4

    invoke-virtual {p0, p2, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 523
    :cond_1
    sget p2, Lcom/android/settings/R$string;->sim_action_switch_sub_dialog_text_single_sim:I

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-virtual {p0, p2, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    :goto_0
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->isRtlMode:Z

    if-eqz p0, :cond_2

    const-string/jumbo p0, "\u200f"

    .line 532
    invoke-virtual {v1, v3, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\n"

    .line 533
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p1, v0, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 534
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p2

    add-int/2addr p2, v2

    invoke-virtual {p1, p2, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 535
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    invoke-virtual {p1, p2, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSwitchDialogPosBtnText()Ljava/lang/String;
    .locals 4

    .line 481
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-eqz v0, :cond_0

    .line 482
    sget v0, Lcom/android/settings/R$string;->sim_action_switch_sub_dialog_confirm:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    .line 484
    invoke-static {v3, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    .line 482
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 485
    :cond_0
    sget v0, Lcom/android/settings/R$string;->sim_switch_button:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getSwitchSubscriptionTitle()Ljava/lang/String;
    .locals 4

    .line 498
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-eqz v0, :cond_0

    .line 499
    sget v0, Lcom/android/settings/R$string;->sim_action_switch_sub_dialog_title:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    .line 501
    invoke-static {v3, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    .line 499
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 503
    :cond_0
    sget v0, Lcom/android/settings/R$string;->sim_action_switch_psim_dialog_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleEnableMultiSimSidecarStateChange()V
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->getState()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "ToggleSubscriptionDialogActivity"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->reset()V

    const-string v0, "Failed to switch to DSDS without rebooting."

    .line 293
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->dismissProgressDialog()V

    .line 295
    sget v0, Lcom/android/settings/R$string;->dsds_activation_failure_title:I

    .line 296
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->dsds_activation_failure_body_msg2:I

    .line 297
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->reset()V

    const-string v0, "Successfully switched to DSDS without reboot."

    .line 288
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->handleEnableSubscriptionAfterEnablingDsds()V

    :goto_0
    return-void
.end method

.method private handleEnableSubscriptionAfterEnablingDsds()V
    .locals 3

    .line 303
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    const-string v1, "ToggleSubscriptionDialogActivity"

    if-eqz v0, :cond_0

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DSDS enabled, start to enable profile: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    iget-object p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->run(IILandroid/telephony/SubscriptionInfo;)V

    return-void

    :cond_0
    const-string v0, "DSDS enabled, start to enable pSIM profile."

    .line 311
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->handleTogglePsimAction()V

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->dismissProgressDialog()V

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->finish()V

    return-void
.end method

.method private handleSwitchToEuiccSubscriptionSidecarStateChange()V
    .locals 7

    .line 241
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->getState()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "enable"

    const-string v3, "disable"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "ToggleSubscriptionDialogActivity"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    new-array v0, v5, [Ljava/lang/Object;

    .line 254
    iget-boolean v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnable:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    aput-object v2, v0, v4

    const-string v1, "Failed to %s the eSIM profile."

    .line 253
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->reset()V

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->dismissProgressDialog()V

    .line 257
    sget v0, Lcom/android/settings/R$string;->privileged_action_disable_fail_title:I

    .line 258
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->privileged_action_disable_fail_text:I

    .line 259
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-array v0, v5, [Ljava/lang/Object;

    .line 246
    iget-boolean v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnable:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    aput-object v2, v0, v4

    const-string v1, "Successfully %s the eSIM profile."

    .line 244
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->reset()V

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->dismissProgressDialog()V

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->finish()V

    :goto_2
    return-void
.end method

.method private handleSwitchToRemovableSlotSidecarStateChange()V
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->getState()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "ToggleSubscriptionDialogActivity"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Failed switching to removable slot."

    .line 274
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->reset()V

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->dismissProgressDialog()V

    .line 277
    sget v0, Lcom/android/settings/R$string;->sim_action_enable_sim_fail_title:I

    .line 278
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sim_action_enable_sim_fail_text:I

    .line 279
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Successfully switched to removable slot."

    .line 267
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->reset()V

    .line 269
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->handleTogglePsimAction()V

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->dismissProgressDialog()V

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->finish()V

    :goto_0
    return-void
.end method

.method private handleTogglePsimAction()V
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->canDisablePhysicalSubscription()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    .line 319
    iget-object v1, p0, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    iget-boolean v2, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnable:Z

    invoke-virtual {v1, v0, v2}, Landroid/telephony/SubscriptionManager;->setUiccApplicationsEnabled(IZ)V

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->finish()V

    goto :goto_0

    :cond_0
    const-string p0, "ToggleSubscriptionDialogActivity"

    const-string v0, "The device does not support toggling pSIM. It is enough to just enable the removable slot."

    .line 322
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private isDsdsConditionSatisfied()Z
    .locals 5

    .line 555
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ToggleSubscriptionDialogActivity"

    if-eqz v0, :cond_0

    const-string p0, "DSDS is already enabled. Condition not satisfied."

    .line 556
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimSupported()I

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Hardware does not support DSDS."

    .line 560
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v0

    .line 564
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-lez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v1

    .line 565
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->isMultipleEnabledProfilesSupported()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    const-string p0, "Device supports MEP and eSIM operation and eSIM profile is enabled. DSDS condition satisfied."

    .line 566
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 571
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->isRemovableSimEnabled()Z

    move-result v0

    .line 572
    iget-boolean v4, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    const-string p0, "eSIM operation and removable SIM is enabled. DSDS condition satisfied."

    .line 573
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 576
    :cond_4
    iget-object v0, p0, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 577
    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v4, Lcom/android/settings/network/SwitchToRemovableSlotSidecar$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/settings/network/SwitchToRemovableSlotSidecar$$ExternalSyntheticLambda0;-><init>()V

    .line 578
    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 579
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-nez p0, :cond_5

    if-eqz v0, :cond_5

    const-string p0, "Removable SIM operation and eSIM profile is enabled. DSDS condition satisfied."

    .line 580
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5
    const-string p0, "DSDS condition not satisfied."

    .line 584
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isMultipleEnabledProfilesSupported()Z
    .locals 1

    .line 604
    iget-object p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "ToggleSubscriptionDialogActivity"

    const-string v0, "UICC cards info list is empty."

    .line 606
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 609
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private isRemovableSimEnabled()Z
    .locals 2

    .line 589
    iget-object p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-static {p0}, Lcom/android/settings/network/UiccSlotUtil;->getSlotInfos(Landroid/telephony/TelephonyManager;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    .line 591
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity$$ExternalSyntheticLambda1;-><init>()V

    .line 592
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRemovableSimEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToggleSubscriptionDialogActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private synthetic lambda$getSwitchDialogBodyList$2(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 3

    .line 543
    invoke-static {p1, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 545
    sget v0, Lcom/android/settings/R$string;->sim_action_switch_sub_dialog_carrier_list_item_for_turning_off:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$isMultipleEnabledProfilesSupported$5(Landroid/telephony/UiccCardInfo;)Z
    .locals 0

    .line 610
    invoke-virtual {p0}, Landroid/telephony/UiccCardInfo;->isMultipleEnabledProfilesSupported()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$isRemovableSimEnabled$3(Landroid/telephony/UiccPortInfo;)Z
    .locals 0

    .line 596
    invoke-virtual {p0}, Landroid/telephony/UiccPortInfo;->isActive()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$isRemovableSimEnabled$4(Landroid/telephony/UiccSlotInfo;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 594
    invoke-virtual {p0}, Landroid/telephony/UiccSlotInfo;->isRemovable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {p0}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    invoke-virtual {p0}, Landroid/telephony/UiccSlotInfo;->getCardStateInfo()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$showEnableSimConfirmDialog$0(Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    .line 398
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$showEnableSimConfirmDialog$1(Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    .line 430
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p0

    return p0
.end method

.method private showDisableSimConfirmDialog()V
    .locals 8

    .line 370
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-static {v0, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 373
    iget-object v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    sget v1, Lcom/android/settings/R$string;->privileged_action_disable_sub_dialog_title:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 374
    :cond_1
    :goto_0
    sget v0, Lcom/android/settings/R$string;->privileged_action_disable_sub_dialog_title_without_carrier:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v4, v0

    .line 379
    const-class v2, Lcom/android/settings/network/telephony/ConfirmDialogFragment$OnConfirmListener;

    const/4 v3, 0x1

    const/4 v5, 0x0

    sget v0, Lcom/android/settings/R$string;->yes:I

    .line 385
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v0, Lcom/android/settings/R$string;->sim_action_cancel:I

    .line 386
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    .line 379
    invoke-static/range {v1 .. v7}, Lcom/android/settings/network/telephony/ConfirmDialogFragment;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showEnableDsdsConfirmDialog()V
    .locals 7

    .line 347
    const-class v1, Lcom/android/settings/network/telephony/ConfirmDialogFragment$OnConfirmListener;

    sget v0, Lcom/android/settings/R$string;->sim_action_enable_dsds_title:I

    .line 351
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/android/settings/R$string;->sim_action_enable_dsds_text:I

    .line 352
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/android/settings/R$string;->sim_action_yes:I

    .line 353
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v0, Lcom/android/settings/R$string;->sim_action_no_thanks:I

    .line 354
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x3

    move-object v0, p0

    .line 347
    invoke-static/range {v0 .. v6}, Lcom/android/settings/network/telephony/ConfirmDialogFragment;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showEnableSimConfirmDialog()V
    .locals 9

    .line 390
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mActiveSubInfos:Ljava/util/List;

    const-string v1, "ToggleSubscriptionDialogActivity"

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 395
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mActiveSubInfos:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mActiveSubInfos:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mActiveSubInfos:Ljava/util/List;

    .line 398
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 399
    :goto_0
    iget-object v2, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 401
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->isMultipleEnabledProfilesSupported()Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    .line 406
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showNonSwitchSimConfirmDialog()V

    return-void

    :cond_2
    if-eqz v2, :cond_4

    .line 410
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->isMultipleEnabledProfilesSupported()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 411
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mActiveSubInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    .line 414
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showNonSwitchSimConfirmDialog()V

    goto :goto_1

    .line 418
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showMepSwitchSimConfirmDialog()V

    :goto_1
    return-void

    :cond_4
    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    .line 431
    iget-object v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mActiveSubInfos:Ljava/util/List;

    .line 429
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity$$ExternalSyntheticLambda3;-><init>()V

    .line 430
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 431
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    goto :goto_2

    .line 432
    :cond_5
    iget-object v2, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mActiveSubInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 433
    :goto_2
    const-class v3, Lcom/android/settings/network/telephony/ConfirmDialogFragment$OnConfirmListener;

    const/4 v4, 0x2

    .line 437
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->getSwitchSubscriptionTitle()Ljava/lang/String;

    move-result-object v5

    .line 438
    invoke-direct {p0, v1, v0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->getSwitchDialogBodyMsg(Landroid/telephony/SubscriptionInfo;Z)Ljava/lang/String;

    move-result-object v6

    .line 439
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->getSwitchDialogPosBtnText()Ljava/lang/String;

    move-result-object v7

    sget v0, Lcom/android/settings/R$string;->sim_action_cancel:I

    .line 440
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    .line 433
    invoke-static/range {v2 .. v8}, Lcom/android/settings/network/telephony/ConfirmDialogFragment;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_3
    const-string v0, "No active subscriptions available."

    .line 391
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showNonSwitchSimConfirmDialog()V

    return-void
.end method

.method private showEnableSubDialog()V
    .locals 2

    const-string v0, "ToggleSubscriptionDialogActivity"

    const-string v1, "Handle subscription enabling."

    .line 329
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->isDsdsConditionSatisfied()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showEnableDsdsConfirmDialog()V

    return-void

    .line 334
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->isRemovableSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Toggle on pSIM, no dialog displayed."

    .line 338
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->handleTogglePsimAction()V

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->finish()V

    return-void

    .line 343
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showEnableSimConfirmDialog()V

    return-void
.end method

.method private showMepSwitchSimConfirmDialog()V
    .locals 13

    const-string v0, "ToggleSubscriptionDialogActivity"

    const-string/jumbo v1, "showMepSwitchSimConfirmDialog"

    .line 455
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-static {v0, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 458
    sget v1, Lcom/android/settings/R$string;->sim_action_switch_sub_dialog_mep_title:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    sget v3, Lcom/android/settings/R$string;->sim_action_switch_sub_dialog_mep_text:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    .line 461
    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->isRtlMode:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u200f"

    .line 466
    invoke-virtual {v1, v4, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 467
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    :cond_0
    const-class v6, Lcom/android/settings/network/telephony/ConfirmDialogFragment$OnConfirmListener;

    const/4 v7, 0x5

    .line 474
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 477
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->getSwitchDialogBodyList()Ljava/util/ArrayList;

    move-result-object v12

    move-object v5, p0

    .line 469
    invoke-static/range {v5 .. v12}, Lcom/android/settings/network/telephony/ConfirmDialogFragment;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method private showNonSwitchSimConfirmDialog()V
    .locals 7

    .line 444
    const-class v1, Lcom/android/settings/network/telephony/ConfirmDialogFragment$OnConfirmListener;

    .line 448
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->getEnableSubscriptionTitle()Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/android/settings/R$string;->yes:I

    .line 450
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v0, Lcom/android/settings/R$string;->sim_action_cancel:I

    .line 451
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    .line 444
    invoke-static/range {v0 .. v6}, Lcom/android/settings/network/telephony/ConfirmDialogFragment;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showRebootConfirmDialog()V
    .locals 7

    .line 358
    const-class v1, Lcom/android/settings/network/telephony/ConfirmDialogFragment$OnConfirmListener;

    sget v0, Lcom/android/settings/R$string;->sim_action_restart_title:I

    .line 362
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/android/settings/R$string;->sim_action_enable_dsds_text:I

    .line 363
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/android/settings/R$string;->sim_action_reboot:I

    .line 364
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v0, Lcom/android/settings/R$string;->sim_action_cancel:I

    .line 365
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x4

    move-object v0, p0

    .line 358
    invoke-static/range {v0 .. v6}, Lcom/android/settings/network/telephony/ConfirmDialogFragment;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onConfirm(IZI)V
    .locals 8

    const/4 v0, 0x4

    const/4 v1, 0x3

    if-nez p2, :cond_0

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->finish()V

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const-string v6, "ToggleSubscriptionDialogActivity"

    if-eq p1, v3, :cond_9

    const/4 v7, 0x2

    if-eq p1, v7, :cond_7

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    .line 235
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unrecognized confirmation dialog tag: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1
    if-eq p3, v5, :cond_7

    .line 215
    iget-object p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mActiveSubInfos:Ljava/util/List;

    if-eqz p1, :cond_7

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    move-object v4, p1

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    const-string p1, "User cancel the dialog to reboot to enable DSDS."

    .line 205
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showEnableSimConfirmDialog()V

    return-void

    :cond_3
    const-string p1, "User confirmed reboot to enable DSDS."

    .line 209
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static {p0, v3}, Lcom/android/settings/sim/SimActivationNotifier;->setShowSimSettingsNotification(Landroid/content/Context;Z)V

    .line 211
    iget-object p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v7}, Landroid/telephony/TelephonyManager;->switchMultiSimConfig(I)V

    goto/16 :goto_1

    :cond_4
    if-nez p2, :cond_5

    const-string p1, "User cancel the dialog to enable DSDS."

    .line 189
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showEnableSimConfirmDialog()V

    return-void

    .line 193
    :cond_5
    iget-object p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->doesSwitchMultiSimConfigTriggerReboot()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "Device does not support reboot free DSDS."

    .line 194
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showRebootConfirmDialog()V

    return-void

    :cond_6
    const-string p1, "Enabling DSDS without rebooting."

    .line 198
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget p1, Lcom/android/settings/R$string;->sim_action_enabling_sim_without_carrier_name:I

    .line 200
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 201
    iget-object p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    invoke-virtual {p0, v7}, Lcom/android/settings/network/EnableMultiSimSidecar;->run(I)V

    goto :goto_1

    :cond_7
    :goto_0
    const-string p1, "User confirmed to enable the subscription."

    .line 219
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    sget p1, Lcom/android/settings/R$string;->sim_action_switch_sub_dialog_progress:I

    new-array p2, v3, [Ljava/lang/Object;

    iget-object p3, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    .line 223
    invoke-static {p3, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p3

    aput-object p3, p2, v2

    .line 221
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 220
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 225
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-eqz p1, :cond_8

    .line 226
    iget-object p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    iget-object p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    invoke-virtual {p1, p0, v5, v4}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->run(IILandroid/telephony/SubscriptionInfo;)V

    return-void

    .line 231
    :cond_8
    iget-object p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->run(ILandroid/telephony/SubscriptionInfo;)V

    goto :goto_1

    .line 175
    :cond_9
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-eqz p1, :cond_b

    const-string p1, "Disabling the eSIM profile."

    .line 176
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    sget p1, Lcom/android/settings/R$string;->privileged_action_disable_sub_dialog_progress:I

    .line 178
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 179
    iget-object p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getPortIndex()I

    move-result v2

    .line 180
    :cond_a
    iget-object p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {p0, v5, v2, v4}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->run(IILandroid/telephony/SubscriptionInfo;)V

    return-void

    :cond_b
    const-string p1, "Disabling the pSIM profile."

    .line 184
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->handleTogglePsimAction()V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 97
    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "sub_id"

    const/4 v2, -0x1

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 100
    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 102
    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 103
    invoke-virtual {v2}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v2

    const-string v3, "ToggleSubscriptionDialogActivity"

    if-nez v2, :cond_0

    const-string p1, "It is not the admin user. Unable to toggle subscription."

    .line 104
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->finish()V

    return-void

    .line 109
    :cond_0
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "The subscription id is not usable."

    .line 110
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->finish()V

    return-void

    .line 115
    :cond_1
    iget-object v2, p0, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v2}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mActiveSubInfos:Ljava/util/List;

    .line 116
    iget-object v2, p0, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v2, v1}, Lcom/android/settings/network/SubscriptionUtil;->getSubById(Landroid/telephony/SubscriptionManager;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 117
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->get(Landroid/app/FragmentManager;)Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->get(Landroid/app/FragmentManager;)Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/EnableMultiSimSidecar;->get(Landroid/app/FragmentManager;)Lcom/android/settings/network/EnableMultiSimSidecar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    const-string v1, "enable"

    .line 122
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnable:Z

    .line 123
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v0, v4, :cond_3

    move v2, v4

    :cond_3
    iput-boolean v2, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->isRtlMode:Z

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMultipleEnabledProfilesSupported():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->isMultipleEnabledProfilesSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_5

    .line 128
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnable:Z

    if-eqz p1, :cond_4

    .line 129
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showEnableSubDialog()V

    goto :goto_1

    .line 131
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showDisableSimConfirmDialog()V

    :cond_5
    :goto_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->removeListener(Lcom/android/settings/SidecarFragment$Listener;)Z

    .line 147
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->removeListener(Lcom/android/settings/SidecarFragment$Listener;)Z

    .line 148
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->removeListener(Lcom/android/settings/SidecarFragment$Listener;)Z

    .line 149
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 138
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 139
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->addListener(Lcom/android/settings/SidecarFragment$Listener;)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->addListener(Lcom/android/settings/SidecarFragment$Listener;)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->addListener(Lcom/android/settings/SidecarFragment$Listener;)V

    return-void
.end method

.method public onStateChange(Lcom/android/settings/SidecarFragment;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    if-ne p1, v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->handleSwitchToEuiccSubscriptionSidecarStateChange()V

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    if-ne p1, v0, :cond_1

    .line 157
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->handleSwitchToRemovableSlotSidecarStateChange()V

    goto :goto_0

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    if-ne p1, v0, :cond_2

    .line 159
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->handleEnableMultiSimSidecarStateChange()V

    :cond_2
    :goto_0
    return-void
.end method
