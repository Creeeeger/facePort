.class public final Lcom/android/settings/security/LockscreenDashboardFragment$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/security/LockscreenDashboardFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/security/LockscreenDashboardFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/security/LockscreenDashboardFragment$1;->this$0:Lcom/android/settings/security/LockscreenDashboardFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object p0, p0, Lcom/android/settings/security/LockscreenDashboardFragment$1;->this$0:Lcom/android/settings/security/LockscreenDashboardFragment;

    sget-object p1, Lcom/android/settings/security/LockscreenDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method
