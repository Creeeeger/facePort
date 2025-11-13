.class public final synthetic Lcom/android/settings/gestures/OneHandedSettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/gestures/OneHandedSettingsUtils$TogglesCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/gestures/OneHandedSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/gestures/OneHandedSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/gestures/OneHandedSettings$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/gestures/OneHandedSettings;

    return-void
.end method


# virtual methods
.method public final onChange(Landroid/net/Uri;)V
    .locals 1

    sget-object p1, Lcom/android/settings/gestures/OneHandedSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    iget-object p0, p0, Lcom/android/settings/gestures/OneHandedSettings$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/gestures/OneHandedSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/settings/gestures/OneHandedSettings$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/gestures/OneHandedSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/gestures/OneHandedSettings;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
