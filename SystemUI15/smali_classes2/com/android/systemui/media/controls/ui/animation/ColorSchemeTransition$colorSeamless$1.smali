.class final Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$colorSeamless$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$colorSeamless$1;->this$0:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/monet/ColorScheme;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$colorSeamless$1;->this$0:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    iget-object p1, p1, Lcom/android/systemui/monet/ColorScheme;->mAccent1:Lcom/android/systemui/monet/TonalPalette;

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/monet/TonalPalette;->getS100()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/monet/TonalPalette;->getS200()I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
