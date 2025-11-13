.class public abstract Lcom/android/compose/modifiers/PaddingKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final PaddingUnspecified:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/compose/modifiers/PaddingKt$PaddingUnspecified$1;->INSTANCE:Lcom/android/compose/modifiers/PaddingKt$PaddingUnspecified$1;

    sput-object v0, Lcom/android/compose/modifiers/PaddingKt;->PaddingUnspecified:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static padding$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;
    .locals 7

    sget-object v1, Lcom/android/compose/modifiers/PaddingKt;->PaddingUnspecified:Lkotlin/jvm/functions/Function1;

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 p1, p4, 0x4

    if-eqz p1, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 p1, p4, 0x8

    if-eqz p1, :cond_2

    move-object v4, v1

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    new-instance p1, Lcom/android/compose/modifiers/PaddingModifier;

    sget-object v6, Landroidx/compose/ui/platform/InspectableValueKt;->NoInspectorInfo:Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/compose/modifiers/PaddingModifier;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;)V

    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
