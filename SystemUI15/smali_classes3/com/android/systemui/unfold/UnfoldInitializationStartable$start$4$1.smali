.class public final Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$4$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $progressProvider:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$4$1;->$progressProvider:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$4$1;->$progressProvider:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    invoke-interface {p0, p1}, Lcom/android/systemui/unfold/util/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method
