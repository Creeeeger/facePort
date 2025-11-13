.class public Lcom/android/settings/applications/managedomainurls/DomainAppPreference;
.super Lcom/android/settingslib/widget/AppPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mCacheIcon:Landroid/graphics/drawable/Drawable;

.field public final mDomainVerificationManager:Landroid/content/pm/verify/domain/DomainVerificationManager;

.field public final mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/AppPreference;-><init>(Landroid/content/Context;)V

    const-class v0, Landroid/content/pm/verify/domain/DomainVerificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/verify/domain/DomainVerificationManager;

    iput-object p1, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->mDomainVerificationManager:Landroid/content/pm/verify/domain/DomainVerificationManager;

    iput-object p2, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/android/settingslib/applications/AppUtils;->getIconFromCache(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->mCacheIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->setState$2()V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->mCacheIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/managedomainurls/DomainAppPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/managedomainurls/DomainAppPreference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/AppPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public final setState$2()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->mCacheIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0802c0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->mDomainVerificationManager:Landroid/content/pm/verify/domain/DomainVerificationManager;

    invoke-static {v2, v0}, Lcom/android/settings/applications/intentpicker/IntentPickerUtils;->getDomainVerificationUserState(Landroid/content/pm/verify/domain/DomainVerificationManager;Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationUserState;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/verify/domain/DomainVerificationUserState;->isLinkHandlingAllowed()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_2

    const v0, 0x7f14037e

    goto :goto_2

    :cond_2
    const v0, 0x7f140381

    :goto_2
    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
