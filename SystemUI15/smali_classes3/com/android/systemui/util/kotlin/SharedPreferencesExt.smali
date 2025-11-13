.class public final Lcom/android/systemui/util/kotlin/SharedPreferencesExt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lcom/android/systemui/util/kotlin/SharedPreferencesExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/util/kotlin/SharedPreferencesExt;

    invoke-direct {v0}, Lcom/android/systemui/util/kotlin/SharedPreferencesExt;-><init>()V

    sput-object v0, Lcom/android/systemui/util/kotlin/SharedPreferencesExt;->INSTANCE:Lcom/android/systemui/util/kotlin/SharedPreferencesExt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final observe(Landroid/content/SharedPreferences;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Lkotlinx/coroutines/flow/Flow;"
        }
    .end annotation

    new-instance p0, Lcom/android/systemui/util/kotlin/SharedPreferencesExt$observe$1;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/util/kotlin/SharedPreferencesExt$observe$1;-><init>(Landroid/content/SharedPreferences;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
