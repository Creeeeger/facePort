.class Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController$1;
.super Ljava/lang/Object;
.source "OneHandedModePreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->makeOneHandOperationDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 190
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
