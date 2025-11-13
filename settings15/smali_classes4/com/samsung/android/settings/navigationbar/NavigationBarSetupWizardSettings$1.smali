.class public final Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0a36

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;

    xor-int/lit8 v1, p1, 0x1

    iput v1, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->selectedMode:I

    iget-object v0, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mGestureContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f080a61

    const v2, 0x7f080a62

    if-nez p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mButtonContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;

    iget-boolean p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mIsFromSmartSwitch:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->updateSettings()V

    :cond_3
    return-void
.end method
