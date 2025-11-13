.class public final Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeTask;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final parent:Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;

.field public final synthetic this$0:Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeTask;->this$0:Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeTask;->parent:Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeTask;->this$0:Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;->source:Lio/reactivex/Observable;

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeTask;->parent:Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;

    invoke-virtual {v0, p0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
