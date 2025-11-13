.class public final Lcom/android/systemui/toast/ToastFactory$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/toast/ToastFactory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/toast/ToastFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/toast/ToastFactory$1;->this$0:Lcom/android/systemui/toast/ToastFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/ToastPlugin;

    iget-object p0, p0, Lcom/android/systemui/toast/ToastFactory$1;->this$0:Lcom/android/systemui/toast/ToastFactory;

    iput-object p1, p0, Lcom/android/systemui/toast/ToastFactory;->mPlugin:Lcom/android/systemui/plugins/ToastPlugin;

    return-void
.end method

.method public final onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 1

    check-cast p1, Lcom/android/systemui/plugins/ToastPlugin;

    iget-object p0, p0, Lcom/android/systemui/toast/ToastFactory$1;->this$0:Lcom/android/systemui/toast/ToastFactory;

    iget-object v0, p0, Lcom/android/systemui/toast/ToastFactory;->mPlugin:Lcom/android/systemui/plugins/ToastPlugin;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/toast/ToastFactory;->mPlugin:Lcom/android/systemui/plugins/ToastPlugin;

    :cond_0
    return-void
.end method
