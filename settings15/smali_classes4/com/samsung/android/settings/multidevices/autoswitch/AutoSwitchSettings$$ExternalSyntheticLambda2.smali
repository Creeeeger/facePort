.class public final synthetic Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.mobileservice.action.ACTION_OPEN_SASETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x24000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
