.class public final synthetic Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;

    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mAppClipsServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postForResult(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mMainExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method
