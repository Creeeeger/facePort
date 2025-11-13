.class public final Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$serviceConnection$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$serviceConnection$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$serviceConnection$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->DEBUG:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "onServiceConnected"

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$serviceConnection$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->blockingQueue:Ljava/util/concurrent/BlockingDeque;

    sget v0, Lcom/nttdocomo/android/screenlockservice/IScreenLockService$Stub;->$r8$clinit:I

    const-string v0, "com.nttdocomo.android.screenlockservice.IScreenLockService"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/nttdocomo/android/screenlockservice/IScreenLockService;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/nttdocomo/android/screenlockservice/IScreenLockService;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/nttdocomo/android/screenlockservice/IScreenLockService$Stub$Proxy;

    invoke-direct {v0, p2}, Lcom/nttdocomo/android/screenlockservice/IScreenLockService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_0
    check-cast p1, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$serviceConnection$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onServiceConnected exception "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$serviceConnection$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    sget-boolean p1, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->DEBUG:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "onServiceDisconnected"

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    return-void
.end method
