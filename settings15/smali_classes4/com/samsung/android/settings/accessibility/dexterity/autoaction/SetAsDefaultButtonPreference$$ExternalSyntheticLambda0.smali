.class public final synthetic Lcom/samsung/android/settings/accessibility/dexterity/autoaction/SetAsDefaultButtonPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/dexterity/autoaction/SetAsDefaultButtonPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/dexterity/autoaction/SetAsDefaultButtonPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/SetAsDefaultButtonPreference$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/dexterity/autoaction/SetAsDefaultButtonPreference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/SetAsDefaultButtonPreference$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/dexterity/autoaction/SetAsDefaultButtonPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/SetAsDefaultButtonPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/AutoActionUtils;->autoActionSetAsDefault(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/SetAsDefaultButtonPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f142b6a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getA11ySettingsMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p0

    const/16 p1, 0x1390

    const-string v0, "A11Y5023"

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->clicked(ILjava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
