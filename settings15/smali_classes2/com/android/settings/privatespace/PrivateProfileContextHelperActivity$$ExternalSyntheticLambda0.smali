.class public final synthetic Lcom/android/settings/privatespace/PrivateProfileContextHelperActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/privatespace/PrivateProfileContextHelperActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/privatespace/PrivateProfileContextHelperActivity;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/privatespace/PrivateProfileContextHelperActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/privatespace/PrivateProfileContextHelperActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/privatespace/PrivateProfileContextHelperActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    const-string v2, "PrivateSpaceHelperAct"

    iget-object v3, p0, Lcom/android/settings/privatespace/PrivateProfileContextHelperActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/privatespace/PrivateProfileContextHelperActivity;

    iget p0, p0, Lcom/android/settings/privatespace/PrivateProfileContextHelperActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Landroidx/activity/result/ActivityResult;

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/android/settings/privatespace/PrivateProfileContextHelperActivity;->$r8$clinit:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProviderImpl;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/settings/security/SecurityFeatureProviderImpl;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p0

    if-eqz p1, :cond_0

    invoke-virtual {v3}, Landroid/app/Activity;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "separate private space lock setup success"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    :cond_0
    const-string p0, "separate private space lock not setup"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v0}, Landroid/app/Activity;->setResult(I)V

    :goto_0
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    sget p0, Lcom/android/settings/privatespace/PrivateProfileContextHelperActivity;->$r8$clinit:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_2

    const-string p0, "private space account login result null"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_2
    iget p0, p1, Landroidx/activity/result/ActivityResult;->mResultCode:I

    const/4 p1, 0x1

    if-ne p0, v1, :cond_3

    const-string v4, "private space account login success"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    if-ne p0, p1, :cond_4

    const-string v4, "private space account login skipped"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v4, "private space account login failed"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eq p0, v1, :cond_5

    if-ne p0, p1, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    invoke-virtual {v3, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
