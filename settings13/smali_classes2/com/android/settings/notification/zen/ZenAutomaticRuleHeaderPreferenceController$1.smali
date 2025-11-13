.class Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController$1;
.super Ljava/lang/Object;
.source "ZenAutomaticRuleHeaderPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;->updateState(Landroidx/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 68
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;->-$$Nest$fgetmFragment(Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;)Landroidx/preference/PreferenceFragmentCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;

    invoke-static {v0}, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;->-$$Nest$fgetmRule(Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController$1$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController$1$1;-><init>(Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController$1;)V

    const/4 p0, 0x0

    invoke-static {p1, v0, p0, v1}, Lcom/android/settings/notification/zen/ZenRuleNameDialog;->show(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/net/Uri;Lcom/android/settings/notification/zen/ZenRuleNameDialog$PositiveClickListener;)V

    const/4 p0, 0x1

    return p0
.end method
