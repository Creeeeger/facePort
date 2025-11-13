.class Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$6;
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

    .line 364
    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$6;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 367
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.MODULE_UPDATE_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$6;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->access$000(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 371
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$6;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 374
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Google Play System Update Not Found"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecurityAndPrivacySettings"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
