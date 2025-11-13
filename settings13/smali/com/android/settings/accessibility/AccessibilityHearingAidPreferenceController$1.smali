.class Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "AccessibilityHearingAidPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$1;->this$0:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const-string v0, "android.bluetooth.profile.extra.STATE"

    .line 66
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 69
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$1;->this$0:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->-$$Nest$fgetmHearingAidPreference(Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$1;->this$0:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->-$$Nest$fgetmHearingAidPreference(Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;)Landroidx/preference/Preference;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->accessibility_hearingaid_not_connected_summary:I

    .line 72
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/high16 p1, -0x80000000

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 75
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xc

    if-eq p1, p2, :cond_2

    .line 78
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$1;->this$0:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->-$$Nest$fgetmHearingAidPreference(Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;)Landroidx/preference/Preference;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->accessibility_hearingaid_not_connected_summary:I

    .line 79
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_2
    :goto_0
    return-void
.end method
