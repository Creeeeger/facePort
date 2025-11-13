.class Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$1;
.super Ljava/lang/Object;
.source "NavigationBarSetupWizardSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->navigationbar_type_gesture_container:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 82
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->-$$Nest$fgetmGestureRadioButton(Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 83
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->-$$Nest$fgetmButtonRadioButton(Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;)Landroid/widget/RadioButton;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->-$$Nest$fgetmGestureRadioButton(Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 86
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->-$$Nest$fgetmButtonRadioButton(Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;)Landroid/widget/RadioButton;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void
.end method
