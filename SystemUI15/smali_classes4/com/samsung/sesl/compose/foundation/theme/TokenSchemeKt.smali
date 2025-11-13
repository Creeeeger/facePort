.class public abstract Lcom/samsung/sesl/compose/foundation/theme/TokenSchemeKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final LocalSeslTokenScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/samsung/sesl/compose/foundation/theme/TokenSchemeKt$LocalSeslTokenScheme$1;->INSTANCE:Lcom/samsung/sesl/compose/foundation/theme/TokenSchemeKt$LocalSeslTokenScheme$1;

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/samsung/sesl/compose/foundation/theme/TokenSchemeKt;->LocalSeslTokenScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    return-void
.end method
