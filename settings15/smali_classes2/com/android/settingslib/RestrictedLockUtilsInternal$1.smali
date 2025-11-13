.class public final Lcom/android/settingslib/RestrictedLockUtilsInternal$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic val$admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/RestrictedLockUtilsInternal$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settingslib/RestrictedLockUtilsInternal$1;->val$admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Lcom/android/settingslib/RestrictedLockUtilsInternal$1;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settingslib/RestrictedLockUtilsInternal$1;->val$admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    const/4 p0, 0x1

    return p0
.end method
