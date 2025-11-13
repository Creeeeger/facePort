.class public final synthetic Lcom/android/systemui/doze/AODParameters$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/AODParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/AODParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/AODParameters$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/doze/AODParameters;

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/doze/AODParameters$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/doze/AODParameters;

    invoke-virtual {p0}, Lcom/android/systemui/doze/AODParameters;->updateDozeAlwaysOn()V

    iget-object p0, p0, Lcom/android/systemui/doze/AODParameters;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->updateAnimateScreenOff()V

    return-void
.end method
