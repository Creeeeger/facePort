.class Lcom/android/settings/applications/ClearDefaultsPreference$1;
.super Ljava/lang/Object;
.source "ClearDefaultsPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ClearDefaultsPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

.field final synthetic val$view:Landroidx/preference/PreferenceViewHolder;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ClearDefaultsPreference;Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    iput-object p2, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->val$view:Landroidx/preference/PreferenceViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 129
    iget-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {p1}, Lcom/android/settings/applications/ClearDefaultsPreference;->-$$Nest$fgetmAppsControlDisallowedAdmin(Lcom/android/settings/applications/ClearDefaultsPreference;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {p1}, Lcom/android/settings/applications/ClearDefaultsPreference;->-$$Nest$fgetmAppsControlDisallowedBySystem(Lcom/android/settings/applications/ClearDefaultsPreference;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    .line 131
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {p0}, Lcom/android/settings/applications/ClearDefaultsPreference;->-$$Nest$fgetmAppsControlDisallowedAdmin(Lcom/android/settings/applications/ClearDefaultsPreference;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    .line 130
    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    .line 136
    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {p0}, Lcom/android/settings/applications/ClearDefaultsPreference;->-$$Nest$mresetAppDefaults(Lcom/android/settings/applications/ClearDefaultsPreference;)V

    const/16 p0, 0x8f

    const/16 p1, 0xf1f

    .line 156
    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void
.end method
