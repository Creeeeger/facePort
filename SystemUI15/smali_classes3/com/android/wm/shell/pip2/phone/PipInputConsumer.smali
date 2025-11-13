.class public final Lcom/android/wm/shell/pip2/phone/PipInputConsumer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mInputEventReceiver:Lcom/android/wm/shell/pip2/phone/PipInputConsumer$InputEventReceiver;

.field public mListener:Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda7;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mName:Ljava/lang/String;

.field public mRegistrationListener:Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda7;

.field public final mToken:Landroid/os/IBinder;

.field public final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/view/IWindowManager;Ljava/lang/String;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipInputConsumer;->mWindowManager:Landroid/view/IWindowManager;

    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipInputConsumer;->mToken:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/android/wm/shell/pip2/phone/PipInputConsumer;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/wm/shell/pip2/phone/PipInputConsumer;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-void
.end method
