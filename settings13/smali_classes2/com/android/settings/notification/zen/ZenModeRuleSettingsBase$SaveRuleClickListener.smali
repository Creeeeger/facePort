.class public Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$SaveRuleClickListener;
.super Ljava/lang/Object;
.source "ZenModeRuleSettingsBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SaveRuleClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$SaveRuleClickListener;->this$0:Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 210
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$SaveRuleClickListener;->this$0:Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;

    iget-object p1, p1, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$SaveRuleClickListener;->this$0:Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$SaveRuleClickListener;->this$0:Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;

    iget-boolean v1, v0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mIsNew:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 216
    iget-object p1, v0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1, v2}, Landroid/app/AutomaticZenRule;->setModified(Z)V

    .line 217
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$SaveRuleClickListener;->this$0:Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;

    iget-object v0, p1, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object p1, p1, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->addZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p1, "ZenModeSettings"

    const-string v0, "Not able to create schedule"

    .line 219
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    :cond_2
    iget-object v0, v0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->isModified()Z

    move-result v0

    if-nez v0, :cond_3

    .line 223
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$SaveRuleClickListener;->this$0:Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;

    invoke-static {v0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->-$$Nest$mgetZenRule(Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 225
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$SaveRuleClickListener;->this$0:Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;

    iget-object p1, p1, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1, v2}, Landroid/app/AutomaticZenRule;->setModified(Z)V

    .line 228
    :cond_3
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$SaveRuleClickListener;->this$0:Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;

    iget-object v0, p1, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object v1, p1, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->updateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    .line 230
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$SaveRuleClickListener;->this$0:Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
