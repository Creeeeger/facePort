.class public final Lcom/android/systemui/SystemUIService$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/SystemUIService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/SystemUIService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/SystemUIService$1;->this$0:Lcom/android/systemui/SystemUIService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLimitReached(I)V
    .locals 2

    const-string/jumbo v0, "uid "

    const-string v1, " sent too many Binder proxies to uid "

    invoke-static {p1, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SystemUIService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/SystemUIService$1;->this$0:Lcom/android/systemui/SystemUIService;

    iget-object p0, p0, Lcom/android/systemui/SystemUIService;->mBinderProxyDumpHelper:Lcom/android/systemui/BinderProxyDumpHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/BinderProxyDumpHelper;->dumpProxyInterfaceCounts()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BinderProxyDumpHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/BinderProxyDumpHelper;->dumpPerUidProxyCounts()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
