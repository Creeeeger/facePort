.class public final Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/unfold/UnfoldInitializationStartable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldInitializationStartable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$4;->this$0:Lcom/android/systemui/unfold/UnfoldInitializationStartable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$4;->this$0:Lcom/android/systemui/unfold/UnfoldInitializationStartable;

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldInitializationStartable;->unfoldTransitionProgressForwarder:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$4$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$4$1;-><init>(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
