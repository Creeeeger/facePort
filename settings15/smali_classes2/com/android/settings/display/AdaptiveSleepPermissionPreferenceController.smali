.class public final Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p1, p0, Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final initializePreference()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;->mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v0, Lcom/android/settingslib/widget/BannerMessagePreference;

    iget-object v2, p0, Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/settingslib/widget/BannerMessagePreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;->mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

    const v2, 0x7f14027b

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;->mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

    const v2, 0x7f140279

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;->mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

    const v2, 0x7f140277

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/BannerMessagePreference;->setPositiveButtonText$1(I)V

    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;->mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

    new-instance v2, Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/BannerMessagePreference;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
