.class public final Lcom/android/settings/applications/ClearDefaultsPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/applications/ClearDefaultsPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/ClearDefaultsPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    iget-object v0, p1, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppsControlDisallowedBySystem:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    iget-object p0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/applications/ClearDefaultsPreference;->resetAppDefaults()V

    const/16 p0, 0x8f

    const/16 p1, 0xf1f

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void
.end method
