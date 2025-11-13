.class public final Lcom/android/systemui/unfold/UnfoldTransitionModule$provideNaturalRotationProgressProvider$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $rotationChangeProvider:Lcom/android/systemui/unfold/updates/RotationChangeProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/unfold/updates/RotationChangeProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldTransitionModule$provideNaturalRotationProgressProvider$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/unfold/UnfoldTransitionModule$provideNaturalRotationProgressProvider$1;->$rotationChangeProvider:Lcom/android/systemui/unfold/updates/RotationChangeProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    new-instance v0, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;

    iget-object v1, p0, Lcom/android/systemui/unfold/UnfoldTransitionModule$provideNaturalRotationProgressProvider$1;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldTransitionModule$provideNaturalRotationProgressProvider$1;->$rotationChangeProvider:Lcom/android/systemui/unfold/updates/RotationChangeProvider;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p0, p1}, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;-><init>(Landroid/content/Context;Lcom/android/systemui/unfold/updates/RotationChangeProvider;Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V

    return-object v0
.end method
