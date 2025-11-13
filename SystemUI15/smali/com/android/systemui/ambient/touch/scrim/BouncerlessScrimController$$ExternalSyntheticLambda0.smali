.class public final synthetic Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController;

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController;->mCallbacks:Ljava/util/HashSet;

    new-instance v0, Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
