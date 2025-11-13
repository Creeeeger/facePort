.class public final Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;
.super Lcom/android/settingslib/widget/TwoTargetPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;",
        "Lcom/android/settingslib/widget/TwoTargetPreference;",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final fingerprintViewModel:Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

.field public final fragment:Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;

.field public final isLastFingerprint:Z

.field public myView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;Z)V
    .locals 1

    const-string v0, "fingerprintViewModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/TwoTargetPreference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;->fingerprintViewModel:Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

    iput-object p3, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;->fragment:Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;

    iput-boolean p4, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;->isLastFingerprint:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "FINGERPRINT_"

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p4, p2, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;->fingerId:I

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "FingerprintPreference "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with frag "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "FingerprintSettingsPreference"

    invoke-static {p4, p1, p3}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p2, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->setPersistent()V

    const p1, 0x7f0803f9

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(I)V

    new-instance p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference$1;

    invoke-direct {p1, p0}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;)V

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method


# virtual methods
.method public final askUserToDeleteDialog(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;->fingerprintViewModel:Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

    iget-boolean v2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;->isLastFingerprint:Z

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;->fragment:Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;

    new-instance v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    invoke-direct {v3, v0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    new-instance p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog;

    invoke-direct {p1}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog;-><init>()V

    new-instance v4, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog$Companion$showInstance$2$1;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog$Companion$showInstance$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;I)V

    iput-object v4, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v4, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog$Companion$showInstance$2$1;

    invoke-direct {v4, v3, v0}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog$Companion$showInstance$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;I)V

    iput-object v4, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog;->onNegativeClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog$Companion$showInstance$2$3;

    invoke-direct {v0, v3}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog$Companion$showInstance$2$3;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    iput-object v0, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog$Companion$showInstance$2$4;

    invoke-direct {v0, p1}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog$Companion$showInstance$2$4;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog;)V

    invoke-virtual {v3, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v4, Landroid/hardware/fingerprint/Fingerprint;

    iget-object v5, v1, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;->name:Ljava/lang/String;

    iget v6, v1, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;->fingerId:I

    iget-wide v7, v1, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;->deviceId:J

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "IS_LAST_FINGERPRINT"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object p0
.end method

.method public final askUserToRenameDialog(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;->fingerprintViewModel:Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;->fragment:Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;

    new-instance v1, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    new-instance p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsRenameDialog;

    invoke-direct {p1}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsRenameDialog;-><init>()V

    new-instance v2, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsRenameDialog$Companion$showInstance$2$onClick$1;

    invoke-direct {v2, p1, v0, v1}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsRenameDialog$Companion$showInstance$2$onClick$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsRenameDialog;Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    iput-object v2, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsRenameDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v2, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsRenameDialog$Companion$showInstance$2$1;

    invoke-direct {v2, p1, v1}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsRenameDialog$Companion$showInstance$2$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsRenameDialog;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    iput-object v2, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsRenameDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v2, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsRenameDialog$Companion$showInstance$2$2;

    invoke-direct {v2, p1}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsRenameDialog$Companion$showInstance$2$2;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsRenameDialog;)V

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Landroid/hardware/fingerprint/Fingerprint;

    iget-object v4, v0, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;->name:Ljava/lang/String;

    iget v5, v0, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;->fingerId:I

    iget-wide v6, v0, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;->deviceId:J

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    const-string v0, "fingerprint"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "showing dialog "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FingerprintSettingsRenameDialog"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsRenameDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object p0
.end method

.method public final getSecondTargetResId()I
    .locals 0

    const p0, 0x7f0d053b

    return p0
.end method

.method public final highlight(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference$highlight$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference$highlight$1;

    iget v1, v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference$highlight$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference$highlight$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference$highlight$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference$highlight$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference$highlight$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference$highlight$1;->label:I

    const/4 v3, 0x1

    const-string v4, "myView"

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference$highlight$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;->fragment:Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_a

    const v2, 0x7f0807d7

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;->myView:Landroid/view/View;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    iget-object v7, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;->myView:Landroid/view/View;

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {p1, v2, v7}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;->myView:Landroid/view/View;

    if-eqz v2, :cond_7

    invoke-virtual {v2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;->myView:Landroid/view/View;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;->myView:Landroid/view/View;

    if-eqz p1, :cond_5

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    iput-object p0, v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference$highlight$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference$highlight$1;->label:I

    const-wide/16 v2, 0x12c

    invoke-static {v2, v3, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;->myView:Landroid/view/View;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_8
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_9
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_a
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/widget/TwoTargetPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;->myView:Landroid/view/View;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a04c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference$onBindViewHolder$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference$onBindViewHolder$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
