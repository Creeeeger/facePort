.class public final Lcom/android/systemui/flags/RefactorFlag$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/flags/RefactorFlag$Companion;-><init>()V

    return-void
.end method

.method public static forView$default(Lcom/android/systemui/flags/RefactorFlag$Companion;Lcom/android/systemui/flags/UnreleasedFlag;)Lcom/android/systemui/flags/RefactorFlag;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/systemui/flags/RefactorFlag;

    new-instance v0, Lcom/android/systemui/flags/RefactorFlag$Companion$forView$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/flags/RefactorFlag$Companion$forView$1;-><init>(Lcom/android/systemui/flags/UnreleasedFlag;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0, v1}, Lcom/android/systemui/flags/RefactorFlag;-><init>(Lcom/android/systemui/flags/FeatureFlags;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
