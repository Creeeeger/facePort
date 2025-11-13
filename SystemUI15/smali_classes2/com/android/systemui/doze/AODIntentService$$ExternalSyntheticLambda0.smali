.class public final synthetic Lcom/android/systemui/doze/AODIntentService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/AODIntentService;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/AODIntentService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/AODIntentService$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/doze/AODIntentService;

    iput-object p2, p0, Lcom/android/systemui/doze/AODIntentService$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/doze/AODIntentService$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/doze/AODIntentService;

    iget-object p0, p0, Lcom/android/systemui/doze/AODIntentService$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/systemui/doze/AODIntentService;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager;->mHandler:Lcom/android/systemui/doze/PluginAODManager$9;

    new-instance v2, Lcom/android/systemui/doze/PluginAODManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p0}, Lcom/android/systemui/doze/PluginAODManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/doze/PluginAODManager;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
