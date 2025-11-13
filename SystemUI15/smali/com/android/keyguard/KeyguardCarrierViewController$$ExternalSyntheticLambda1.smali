.class public final synthetic Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/KeyguardCarrierViewController;

.field public final synthetic f$1:Lcom/android/keyguard/KeyguardSecurityCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardCarrierViewController;Lcom/android/keyguard/KeyguardSecurityCallback;I)V
    .locals 0

    iput p3, p0, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticLambda1;->f$1:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticLambda1;->f$1:Lcom/android/keyguard/KeyguardSecurityCallback;

    iget-object v0, p1, Lcom/android/keyguard/KeyguardCarrierViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierPasswordSaved(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SKTCarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticLambda1;->f$1:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "KeyguardCarrierView"

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "tel"

    const-string v3, "0000"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    const-string v2, "click call button"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/android/keyguard/KeyguardCarrierViewController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t find the component "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
