.class public Lcom/android/settings/bluetooth/RestrictionUtils;
.super Ljava/lang/Object;
.source "RestrictionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 0

    .line 43
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    .line 42
    invoke-static {p1, p2, p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    return-object p0
.end method

.method public sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    .line 47
    invoke-static {p1, p2}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method
