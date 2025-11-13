.class Lcom/android/settingslib/RestrictedLockUtilsInternal$2;
.super Ljava/lang/Object;
.source "RestrictedLockUtilsInternal.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/RestrictedLockUtilsInternal;->setMenuItemAsDisabledByAdmin(Landroid/content/Context;Landroid/widget/Button;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    .line 801
    iput-object p1, p0, Lcom/android/settingslib/RestrictedLockUtilsInternal$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settingslib/RestrictedLockUtilsInternal$2;->val$admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 804
    iget-object p1, p0, Lcom/android/settingslib/RestrictedLockUtilsInternal$2;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settingslib/RestrictedLockUtilsInternal$2;->val$admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method
