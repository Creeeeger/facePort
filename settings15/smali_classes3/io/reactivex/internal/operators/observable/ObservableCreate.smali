.class public final Lio/reactivex/internal/operators/observable/ObservableCreate;
.super Lio/reactivex/Observable;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final source:Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$$ExternalSyntheticLambda3;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$$ExternalSyntheticLambda3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCreate;->source:Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$$ExternalSyntheticLambda3;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/Observer;)V
    .locals 2

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter;-><init>(Lio/reactivex/Observer;)V

    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :try_start_0
    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate;->source:Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$$ExternalSyntheticLambda3;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$$ExternalSyntheticLambda3;->subscribe(Lio/reactivex/ObservableEmitter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/disposables/Disposable;

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne p1, v1, :cond_0

    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object p1, v0, Lio/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter;->observer:Lio/reactivex/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)V

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)V

    throw p0
.end method
