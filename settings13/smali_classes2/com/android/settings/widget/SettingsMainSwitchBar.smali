.class public Lcom/android/settings/widget/SettingsMainSwitchBar;
.super Lcom/samsung/android/settings/widget/SecMainSwitchBar;
.source "SettingsMainSwitchBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mDisabledByAdmin:Z

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mMetricsTag:Ljava/lang/String;

.field private mOnBeforeListener:Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;

.field private mRestrictedIcon:Landroid/widget/ImageView;


# direct methods
.method public static synthetic $r8$lambda$31l4X_2_lUXNL_S4b4J6-VkpZ6A(Lcom/android/settings/widget/SettingsMainSwitchBar;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->lambda$new$1(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QQMX2o9DO-qiIUYettEqpHCgU7Q(Lcom/android/settings/widget/SettingsMainSwitchBar;Landroid/widget/Switch;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->lambda$new$0(Landroid/widget/Switch;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 81
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 83
    new-instance p2, Lcom/android/settings/widget/SettingsMainSwitchBar$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/widget/SettingsMainSwitchBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/widget/SettingsMainSwitchBar;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 85
    sget p2, Lcom/android/settingslib/widget/R$id;->restricted_icon:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mRestrictedIcon:Landroid/widget/ImageView;

    .line 86
    new-instance p3, Lcom/android/settings/widget/SettingsMainSwitchBar$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/widget/SettingsMainSwitchBar;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getDelegatingView()Landroid/view/View;
    .locals 1

    .line 186
    iget-boolean v0, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mDisabledByAdmin:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mRestrictedIcon:Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    :goto_0
    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/widget/Switch;Z)V
    .locals 0

    .line 83
    invoke-direct {p0, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->logMetrics(Z)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 87
    iget-boolean p2, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mDisabledByAdmin:Z

    if-eqz p2, :cond_0

    .line 88
    iget-object p2, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p1, p2}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->onRestrictedIconClick()V

    :cond_0
    return-void
.end method

.method private logMetrics(Z)V
    .locals 6

    .line 190
    iget-object v0, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mMetricsTag:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/switch_bar"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    const/16 v2, 0x355

    const/4 v3, 0x0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected onBackgroundClicked()V
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mDisabledByAdmin:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mRestrictedIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/widget/ImageView;->callOnClick()Z

    return-void

    .line 103
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->onBackgroundClicked()V

    return-void
.end method

.method protected onRestrictedIconClick()V
    .locals 6

    .line 147
    iget-object v0, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mMetricsTag:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/switch_bar|restricted"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    const/16 v2, 0x355

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-void
.end method

.method public performClick()Z
    .locals 0

    .line 143
    invoke-direct {p0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->getDelegatingView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mOnBeforeListener:Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    .line 158
    invoke-interface {v0, v1, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;->onBeforeCheckedChanged(Landroid/widget/Switch;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->setChecked(Z)V

    return-void
.end method

.method public setCheckedInternal(Z)V
    .locals 0

    .line 168
    invoke-super {p0, p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->setChecked(Z)V

    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 2

    .line 112
    iput-object p1, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 114
    invoke-super {p0, p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->setEnabled(Z)V

    .line 115
    iput-boolean p1, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mDisabledByAdmin:Z

    .line 116
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 117
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 118
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setVisibility(I)V

    .line 119
    iget-object p0, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mRestrictedIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 121
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mDisabledByAdmin:Z

    .line 122
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 123
    iget-object p1, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mRestrictedIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 130
    iget-boolean v0, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mDisabledByAdmin:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    .line 134
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->setEnabled(Z)V

    return-void
.end method

.method public setMetricsTag(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mMetricsTag:Ljava/lang/String;

    return-void
.end method

.method public setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mOnBeforeListener:Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;

    return-void
.end method
