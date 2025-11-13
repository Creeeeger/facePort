.class public final synthetic Lcom/android/settings/display/ScreenTimeoutSettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/display/ScreenTimeoutSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/display/ScreenTimeoutSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/ScreenTimeoutSettings$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/display/ScreenTimeoutSettings;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutSettings$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/display/ScreenTimeoutSettings;

    sget-object p1, Lcom/android/settings/display/ScreenTimeoutSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method
