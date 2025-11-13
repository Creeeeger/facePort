.class public final Lcom/android/settings/users/AppCopyFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/users/AppCopyFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/users/AppCopyFragment;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/users/AppCopyFragment$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/users/AppCopyFragment$1;->this$0:Lcom/android/settings/users/AppCopyFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget p1, p0, Lcom/android/settings/users/AppCopyFragment$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/android/settings/users/AppCopyFragment$1;->this$0:Lcom/android/settings/users/AppCopyFragment;

    sget p1, Lcom/android/settings/users/AppCopyFragment;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pkg_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/AppSwitchPreference;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/settings/users/AppCopyFragment;->mHelper:Lcom/android/settingslib/users/AppCopyHelper;

    iget-object p0, p0, Lcom/android/settingslib/users/AppCopyHelper;->mSelectedPackages:Landroid/util/ArraySet;

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/users/AppCopyFragment$1;->this$0:Lcom/android/settings/users/AppCopyFragment;

    iget-boolean p1, p0, Lcom/android/settings/users/AppCopyFragment;->mAppListChanged:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/settings/users/AppCopyFragment;->mHelper:Lcom/android/settingslib/users/AppCopyHelper;

    invoke-virtual {p0}, Lcom/android/settingslib/users/AppCopyHelper;->installSelectedApps()V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
