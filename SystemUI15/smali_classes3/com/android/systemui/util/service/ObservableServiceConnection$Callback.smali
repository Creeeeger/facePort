.class public interface abstract Lcom/android/systemui/util/service/ObservableServiceConnection$Callback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onConnected(Lcom/android/systemui/util/service/ObservableServiceConnection;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/service/ObservableServiceConnection<",
            "TT;>;TT;)V"
        }
    .end annotation
.end method

.method public abstract onDisconnected(Lcom/android/systemui/util/service/ObservableServiceConnection;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/service/ObservableServiceConnection<",
            "TT;>;I)V"
        }
    .end annotation
.end method
