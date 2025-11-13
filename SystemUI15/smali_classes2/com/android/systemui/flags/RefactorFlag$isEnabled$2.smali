.class final Lcom/android/systemui/flags/RefactorFlag$isEnabled$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/flags/RefactorFlag;


# direct methods
.method public constructor <init>(Lcom/android/systemui/flags/RefactorFlag;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/flags/RefactorFlag$isEnabled$2;->this$0:Lcom/android/systemui/flags/RefactorFlag;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/flags/RefactorFlag$isEnabled$2;->this$0:Lcom/android/systemui/flags/RefactorFlag;

    iget-object v0, v0, Lcom/android/systemui/flags/RefactorFlag;->injectedFlags:Lcom/android/systemui/flags/FeatureFlags;

    if-nez v0, :cond_0

    const-class v0, Lcom/android/systemui/flags/FeatureFlags;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/flags/FeatureFlags;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/flags/RefactorFlag$isEnabled$2;->this$0:Lcom/android/systemui/flags/RefactorFlag;

    iget-object p0, p0, Lcom/android/systemui/flags/RefactorFlag;->readFlagValue:Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method
