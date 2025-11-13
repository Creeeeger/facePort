.class public final synthetic Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f14081c

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f1412d9

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$3;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$3;-><init>(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;I)V

    const v2, 0x7f14147f

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$3;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$3;-><init>(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;I)V

    const v2, 0x7f1408bf

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x7d3

    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception29 : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KKG::SecureFolderConfirmLockHelper"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$7;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mIsInMultiWindowMode:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    const p1, 0x7f141548

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    :cond_1
    const-string p1, "KKG::SecureFolderConfirmLockHelper"

    const-string v0, "Exception22 : "

    :try_start_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    const/high16 v3, 0x10000

    const v4, 0x7f141017

    if-eq v2, v3, :cond_4

    const/high16 v3, 0x20000

    if-eq v2, v3, :cond_3

    const/high16 v3, 0x30000

    if-eq v2, v3, :cond_3

    const/high16 v3, 0x40000

    if-eq v2, v3, :cond_2

    const/high16 v3, 0x50000

    if-eq v2, v3, :cond_2

    const/high16 v3, 0x60000

    if-eq v2, v3, :cond_2

    const/high16 v3, 0x70000

    if-eq v2, v3, :cond_3

    const/high16 v3, 0x80000

    if-eq v2, v3, :cond_2

    const-string v2, "invalid quality error"

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f141013

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f141019

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f14101a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$3;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$3;-><init>(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;I)V

    const v3, 0x7f141ebd

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$3;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$3;-><init>(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;I)V

    const v3, 0x7f1408bf

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_5

    :try_start_2
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_2
    move-exception v2

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception23 : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/RuntimeException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_4
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->getCurrentLockType()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x64

    const/16 v1, 0x3e9

    invoke-static {v0, v1, p0}, Lcom/samsung/android/settings/knox/KnoxSamsungAnalyticsLogger;->addEvent(IILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
