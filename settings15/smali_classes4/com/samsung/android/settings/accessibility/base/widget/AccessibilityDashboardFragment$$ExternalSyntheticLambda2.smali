.class public final synthetic Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityDashboardFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityDashboardFragment;

.field public final synthetic f$1:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityDashboardFragment;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityDashboardFragment$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityDashboardFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityDashboardFragment$$ExternalSyntheticLambda2;->f$1:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityDashboardFragment$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityDashboardFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityDashboardFragment$$ExternalSyntheticLambda2;->f$1:Landroidx/fragment/app/FragmentActivity;

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, p1, Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityObservableController;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityObservableController;

    invoke-interface {v1}, Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityObservableController;->getUriList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iget-object v3, v0, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityDashboardFragment;->uriListMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityDashboardFragment;->uriListMap:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    check-cast p1, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityDashboardFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityDashboardFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnConfigurationChangedListener(Landroidx/core/util/Consumer;)V

    :cond_2
    return-void
.end method
