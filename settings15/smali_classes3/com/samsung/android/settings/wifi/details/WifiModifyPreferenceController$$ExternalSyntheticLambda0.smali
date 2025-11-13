.class public final synthetic Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->hideSoftKeyboard(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mSAScreenId:Ljava/lang/String;

    const-string v0, "1045"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->finishActivity$2()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->save$1()V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordImageButton:Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean p1, p1, Lcom/google/android/material/internal/CheckableImageButton;->checked:Z

    xor-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mSAScreenId:Ljava/lang/String;

    int-to-long v1, p1

    const-string p1, "1021"

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, p1, v3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordImageButton:Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean p1, p1, Lcom/google/android/material/internal/CheckableImageButton;->checked:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    :goto_0
    invoke-static {p0}, Landroidx/picker3/widget/SeslColorPicker$16$$ExternalSyntheticOutline0;->m(Landroid/widget/EditText;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    goto :goto_0

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
