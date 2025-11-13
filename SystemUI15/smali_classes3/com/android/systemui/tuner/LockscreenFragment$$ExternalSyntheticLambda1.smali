.class public final synthetic Lcom/android/systemui/tuner/LockscreenFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/tuner/LockscreenFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/LockscreenFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/LockscreenFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/tuner/LockscreenFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/tuner/LockscreenFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/tuner/LockscreenFragment;

    check-cast p1, Lcom/android/systemui/tuner/TunerService$Tunable;

    iget-object p0, p0, Lcom/android/systemui/tuner/LockscreenFragment;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p0, p1}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method
