.class public final synthetic Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;

    iget p0, p0, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    check-cast p1, Landroidx/activity/result/ActivityResult;

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;->$r8$clinit:I

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p1, Landroidx/activity/result/ActivityResult;->mResultCode:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    invoke-virtual {v0, v0}, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;->onLockAuthentication(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :pswitch_0
    sget p0, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;->$r8$clinit:I

    if-eqz p1, :cond_3

    iget-object p0, v0, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez p0, :cond_1

    const-class p0, Landroid/app/KeyguardManager;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    iput-object p0, v0, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    :cond_1
    iget-object p0, v0, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0, v0}, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;->onLockAuthentication(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
