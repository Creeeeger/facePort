.class public Lcom/android/settings/applications/ClearDefaultsPreference;
.super Landroidx/preference/Preference;
.source "ClearDefaultsPreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mActivitiesButton:Landroid/widget/Button;

.field protected mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private final mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private final mAppsControlDisallowedBySystem:Z

.field private mPackageName:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRootView:Landroidx/preference/PreferenceViewHolder;

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppsControlDisallowedAdmin(Lcom/android/settings/applications/ClearDefaultsPreference;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppsControlDisallowedBySystem(Lcom/android/settings/applications/ClearDefaultsPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppsControlDisallowedBySystem:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mresetAppDefaults(Lcom/android/settings/applications/ClearDefaultsPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/ClearDefaultsPreference;->resetAppDefaults()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/ClearDefaultsPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/ClearDefaultsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 104
    sget v0, Landroidx/preference/R$attr;->preferenceStyle:I

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/applications/ClearDefaultsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/applications/ClearDefaultsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 81
    sget p2, Lcom/android/settings/R$layout;->sec_app_preferred_settings:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 86
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo p1, "usb"

    .line 88
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 89
    invoke-static {p1}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 92
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    const-string p3, "no_control_apps"

    .line 91
    invoke-static {p1, p3, p2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppsControlDisallowedBySystem:Z

    .line 94
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    .line 93
    invoke-static {p1, p3, p2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-void
.end method

.method private resetAppDefaults()V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    if-eqz v0, :cond_1

    .line 274
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 275
    iget-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 276
    iget-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settingslib/applications/AppUtils;->isDefaultBrowser(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    .line 280
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    iget-object v2, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 282
    sget-object v1, Lcom/android/settings/applications/ClearDefaultsPreference;->TAG:Ljava/lang/String;

    const-string v2, "mUsbManager.clearDefaults"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 285
    iget-object p0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mActivitiesButton:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getView()Landroidx/preference/PreferenceViewHolder;
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mRootView:Landroidx/preference/PreferenceViewHolder;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 123
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 125
    sget v0, Lcom/android/settings/R$id;->clear_activities_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mActivitiesButton:Landroid/widget/Button;

    .line 126
    new-instance v1, Lcom/android/settings/applications/ClearDefaultsPreference$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/applications/ClearDefaultsPreference$1;-><init>(Lcom/android/settings/applications/ClearDefaultsPreference;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ClearDefaultsPreference;->updateUI(Landroidx/preference/PreferenceViewHolder;)Z

    .line 164
    iput-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mRootView:Landroidx/preference/PreferenceViewHolder;

    .line 165
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 166
    iget-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mRootView:Landroidx/preference/PreferenceViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 292
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mActivitiesButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 293
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x42

    if-eq p1, p2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x17

    if-ne p1, p2, :cond_1

    .line 294
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/ClearDefaultsPreference;->resetAppDefaults()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setAppEntry(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public updateUI(Landroidx/preference/PreferenceViewHolder;)Z
    .locals 6

    .line 172
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 178
    invoke-virtual {v2, v0}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v0

    .line 180
    sget v2, Lcom/android/settings/R$id;->auto_launch:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 181
    iget-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/android/settingslib/applications/AppUtils;->hasPreferredActivities(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_2

    .line 182
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v3, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/android/settingslib/applications/AppUtils;->isDefaultBrowser(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    iget-object v3, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    .line 183
    invoke-static {p1, v3}, Lcom/android/settingslib/applications/AppUtils;->hasUsbDefaults(Landroid/hardware/usb/IUsbManager;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v2

    :goto_1
    if-nez p1, :cond_3

    if-nez v0, :cond_3

    .line 186
    iget-object p0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mActivitiesButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4

    .line 227
    :cond_3
    iget-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mActivitiesButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 233
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "content://com.sec.knox.provider2/KioskMode"

    const-string v3, "isKioskModeEnabled"

    invoke-static {p1, v0, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 238
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v3, 0x0

    const-string v4, "getKioskHomePackage"

    invoke-static {p1, v0, v4, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 243
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v2

    goto :goto_2

    :cond_4
    move p1, v1

    :goto_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 248
    iget-object v3, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 249
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 251
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "content://com.sec.knox.provider2/ApplicationPolicy"

    const-string v5, "isApplicationSetToDefault"

    invoke-static {v3, v4, v5, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_5

    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v1

    .line 258
    :goto_3
    iget-object p0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mActivitiesButton:Landroid/widget/Button;

    if-nez p1, :cond_6

    if-nez v0, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_4
    return v2

    .line 174
    :cond_7
    :goto_5
    sget-object p0, Lcom/android/settings/applications/ClearDefaultsPreference;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateUI : mAppEntry or mAppEntry.info is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
