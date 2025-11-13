.class public final synthetic Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;

    iput-object p2, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;

    iget-object v1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    check-cast p1, Lcom/android/settingslib/drawer/Tile;

    iget-object v2, v0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    invoke-virtual {v2, p1}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->isValidTile(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->mSecDynamicMenuFeatureProvider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;

    iget-object p1, p1, Lcom/android/settingslib/drawer/Tile;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->getUriFromIntent(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, v0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->mSecDynamicMenuFeatureProvider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;

    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->getBundleFromKey(Landroid/net/Uri;Ljava/lang/String;)Lcom/samsung/android/settings/external/DynamicMenuData;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsVisible:Z

    if-nez p1, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
