.class Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;
.super Lcom/android/internal/telephony/ISipDialogStateCallback$Stub;
.source "SipDialogStateCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/SipDialogStateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackBinder"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mSipDialogStateCallbackWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/ims/SipDialogStateCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$rRMWRsVgZEeOnxnrFT0BAe561gk(Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;Landroid/telephony/ims/SipDialogStateCallback;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;->lambda$onActiveSipDialogsChanged$1(Landroid/telephony/ims/SipDialogStateCallback;Ljava/util/List;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telephony/ims/SipDialogStateCallback;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/ISipDialogStateCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;->mSipDialogStateCallbackWeakRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/ims/SipDialogStateCallback;Ljava/util/concurrent/Executor;Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;-><init>(Landroid/telephony/ims/SipDialogStateCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic blacklist lambda$onActiveSipDialogsChanged$0(Landroid/telephony/ims/SipDialogStateCallback;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/ims/SipDialogStateCallback;->onActiveSipDialogsChanged(Ljava/util/List;)V

    return-void
.end method

.method private synthetic blacklist lambda$onActiveSipDialogsChanged$1(Landroid/telephony/ims/SipDialogStateCallback;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/SipDialogStateCallback;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method blacklist getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public blacklist onActiveSipDialogsChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/SipDialogState;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;->mSipDialogStateCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/SipDialogStateCallback;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;Landroid/telephony/ims/SipDialogStateCallback;Ljava/util/List;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
