.class public final Lcom/android/systemui/doze/AODParameters$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/doze/AODParameters;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/AODParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/doze/AODParameters$1;->this$0:Lcom/android/systemui/doze/AODParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStatePostChange()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/doze/AODParameters$1;->this$0:Lcom/android/systemui/doze/AODParameters;

    iget-object p0, p0, Lcom/android/systemui/doze/AODParameters;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->updateAnimateScreenOff()V

    return-void
.end method
