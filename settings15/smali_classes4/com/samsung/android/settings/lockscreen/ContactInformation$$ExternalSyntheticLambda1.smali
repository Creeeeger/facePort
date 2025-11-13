.class public final synthetic Lcom/samsung/android/settings/lockscreen/ContactInformation$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/lockscreen/ContactInformation;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mScrollView:Landroid/widget/ScrollView;

    if-eqz p0, :cond_0

    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    :cond_0
    return-void

    :pswitch_0
    sget v0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->MY_USER_ID:I

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    const/16 v2, 0x20

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    iget-boolean v0, v0, Lcom/google/android/material/textfield/IndicatorViewController;->errorEnabled:Z

    iget-object v2, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mView:Landroid/view/View;

    if-eqz v2, :cond_3

    new-instance v3, Lcom/samsung/android/settings/lockscreen/ContactInformation$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/settings/lockscreen/ContactInformation$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/lockscreen/ContactInformation;Z)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfoEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfoEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
