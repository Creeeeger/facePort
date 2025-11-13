.class public final synthetic Lcom/android/systemui/fragments/FragmentService$FragmentHostState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/fragments/FragmentService$FragmentHostState;

.field public final synthetic f$1:Landroid/content/res/Configuration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/fragments/FragmentService$FragmentHostState;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/fragments/FragmentService$FragmentHostState;

    iput-object p2, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState$$ExternalSyntheticLambda0;->f$1:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/fragments/FragmentService$FragmentHostState;

    iget-object p0, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState$$ExternalSyntheticLambda0;->f$1:Landroid/content/res/Configuration;

    iget-object v0, v0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

    iget-object v1, v0, Lcom/android/systemui/fragments/FragmentHostManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/fragments/FragmentHostManager;->mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-virtual {v2, v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->reloadFragments()V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p0}, Landroid/app/FragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    :goto_0
    return-void
.end method
