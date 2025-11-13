.class public final Lcom/android/systemui/toast/ToastFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mLayoutInflater:Landroid/view/LayoutInflater;

.field public mPlugin:Lcom/android/systemui/plugins/ToastPlugin;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Lcom/android/systemui/plugins/PluginManager;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/toast/ToastFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    const-string p1, "ToastFactory"

    invoke-virtual {p3, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    new-instance p1, Lcom/android/systemui/toast/ToastFactory$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/toast/ToastFactory$1;-><init>(Lcom/android/systemui/toast/ToastFactory;)V

    const-class p0, Lcom/android/systemui/plugins/ToastPlugin;

    const/4 p3, 0x0

    invoke-interface {p2, p1, p0, p3}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string p2, "ToastFactory:"

    const-string v0, "    mAttachedPlugin="

    invoke-static {p1, p2, v0}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/toast/ToastFactory;->mPlugin:Lcom/android/systemui/plugins/ToastPlugin;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
