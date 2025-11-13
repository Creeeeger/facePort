.class public final synthetic Lcom/android/settings/notification/NotificationAccessSettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/NotificationAccessSettings;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAccessSettings$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/notification/NotificationAccessSettings;

    iput-object p2, p0, Lcom/android/settings/notification/NotificationAccessSettings$$ExternalSyntheticLambda1;->f$1:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/settings/notification/NotificationAccessSettings$$ExternalSyntheticLambda1;->f$2:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    iget-object p1, p0, Lcom/android/settings/notification/NotificationAccessSettings$$ExternalSyntheticLambda1;->f$1:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings$$ExternalSyntheticLambda1;->f$2:Ljava/lang/CharSequence;

    sget-object v1, Lcom/android/settings/notification/NotificationAccessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    iget-object p0, p0, Lcom/android/settings/notification/NotificationAccessSettings$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p2, p1}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessController;->hasAccess(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result p2

    if-nez p2, :cond_0

    :goto_0
    move v1, v3

    goto :goto_1

    :cond_0
    new-instance p2, Lcom/android/settings/applications/specialaccess/notificationaccess/FriendlyWarningDialogFragment;

    invoke-direct {p2}, Lcom/android/settings/applications/specialaccess/notificationaccess/FriendlyWarningDialogFragment;-><init>()V

    invoke-virtual {p2, p1, v0, v2}, Lcom/android/settings/applications/specialaccess/notificationaccess/FriendlyWarningDialogFragment;->setServiceInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "friendlydialog"

    invoke-virtual {p2, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p2, p1}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessController;->hasAccess(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p2, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;

    invoke-direct {p2}, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;-><init>()V

    invoke-virtual {p2, p1, v0, v2}, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;->setServiceInfo$1(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "dialog"

    invoke-virtual {p2, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_1
    return v1
.end method
