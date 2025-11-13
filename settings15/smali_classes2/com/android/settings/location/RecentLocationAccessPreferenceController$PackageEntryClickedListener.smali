.class public final Lcom/android/settings/location/RecentLocationAccessPreferenceController$PackageEntryClickedListener;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPackage:Ljava/lang/String;

.field public final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController$PackageEntryClickedListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController$PackageEntryClickedListener;->mPackage:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController$PackageEntryClickedListener;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MANAGE_APP_PERMISSION"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController$PackageEntryClickedListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.PERMISSION_GROUP_NAME"

    const-string v1, "android.permission-group.LOCATION"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.PACKAGE_NAME"

    iget-object v1, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController$PackageEntryClickedListener;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.USER"

    iget-object v1, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController$PackageEntryClickedListener;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController$PackageEntryClickedListener;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method
