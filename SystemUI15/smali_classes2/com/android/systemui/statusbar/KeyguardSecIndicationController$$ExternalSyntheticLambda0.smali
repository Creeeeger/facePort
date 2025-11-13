.class public final synthetic Lcom/android/systemui/statusbar/KeyguardSecIndicationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lio/reactivex/functions/Action;
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    check-cast p1, Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    return-void
.end method

.method public run()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getUnlockGuideText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    return-void
.end method
