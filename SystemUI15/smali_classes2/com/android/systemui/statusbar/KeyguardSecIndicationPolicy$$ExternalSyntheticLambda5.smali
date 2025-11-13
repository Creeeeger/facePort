.class public final synthetic Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/IndicationPosition;

.field public final synthetic f$2:Lcom/android/systemui/statusbar/IndicationItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda5;->f$1:Lcom/android/systemui/statusbar/IndicationPosition;

    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda5;->f$2:Lcom/android/systemui/statusbar/IndicationItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda5;->f$2:Lcom/android/systemui/statusbar/IndicationItem;

    iget v1, v1, Lcom/android/systemui/statusbar/IndicationItem;->mItemId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "remove Item"

    const-string v4, ""

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda5;->f$1:Lcom/android/systemui/statusbar/IndicationPosition;

    filled-new-array {v3, p0, v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%12s pos = %7s %28s, id = %5d, "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->addLogs(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->getIndicationList(Lcom/android/systemui/statusbar/IndicationPosition;)Ljava/util/PriorityQueue;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/PriorityQueue;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->updateTopItem(Lcom/android/systemui/statusbar/IndicationPosition;)V

    return-void
.end method
