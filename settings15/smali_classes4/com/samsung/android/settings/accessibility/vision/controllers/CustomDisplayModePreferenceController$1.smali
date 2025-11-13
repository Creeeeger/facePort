.class public final Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$OnItemSelectedListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;

    return-void
.end method


# virtual methods
.method public final onItemSelected(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->-$$Nest$fgetmSingleChoicePreference(Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;)Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->-$$Nest$fgetmSingleChoicePreference(Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;)Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference;

    move-result-object p0

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference;->buttonTitle:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    goto/16 :goto_1

    :cond_0
    const-string v0, "high_contrast"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/accessibility/AccessibilityRune;->isAtLeastOneUI_6_1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->-$$Nest$fgetmSingleChoicePreference(Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;)Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference;

    move-result-object v0

    const v1, 0x7f1411b1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    :cond_1
    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->-$$Nest$fgetmSingleChoicePreference(Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;)Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference;

    move-result-object v0

    const v1, 0x7f1411b0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    :cond_2
    const-string v0, "high_contrast_suw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/accessibility/AccessibilityRune;->isAtLeastOneUI_6_1()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->-$$Nest$fgetmSingleChoicePreference(Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;)Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference;

    move-result-object v0

    const v1, 0x7f1411b3

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->-$$Nest$fgetmSingleChoicePreference(Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;)Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference;

    move-result-object v0

    const v1, 0x7f1411b2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    :cond_4
    const-string v0, "large_display"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->-$$Nest$fgetmSingleChoicePreference(Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;)Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference;

    move-result-object v0

    const v1, 0x7f1414b5

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    :cond_5
    const-string v0, "large_display_suw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->-$$Nest$fgetmSingleChoicePreference(Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;)Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference;

    move-result-object v0

    const v1, 0x7f1414b6

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    :cond_6
    const-string v0, "default"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->-$$Nest$fgetmSingleChoicePreference(Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;)Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    const-string v0, "default_suw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->-$$Nest$fgetmSingleChoicePreference(Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;)Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_0
    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->-$$Nest$fgetmSingleChoicePreference(Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;)Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference;

    move-result-object v0

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->access$000(Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f140d27

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$1$1;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$1$1;-><init>(Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$1;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference;->buttonTitle:Ljava/lang/CharSequence;

    iput-object v3, v0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    :goto_1
    invoke-static {v2, p1}, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->-$$Nest$fputmDefaultKey(Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;Ljava/lang/String;)V

    return-void
.end method
