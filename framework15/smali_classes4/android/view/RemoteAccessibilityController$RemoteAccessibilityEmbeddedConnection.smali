.class final Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;
.super Ljava/lang/Object;
.source "RemoteAccessibilityController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/RemoteAccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RemoteAccessibilityEmbeddedConnection"
.end annotation


# instance fields
.field private final blacklist mConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

.field private final blacklist mController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/RemoteAccessibilityController;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLeashToken:Landroid/os/IBinder;


# direct methods
.method public static synthetic blacklist $r8$lambda$SFkl2BM9gQaGR_d-ID4papGfqNk(Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;Landroid/view/RemoteAccessibilityController;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->lambda$binderDied$0(Landroid/view/RemoteAccessibilityController;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnection(Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;)Landroid/view/accessibility/IAccessibilityEmbeddedConnection;
    .locals 0

    iget-object p0, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->mConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/view/RemoteAccessibilityController;Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->mController:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->mConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    iput-object p3, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->mLeashToken:Landroid/os/IBinder;

    return-void
.end method

.method private synthetic blacklist lambda$binderDied$0(Landroid/view/RemoteAccessibilityController;)V
    .locals 1

    invoke-static {p1}, Landroid/view/RemoteAccessibilityController;->-$$Nest$fgetmConnectionWrapper(Landroid/view/RemoteAccessibilityController;)Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/view/RemoteAccessibilityController;->-$$Nest$fputmConnectionWrapper(Landroid/view/RemoteAccessibilityController;Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->unlinkToDeath()V

    iget-object v0, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAccessibilityController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection$$ExternalSyntheticLambda0;-><init>(Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;Landroid/view/RemoteAccessibilityController;)V

    invoke-static {v0, v1}, Landroid/view/RemoteAccessibilityController;->-$$Nest$mrunOnUiThread(Landroid/view/RemoteAccessibilityController;Ljava/lang/Runnable;)V

    return-void
.end method

.method blacklist getConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;
    .locals 1

    iget-object v0, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->mConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    return-object v0
.end method

.method blacklist getLeashToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->mLeashToken:Landroid/os/IBinder;

    return-object v0
.end method

.method blacklist linkToDeath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->mConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method blacklist unlinkToDeath()V
    .locals 2

    iget-object v0, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->mConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
