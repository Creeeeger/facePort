.class public final synthetic Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController;

.field public final synthetic f$1:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field public final synthetic f$2:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settingslib/widget/AppPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController;

    iput-object p2, p0, Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController$$ExternalSyntheticLambda1;->f$1:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iput-object p3, p0, Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController$$ExternalSyntheticLambda1;->f$2:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController;

    iget-object v1, p0, Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController$$ExternalSyntheticLambda1;->f$1:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController$$ExternalSyntheticLambda1;->f$2:Landroidx/preference/Preference;

    iget-object v0, v0, Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settingslib/applications/AppUtils;->getIcon(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController$$ExternalSyntheticLambda2;

    check-cast p0, Lcom/android/settingslib/widget/AppPreference;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settingslib/widget/AppPreference;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
