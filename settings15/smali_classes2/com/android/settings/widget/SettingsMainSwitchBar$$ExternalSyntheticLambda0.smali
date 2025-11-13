.class public final synthetic Lcom/android/settings/widget/SettingsMainSwitchBar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/widget/SettingsMainSwitchBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/SettingsMainSwitchBar$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/widget/SettingsMainSwitchBar;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/widget/SettingsMainSwitchBar$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p1, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    iget p0, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mMetricsCategory:I

    const-string v0, "switch_bar"

    invoke-virtual {p1, p0, p2, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->changed(IILjava/lang/String;)V

    return-void
.end method
