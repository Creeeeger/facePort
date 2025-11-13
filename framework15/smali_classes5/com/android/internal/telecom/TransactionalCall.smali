.class public Lcom/android/internal/telecom/TransactionalCall;
.super Ljava/lang/Object;
.source "TransactionalCall.java"


# instance fields
.field private final blacklist mCallAttributes:Landroid/telecom/CallAttributes;

.field private blacklist mCallControl:Landroid/telecom/CallControl;

.field private final blacklist mCallControlCallback:Landroid/telecom/CallControlCallback;

.field private final blacklist mCallId:Ljava/lang/String;

.field private final blacklist mCallStateCallback:Landroid/telecom/CallEventCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mPendingControl:Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/OutcomeReceiver<",
            "Landroid/telecom/CallControl;",
            "Landroid/telecom/CallException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Landroid/telecom/CallAttributes;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/telecom/CallControlCallback;Landroid/telecom/CallEventCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/telecom/CallAttributes;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/telecom/CallControl;",
            "Landroid/telecom/CallException;",
            ">;",
            "Landroid/telecom/CallControlCallback;",
            "Landroid/telecom/CallEventCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telecom/TransactionalCall;->mCallId:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/telecom/TransactionalCall;->mCallAttributes:Landroid/telecom/CallAttributes;

    iput-object p3, p0, Lcom/android/internal/telecom/TransactionalCall;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/internal/telecom/TransactionalCall;->mPendingControl:Landroid/os/OutcomeReceiver;

    iput-object p5, p0, Lcom/android/internal/telecom/TransactionalCall;->mCallControlCallback:Landroid/telecom/CallControlCallback;

    iput-object p6, p0, Lcom/android/internal/telecom/TransactionalCall;->mCallStateCallback:Landroid/telecom/CallEventCallback;

    return-void
.end method


# virtual methods
.method public blacklist getCallAttributes()Landroid/telecom/CallAttributes;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telecom/TransactionalCall;->mCallAttributes:Landroid/telecom/CallAttributes;

    return-object v0
.end method

.method public blacklist getCallControl()Landroid/telecom/CallControl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telecom/TransactionalCall;->mCallControl:Landroid/telecom/CallControl;

    return-object v0
.end method

.method public blacklist getCallControlCallback()Landroid/telecom/CallControlCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telecom/TransactionalCall;->mCallControlCallback:Landroid/telecom/CallControlCallback;

    return-object v0
.end method

.method public blacklist getCallId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telecom/TransactionalCall;->mCallId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCallStateCallback()Landroid/telecom/CallEventCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telecom/TransactionalCall;->mCallStateCallback:Landroid/telecom/CallEventCallback;

    return-object v0
.end method

.method public blacklist getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telecom/TransactionalCall;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public blacklist getPendingControl()Landroid/os/OutcomeReceiver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/telecom/CallControl;",
            "Landroid/telecom/CallException;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telecom/TransactionalCall;->mPendingControl:Landroid/os/OutcomeReceiver;

    return-object v0
.end method

.method public blacklist setCallControl(Landroid/telecom/CallControl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telecom/TransactionalCall;->mCallControl:Landroid/telecom/CallControl;

    return-void
.end method
