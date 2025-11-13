.class Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$5;
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

    .line 356
    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$5;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$5;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;->launchSoftwareUpdateForSecurityUpdateMenu(Landroid/content/Context;)V

    const/4 p0, 0x0

    return p0
.end method
