.class public final synthetic Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/Preference;

    iput-object p2, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;Landroidx/preference/Preference;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {v0, p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->$r8$lambda$fZYhAzhel54KPxsSSki88jO-ei8(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/Preference;

    invoke-static {v0, p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->$r8$lambda$rnlQyLkHssk0D9iESUiKmax4Rv8(Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;Landroidx/preference/Preference;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
