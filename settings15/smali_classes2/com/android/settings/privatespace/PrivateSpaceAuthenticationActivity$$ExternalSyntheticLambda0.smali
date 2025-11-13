.class public final synthetic Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;

    packed-switch p1, :pswitch_data_0

    sget p1, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;->$r8$clinit:I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_0
    sget p1, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "PrivateSpaceAuthCheck"

    const-string p2, "Start activity to set new device lock"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;->mSetDeviceLock:Landroidx/activity/result/ActivityResultRegistry$2;

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultRegistry$2;->launch(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
