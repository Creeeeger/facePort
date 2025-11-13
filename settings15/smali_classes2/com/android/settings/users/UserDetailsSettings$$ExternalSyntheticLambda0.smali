.class public final synthetic Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/users/UserDetailsSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/users/UserDetailsSettings;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/users/UserDetailsSettings;

    packed-switch p1, :pswitch_data_0

    sget p1, Lcom/android/settings/users/UserDetailsSettings;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->switchUser()V

    return-void

    :pswitch_0
    sget p1, Lcom/android/settings/users/UserDetailsSettings;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->switchUser()V

    return-void

    :pswitch_1
    sget p1, Lcom/android/settings/users/UserDetailsSettings;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->resetGuest()V

    return-void

    :pswitch_2
    sget p1, Lcom/android/settings/users/UserDetailsSettings;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->resetGuest()V

    return-void

    :pswitch_3
    sget p1, Lcom/android/settings/users/UserDetailsSettings;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->canSwitchUserNow()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->switchUser()V

    :cond_0
    return-void

    :pswitch_4
    sget p1, Lcom/android/settings/users/UserDetailsSettings;->$r8$clinit:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserDetailsSettings;->enableCallsAndSms(Z)V

    return-void

    :pswitch_5
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object p2, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->removeUser(I)Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
