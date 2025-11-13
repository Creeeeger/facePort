.class final Lcom/android/systemui/power/domain/interactor/PowerInteractor$Companion$checkEquivalentUnlessEmitDuplicatesUnderTest$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/power/domain/interactor/PowerInteractor$Companion$checkEquivalentUnlessEmitDuplicatesUnderTest$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/power/domain/interactor/PowerInteractor$Companion$checkEquivalentUnlessEmitDuplicatesUnderTest$1;

    invoke-direct {v0}, Lcom/android/systemui/power/domain/interactor/PowerInteractor$Companion$checkEquivalentUnlessEmitDuplicatesUnderTest$1;-><init>()V

    sput-object v0, Lcom/android/systemui/power/domain/interactor/PowerInteractor$Companion$checkEquivalentUnlessEmitDuplicatesUnderTest$1;->INSTANCE:Lcom/android/systemui/power/domain/interactor/PowerInteractor$Companion$checkEquivalentUnlessEmitDuplicatesUnderTest$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-boolean p2, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->emitDuplicateWakefulnessValue:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    sput-boolean v0, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->emitDuplicateWakefulnessValue:Z

    goto :goto_0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
