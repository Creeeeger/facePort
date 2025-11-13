.class public final Lcom/samsung/android/settings/knox/SecureFolderLockedView$7;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/knox/SecureFolderLockedView;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$7;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$7;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/16 p2, 0xb7

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$7;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$7;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mKnoxEventList:Ljava/util/ArrayList;

    const/16 v1, 0x728

    invoke-static {p2, v1, v0}, Lcom/samsung/android/settings/knox/KnoxSamsungAnalyticsLogger;->addEvent(IILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$7;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    iget-object p1, p1, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mKnoxEventList:Ljava/util/ArrayList;

    const/16 v1, 0x729

    invoke-static {p2, v1, v0}, Lcom/samsung/android/settings/knox/KnoxSamsungAnalyticsLogger;->addEvent(IILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$7;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    iget-object p1, p1, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    sget-object p1, Lcom/samsung/android/settings/knox/KnoxUtils;->mDeviceType:Ljava/lang/String;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "knox.container.proxy.COMMAND_SWITCH_PROFILE"

    invoke-static {p2, p1}, Lcom/samsung/android/knox/ContainerProxy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Sending uninst Event to sf userid:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$7;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    iget p2, p2, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mEffectiveUserId:I

    const-string v1, "KKG::SecureFolderLockedView"

    invoke-static {p1, p2, v1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$7;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    iget p1, p1, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mEffectiveUserId:I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Sending uninstallation event to sf"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$7;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "content://0@com.samsung.knox.securefolder.provider.removecontainer"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "RemoveContainer"

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
