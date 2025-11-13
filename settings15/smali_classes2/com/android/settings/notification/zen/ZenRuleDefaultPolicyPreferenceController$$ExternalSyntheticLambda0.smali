.class public final synthetic Lcom/android/settings/notification/zen/ZenRuleDefaultPolicyPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/zen/ZenRuleDefaultPolicyPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/zen/ZenRuleDefaultPolicyPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenRuleDefaultPolicyPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/zen/ZenRuleDefaultPolicyPreferenceController;

    return-void
.end method


# virtual methods
.method public final onRadioButtonClicked(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRuleDefaultPolicyPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/zen/ZenRuleDefaultPolicyPreferenceController;

    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AutomaticZenRule;->setZenPolicy(Landroid/service/notification/ZenPolicy;)V

    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mId:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->updateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)V

    return-void
.end method
