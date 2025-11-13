.class final Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$MediaCardKt$lambda-2$1;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$MediaCardKt$lambda-2$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$MediaCardKt$lambda-2$1;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$MediaCardKt$lambda-2$1;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$MediaCardKt$lambda-2$1;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$MediaCardKt$lambda-2$1;

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
    .locals 8

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p0

    and-int/lit8 p0, p0, 0xb

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    move-object p0, v5

    check-cast p0, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object p0, Lcom/android/systemui/media/mediaoutput/icons/Icons$Action;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Action;

    sget-object p0, Lcom/android/systemui/media/mediaoutput/icons/action/RemoteKt;->Remote$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/graphics/vector/ImageVector;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-string v1, ""

    const/16 v6, 0x30

    const/16 v7, 0xc

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
