.class Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$2;
.super Ljava/lang/Object;
.source "SecurityAndPrivacySettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$2;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 307
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$2;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmMenuItems(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "key_samsung_acc_checkup"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->getStatus(Ljava/lang/String;)Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    move-result-object p1

    .line 308
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 309
    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->ARROW:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const-string v2, "true"

    const-string v3, "from_settings"

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$2;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmIsSamsungAccountSignedIn(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 313
    :cond_0
    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-ne p1, v1, :cond_3

    :cond_1
    const-string p1, "com.samsung.android.samsungaccount.action.OPEN_SECURITY_AND_PRIVACY"

    .line 314
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.osp.app.signin"

    .line 315
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 310
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$2;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->config_sec_toplevel_samsung_account_package:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$2;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/android/settings/R$string;->config_sec_toplevel_samsung_account_class:I

    .line 311
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    :cond_3
    :goto_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$2;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 321
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Samsung Account Activity Not Found"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecurityAndPrivacySettings"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 p0, 0x0

    return p0
.end method
