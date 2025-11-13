.class public final Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity$launchFavoritingActivity$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $component:Landroid/content/ComponentName;

.field public final synthetic this$0:Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity$launchFavoritingActivity$1;->$component:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity$launchFavoritingActivity$1;->this$0:Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity$launchFavoritingActivity$1;->$component:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity$launchFavoritingActivity$1;->this$0:Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    check-cast v2, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    invoke-virtual {v2, v0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->getAppLabel(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "extra_app_label"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.COMPONENT_NAME"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/util/Pair;

    invoke-static {p0, v0}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    check-cast p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->dismiss()V

    :cond_0
    return-void
.end method
