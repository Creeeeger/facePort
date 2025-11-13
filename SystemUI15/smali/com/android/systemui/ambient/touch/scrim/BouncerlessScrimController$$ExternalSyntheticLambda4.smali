.class public final synthetic Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    check-cast p1, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    iget-object p1, p1, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayContainerViewController;

    invoke-static {p1, p0}, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->-$$Nest$mupdateTransitionState(Lcom/android/systemui/dreams/DreamOverlayContainerViewController;F)V

    return-void
.end method
