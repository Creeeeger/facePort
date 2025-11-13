.class public final Landroid/app/contextualsearch/CallbackToken;
.super Ljava/lang/Object;
.source "CallbackToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/contextualsearch/CallbackToken;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = true

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mToken:Landroid/os/IBinder;

.field private blacklist mTokenUsed:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/app/contextualsearch/CallbackToken;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/app/contextualsearch/CallbackToken;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/contextualsearch/CallbackToken;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/app/contextualsearch/CallbackToken$1;

    invoke-direct {v0}, Landroid/app/contextualsearch/CallbackToken$1;-><init>()V

    sput-object v0, Landroid/app/contextualsearch/CallbackToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/contextualsearch/CallbackToken;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/contextualsearch/CallbackToken;->mTokenUsed:Z

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/contextualsearch/CallbackToken;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/contextualsearch/CallbackToken;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/contextualsearch/CallbackToken;->mTokenUsed:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/contextualsearch/CallbackToken;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/contextualsearch/CallbackToken-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/contextualsearch/CallbackToken;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist markUsedLocked()Z
    .locals 2

    iget-boolean v0, p0, Landroid/app/contextualsearch/CallbackToken;->mTokenUsed:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/contextualsearch/CallbackToken;->mTokenUsed:Z

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getContextualSearchState(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/contextualsearch/ContextualSearchState;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroid/app/contextualsearch/CallbackToken;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContextualSearchState for token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/contextualsearch/CallbackToken;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/app/contextualsearch/CallbackToken;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/app/contextualsearch/CallbackToken;->markUsedLocked()Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v2, "Token already used."

    invoke-direct {v0, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    :try_start_1
    const-string v0, "contextual_search"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/contextualsearch/IContextualSearchManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/contextualsearch/IContextualSearchManager;

    move-result-object v2

    new-instance v3, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;

    invoke-direct {v3, p1, p2}, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    if-eqz v2, :cond_1

    iget-object v4, p0, Landroid/app/contextualsearch/CallbackToken;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v4, v3}, Landroid/app/contextualsearch/IContextualSearchManager;->getContextualSearchState(Landroid/os/IBinder;Landroid/app/contextualsearch/IContextualSearchCallback;)V

    goto :goto_0

    :cond_1
    sget-object v4, Landroid/app/contextualsearch/CallbackToken;->TAG:Ljava/lang/String;

    const-string v5, "Failed to getContextualSearchState. Service null."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/contextualsearch/CallbackToken;->TAG:Ljava/lang/String;

    const-string v3, "Failed to call getContextualSearchState"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist getToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/app/contextualsearch/CallbackToken;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/contextualsearch/CallbackToken;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
