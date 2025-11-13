.class Lcom/samsung/android/knox/zt/config/TrustFactorService$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/knox/zt/config/ITrustFactorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/zt/config/TrustFactorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/zt/config/TrustFactorService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/zt/config/TrustFactorService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/zt/config/TrustFactorService$1;->this$0:Lcom/samsung/android/knox/zt/config/TrustFactorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTrustScore()J
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/knox/zt/config/TrustFactorService$1;->this$0:Lcom/samsung/android/knox/zt/config/TrustFactorService;

    iget-wide v0, p0, Lcom/samsung/android/knox/zt/config/TrustFactorService;->mScore:J

    return-wide v0
.end method

.method public getType()Lcom/samsung/android/knox/zt/config/TrustFactorType;
    .locals 0

    sget-object p0, Lcom/samsung/android/knox/zt/config/TrustFactorType;->TRUSTED_SERVICE:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    return-object p0
.end method

.method public init(Lcom/samsung/android/knox/zt/config/IResultListener;)I
    .locals 2

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/knox/zt/config/TrustFactorService$1;->this$0:Lcom/samsung/android/knox/zt/config/TrustFactorService;

    invoke-virtual {v1}, Landroid/app/Service;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/knox/zt/config/TrustFactorService$1$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/knox/zt/config/TrustFactorService$1$1;-><init>(Lcom/samsung/android/knox/zt/config/TrustFactorService$1;Lcom/samsung/android/knox/zt/config/IResultListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public isStarted()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/config/TrustFactorService$1;->this$0:Lcom/samsung/android/knox/zt/config/TrustFactorService;

    iget-boolean p0, p0, Lcom/samsung/android/knox/zt/config/TrustFactorService;->mStarted:Z

    return p0
.end method

.method public start(Ljava/util/Map;Lcom/samsung/android/knox/zt/config/ITrustFactorListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/zt/config/TrustFactorService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/zt/config/TrustFactorService$1;->this$0:Lcom/samsung/android/knox/zt/config/TrustFactorService;

    iput-object p2, v0, Lcom/samsung/android/knox/zt/config/TrustFactorService;->mListener:Lcom/samsung/android/knox/zt/config/ITrustFactorListener;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/samsung/android/knox/zt/config/TrustFactorService;->mScore:J

    const/4 p2, 0x1

    iput-boolean p2, v0, Lcom/samsung/android/knox/zt/config/TrustFactorService;->mStarted:Z

    new-instance p2, Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/knox/zt/config/TrustFactorService$1;->this$0:Lcom/samsung/android/knox/zt/config/TrustFactorService;

    invoke-virtual {v0}, Landroid/app/Service;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/samsung/android/knox/zt/config/TrustFactorService$1$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/zt/config/TrustFactorService$1$2;-><init>(Lcom/samsung/android/knox/zt/config/TrustFactorService$1;Ljava/util/Map;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public stop()I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/zt/config/TrustFactorService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/zt/config/TrustFactorService$1;->this$0:Lcom/samsung/android/knox/zt/config/TrustFactorService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/knox/zt/config/TrustFactorService;->mListener:Lcom/samsung/android/knox/zt/config/ITrustFactorListener;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/samsung/android/knox/zt/config/TrustFactorService;->mScore:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/knox/zt/config/TrustFactorService;->mStarted:Z

    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/knox/zt/config/TrustFactorService$1;->this$0:Lcom/samsung/android/knox/zt/config/TrustFactorService;

    invoke-virtual {v2}, Landroid/app/Service;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/samsung/android/knox/zt/config/TrustFactorService$1$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/knox/zt/config/TrustFactorService$1$3;-><init>(Lcom/samsung/android/knox/zt/config/TrustFactorService$1;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1
.end method
