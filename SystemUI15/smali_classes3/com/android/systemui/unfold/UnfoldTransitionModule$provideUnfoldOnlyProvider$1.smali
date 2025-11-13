.class public final Lcom/android/systemui/unfold/UnfoldTransitionModule$provideUnfoldOnlyProvider$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $executor:Ljava/util/concurrent/Executor;

.field public final synthetic $foldProvider:Lcom/android/systemui/unfold/updates/FoldProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/updates/FoldProvider;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldTransitionModule$provideUnfoldOnlyProvider$1;->$foldProvider:Lcom/android/systemui/unfold/updates/FoldProvider;

    iput-object p2, p0, Lcom/android/systemui/unfold/UnfoldTransitionModule$provideUnfoldOnlyProvider$1;->$executor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v3, p1

    check-cast v3, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    new-instance p1, Lcom/android/systemui/unfold/util/UnfoldOnlyProgressProvider;

    iget-object v1, p0, Lcom/android/systemui/unfold/UnfoldTransitionModule$provideUnfoldOnlyProvider$1;->$foldProvider:Lcom/android/systemui/unfold/updates/FoldProvider;

    iget-object v2, p0, Lcom/android/systemui/unfold/UnfoldTransitionModule$provideUnfoldOnlyProvider$1;->$executor:Ljava/util/concurrent/Executor;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/unfold/util/UnfoldOnlyProgressProvider;-><init>(Lcom/android/systemui/unfold/updates/FoldProvider;Ljava/util/concurrent/Executor;Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method
