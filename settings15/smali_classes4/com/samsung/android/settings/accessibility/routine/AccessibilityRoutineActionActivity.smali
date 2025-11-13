.class public abstract Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public routineActionDialog:Landroidx/appcompat/app/AlertDialog;


# virtual methods
.method public abstract buildContentView()Landroid/view/View;
.end method

.method public abstract getTitleResId()I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionActivity;->getTitleResId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionActivity;->buildContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)V

    new-instance v0, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionActivity;)V

    const v1, 0x7f1409b9

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const v0, 0x7f1409b6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionActivity$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionActivity;)V

    iget-object v1, p1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionActivity;->routineActionDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-static {}, Lcom/samsung/android/settings/analyzestorage/presenter/feature/SepFeatures$DeviceFeature;->isTabletModel()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionActivity;->routineActionDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/view/Window;->setGravity(I)V

    :cond_0
    return-void
.end method

.method public abstract sendParameterValues()Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;
.end method
