.class final synthetic Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$lockscreenVisibility$2;
.super Lkotlin/jvm/internal/AdaptedFunctionReference;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/AdaptedFunctionReference;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$lockscreenVisibility$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$lockscreenVisibility$2;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$lockscreenVisibility$2;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$lockscreenVisibility$2;->INSTANCE:Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$lockscreenVisibility$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-class v2, Lkotlin/Pair;

    const-string v4, "<init>(Ljava/lang/Object;Ljava/lang/Object;)V"

    const/4 v5, 0x4

    const/4 v1, 0x3

    const-string v3, "<init>"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    check-cast p2, Lcom/android/systemui/util/kotlin/WithPrev;

    check-cast p3, Lkotlin/coroutines/Continuation;

    sget-object p0, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor;->Companion:Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$Companion;

    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
