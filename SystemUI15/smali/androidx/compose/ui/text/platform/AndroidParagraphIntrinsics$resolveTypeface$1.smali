.class final Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;->this$0:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/ui/text/font/FontFamily;

    check-cast p2, Landroidx/compose/ui/text/font/FontWeight;

    check-cast p3, Landroidx/compose/ui/text/font/FontStyle;

    iget p3, p3, Landroidx/compose/ui/text/font/FontStyle;->value:I

    check-cast p4, Landroidx/compose/ui/text/font/FontSynthesis;

    iget p4, p4, Landroidx/compose/ui/text/font/FontSynthesis;->value:I

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;->this$0:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    iget-object v0, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    check-cast v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->resolve-DPcqOEQ(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;II)Landroidx/compose/ui/text/font/TypefaceResult;

    move-result-object p1

    instance-of p2, p1, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    if-nez p2, :cond_0

    new-instance p2, Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;

    iget-object p3, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;->this$0:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    iget-object p3, p3, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->resolvedTypefaces:Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;

    invoke-direct {p2, p1, p3}, Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;)V

    iget-object p0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;->this$0:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    iput-object p2, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->resolvedTypefaces:Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;

    iget-object p0, p2, Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;->initial:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    check-cast p1, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    iget-object p0, p1, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;->value:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Typeface;

    :goto_0
    return-object p0
.end method
