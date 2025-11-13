.class public final Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
