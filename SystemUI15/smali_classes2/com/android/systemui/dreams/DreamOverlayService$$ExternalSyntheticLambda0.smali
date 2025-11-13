.class public final synthetic Lcom/android/systemui/dreams/DreamOverlayService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/dreams/DreamOverlayService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dreams/DreamOverlayService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayService$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/dreams/DreamOverlayService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayService$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/dreams/DreamOverlayService;

    check-cast p1, Ljava/lang/Boolean;

    sget-boolean v0, Lcom/android/systemui/dreams/DreamOverlayService;->DEBUG:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mCommunalAvailable:Z

    iget-boolean p1, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mStarted:Z

    if-eqz p1, :cond_2

    invoke-static {}, Landroid/service/dreams/Flags;->dreamWakeRedirect()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mCommunalAvailable:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/service/dreams/DreamOverlayService;->redirectWake(Z)V

    :cond_2
    :goto_1
    return-void
.end method
