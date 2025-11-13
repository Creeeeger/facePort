.class Lcom/samsung/android/knox/cmfa/AuthFactorService$1;
.super Lcom/samsung/android/knox/cmfa/IAuthFactorService$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/cmfa/AuthFactorService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/cmfa/AuthFactorService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService$1;->this$0:Lcom/samsung/android/knox/cmfa/AuthFactorService;

    invoke-direct {p0}, Lcom/samsung/android/knox/cmfa/IAuthFactorService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getTrustScore()J
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService$1;->this$0:Lcom/samsung/android/knox/cmfa/AuthFactorService;

    iget-wide v0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mScore:J

    return-wide v0
.end method

.method public getType()Lcom/samsung/android/knox/cmfa/AuthFactorType;
    .locals 0

    sget-object p0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->TRUSTED_SERVICE:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    return-object p0
.end method

.method public init(Lcom/samsung/android/knox/cmfa/IResultListener;)I
    .locals 2

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService$1;->this$0:Lcom/samsung/android/knox/cmfa/AuthFactorService;

    invoke-virtual {v1}, Landroid/app/Service;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/knox/cmfa/AuthFactorService$1$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/knox/cmfa/AuthFactorService$1$1;-><init>(Lcom/samsung/android/knox/cmfa/AuthFactorService$1;Lcom/samsung/android/knox/cmfa/IResultListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public isStarted()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService$1;->this$0:Lcom/samsung/android/knox/cmfa/AuthFactorService;

    iget-boolean p0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mStarted:Z

    return p0
.end method

.method public start(Ljava/util/Map;Lcom/samsung/android/knox/cmfa/IAuthFactorListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService$1;->this$0:Lcom/samsung/android/knox/cmfa/AuthFactorService;

    iput-object p2, v0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mListener:Lcom/samsung/android/knox/cmfa/IAuthFactorListener;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mScore:J

    const/4 p2, 0x1

    iput-boolean p2, v0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mStarted:Z

    new-instance p2, Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService$1;->this$0:Lcom/samsung/android/knox/cmfa/AuthFactorService;

    invoke-virtual {v0}, Landroid/app/Service;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorService$1$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/cmfa/AuthFactorService$1$2;-><init>(Lcom/samsung/android/knox/cmfa/AuthFactorService$1;Ljava/util/Map;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public stop()I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService$1;->this$0:Lcom/samsung/android/knox/cmfa/AuthFactorService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mListener:Lcom/samsung/android/knox/cmfa/IAuthFactorListener;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mScore:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mStarted:Z

    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService$1;->this$0:Lcom/samsung/android/knox/cmfa/AuthFactorService;

    invoke-virtual {v2}, Landroid/app/Service;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/samsung/android/knox/cmfa/AuthFactorService$1$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/knox/cmfa/AuthFactorService$1$3;-><init>(Lcom/samsung/android/knox/cmfa/AuthFactorService$1;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1
.end method
