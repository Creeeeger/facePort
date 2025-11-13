.class Lcom/samsung/android/settings/eternal/EternalRemoteService$EternalHandler;
.super Landroid/os/Handler;
.source "EternalRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/eternal/EternalRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EternalHandler"
.end annotation


# instance fields
.field private final mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/settings/eternal/EternalRemoteService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/eternal/EternalRemoteService;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/EternalRemoteService$EternalHandler;->mService:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/samsung/android/settings/eternal/EternalRemoteService$EternalHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/eternal/EternalRemoteService;

    if-eqz p0, :cond_0

    .line 84
    invoke-static {p0, p1}, Lcom/samsung/android/settings/eternal/EternalRemoteService;->-$$Nest$mhandleMessage(Lcom/samsung/android/settings/eternal/EternalRemoteService;Landroid/os/Message;)V

    :cond_0
    return-void
.end method
