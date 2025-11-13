.class public final synthetic Lcom/samsung/android/settings/account/CloudAccountSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/account/CloudAccountSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/account/CloudAccountSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/account/CloudAccountSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/account/CloudAccountSettings;

    return-void
.end method


# virtual methods
.method public final onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/account/CloudAccountSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/account/CloudAccountSettings;

    sget-object p1, Lcom/samsung/android/settings/account/CloudAccountSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/account/CloudAccountSettings$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/settings/account/CloudAccountSettings$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
