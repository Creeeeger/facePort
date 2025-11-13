.class final synthetic Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$textTertiary$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$textTertiary$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$textTertiary$1;

    invoke-direct {v0}, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$textTertiary$1;-><init>()V

    sput-object v0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$textTertiary$1;->INSTANCE:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$textTertiary$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string/jumbo v4, "textTertiaryFromScheme(Lcom/android/systemui/monet/ColorScheme;)I"

    const/4 v5, 0x1

    const/4 v1, 0x1

    const-class v2, Lcom/android/systemui/media/controls/ui/animation/MediaColorSchemesKt;

    const-string/jumbo v3, "textTertiaryFromScheme"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/monet/ColorScheme;

    iget-object p0, p1, Lcom/android/systemui/monet/ColorScheme;->mNeutral2:Lcom/android/systemui/monet/TonalPalette;

    iget-object p0, p0, Lcom/android/systemui/monet/TonalPalette;->allShades:Ljava/util/List;

    const/4 p1, 0x6

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    return-object p0
.end method
