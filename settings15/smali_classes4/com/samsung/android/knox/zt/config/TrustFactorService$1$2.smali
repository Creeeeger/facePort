.class Lcom/samsung/android/knox/zt/config/TrustFactorService$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/zt/config/TrustFactorService$1;->start(Ljava/util/Map;Lcom/samsung/android/knox/zt/config/ITrustFactorListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/knox/zt/config/TrustFactorService$1;

.field public final synthetic val$map:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/zt/config/TrustFactorService$1;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/knox/zt/config/TrustFactorService$1$2;->this$1:Lcom/samsung/android/knox/zt/config/TrustFactorService$1;

    iput-object p2, p0, Lcom/samsung/android/knox/zt/config/TrustFactorService$1$2;->val$map:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/zt/config/TrustFactorService$1$2;->this$1:Lcom/samsung/android/knox/zt/config/TrustFactorService$1;

    iget-object v0, v0, Lcom/samsung/android/knox/zt/config/TrustFactorService$1;->this$0:Lcom/samsung/android/knox/zt/config/TrustFactorService;

    iget-object p0, p0, Lcom/samsung/android/knox/zt/config/TrustFactorService$1$2;->val$map:Ljava/util/Map;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/zt/config/TrustFactorService;->onFactorStart(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/zt/config/TrustFactorService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
