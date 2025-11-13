.class public final synthetic Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/ambient/touch/TouchMonitor$Evaluator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ambient/touch/TouchMonitor$Evaluator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda10;->f$0:Lcom/android/systemui/ambient/touch/TouchMonitor$Evaluator;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda10;->f$0:Lcom/android/systemui/ambient/touch/TouchMonitor$Evaluator;

    check-cast p1, Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {p0, p1}, Lcom/android/systemui/ambient/touch/TouchMonitor$Evaluator;->evaluate(Landroid/view/GestureDetector$OnGestureListener;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
