.class public final Lcom/android/systemui/flags/RefactorFlag;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/flags/RefactorFlag$Companion;


# instance fields
.field public final flagName:Ljava/lang/Object;

.field public final injectedFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final isEnabled$delegate:Lkotlin/Lazy;

.field public final readFlagValue:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/flags/RefactorFlag$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/flags/RefactorFlag$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/flags/RefactorFlag;->Companion:Lcom/android/systemui/flags/RefactorFlag$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/flags/ReleasedFlag;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/flags/RefactorFlag$2;

    invoke-direct {v0, p2}, Lcom/android/systemui/flags/RefactorFlag$2;-><init>(Lcom/android/systemui/flags/ReleasedFlag;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/flags/RefactorFlag;-><init>(Lcom/android/systemui/flags/FeatureFlags;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/flags/UnreleasedFlag;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/flags/RefactorFlag$1;

    invoke-direct {v0, p2}, Lcom/android/systemui/flags/RefactorFlag$1;-><init>(Lcom/android/systemui/flags/UnreleasedFlag;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/flags/RefactorFlag;-><init>(Lcom/android/systemui/flags/FeatureFlags;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/flags/FeatureFlags;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/flags/RefactorFlag;->injectedFlags:Lcom/android/systemui/flags/FeatureFlags;

    iput-object p2, p0, Lcom/android/systemui/flags/RefactorFlag;->flagName:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/flags/RefactorFlag;->readFlagValue:Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/android/systemui/flags/RefactorFlag$isEnabled$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/flags/RefactorFlag$isEnabled$2;-><init>(Lcom/android/systemui/flags/RefactorFlag;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/flags/RefactorFlag;->isEnabled$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/flags/FeatureFlags;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/flags/RefactorFlag;-><init>(Lcom/android/systemui/flags/FeatureFlags;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
