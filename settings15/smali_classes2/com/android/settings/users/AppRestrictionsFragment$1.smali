.class public final Lcom/android/settings/users/AppRestrictionsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/users/AppRestrictionsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/users/AppRestrictionsFragment$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$1;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment$1;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    sget p1, Lcom/android/settings/users/AppRestrictionsFragment;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/users/AppRestrictionsFragment;->getKeyForPackage$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-nez p2, :cond_2

    :cond_1
    const-string p2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-nez p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment$1;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-boolean p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/users/AppRestrictionsHelper;->applyUserAppsStates(Lcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
