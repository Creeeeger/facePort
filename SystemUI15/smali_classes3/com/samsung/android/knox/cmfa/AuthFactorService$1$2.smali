.class Lcom/samsung/android/knox/cmfa/AuthFactorService$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/knox/cmfa/AuthFactorService$1;

.field public final synthetic val$map:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/cmfa/AuthFactorService$1;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService$1$2;->this$1:Lcom/samsung/android/knox/cmfa/AuthFactorService$1;

    iput-object p2, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService$1$2;->val$map:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService$1$2;->this$1:Lcom/samsung/android/knox/cmfa/AuthFactorService$1;

    iget-object v0, v0, Lcom/samsung/android/knox/cmfa/AuthFactorService$1;->this$0:Lcom/samsung/android/knox/cmfa/AuthFactorService;

    iget-object p0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService$1$2;->val$map:Ljava/util/Map;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/cmfa/AuthFactorService;->onFactorStart(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
