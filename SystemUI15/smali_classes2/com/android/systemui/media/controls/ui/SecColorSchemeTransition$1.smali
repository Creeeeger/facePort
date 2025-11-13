.class final synthetic Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$1;

    invoke-direct {v0}, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$1;-><init>()V

    sput-object v0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$1;->INSTANCE:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-class v2, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;

    const-string v4, "<init>(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V"

    const/4 v5, 0x0

    const/4 v1, 0x3

    const-string v3, "<init>"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    check-cast p2, Lkotlin/jvm/functions/Function1;

    check-cast p3, Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;-><init>(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-object p1
.end method
