.class public final Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->mPersonalizedPref:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentResetRadioPreference;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f142d20

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f142d1f

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$5$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$5$2;-><init>(Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$5;)V

    const v1, 0x7f142d1e    # 1.9696E38f

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$5$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/high16 v1, 0x1040000

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->mPersonalizedPref:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentResetRadioPreference;

    sget-object v0, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->excludeDeviceNameSet:Ljava/util/HashSet;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->seslGetPreferenceBounds(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v0}, Landroid/app/Dialog;->semSetAnchor(II)V

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils$$ExternalSyntheticLambda0;-><init>(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method
