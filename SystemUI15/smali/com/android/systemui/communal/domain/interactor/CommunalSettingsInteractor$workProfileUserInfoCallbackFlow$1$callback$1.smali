.class public final Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor$workProfileUserInfoCallbackFlow$1$callback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor$workProfileUserInfoCallbackFlow$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProfilesChanged(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor$workProfileUserInfoCallbackFlow$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {p0, p1}, Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor$workProfileUserInfoCallbackFlow$1;->invokeSuspend$send(Lkotlinx/coroutines/channels/ProducerScope;Ljava/util/List;)V

    return-void
.end method
