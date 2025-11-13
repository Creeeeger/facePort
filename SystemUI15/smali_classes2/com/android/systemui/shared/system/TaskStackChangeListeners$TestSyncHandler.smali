.class public final Lcom/android/systemui/shared/system/TaskStackChangeListeners$TestSyncHandler;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCb:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$TestSyncHandler;->mCb:Landroid/os/Handler$Callback;

    invoke-interface {p0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
