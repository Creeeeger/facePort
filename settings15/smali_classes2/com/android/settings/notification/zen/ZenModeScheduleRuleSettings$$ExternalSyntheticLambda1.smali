.class public final synthetic Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    sget p1, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->$r8$clinit:I

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/settings/notification/zen/ZenModeBackend;->removeZenRule(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
