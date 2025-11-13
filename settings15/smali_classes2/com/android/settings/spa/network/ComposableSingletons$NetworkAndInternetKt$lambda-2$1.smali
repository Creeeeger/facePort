.class final Lcom/android/settings/spa/network/ComposableSingletons$NetworkAndInternetKt$lambda-2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/settings/spa/network/ComposableSingletons$NetworkAndInternetKt$lambda-2$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/spa/network/ComposableSingletons$NetworkAndInternetKt$lambda-2$1;

    invoke-direct {v0}, Lcom/android/settings/spa/network/ComposableSingletons$NetworkAndInternetKt$lambda-2$1;-><init>()V

    sput-object v0, Lcom/android/settings/spa/network/ComposableSingletons$NetworkAndInternetKt$lambda-2$1;->INSTANCE:Lcom/android/settings/spa/network/ComposableSingletons$NetworkAndInternetKt$lambda-2$1;

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
    .locals 11

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p0

    and-int/lit8 p0, p0, 0xb

    const/4 p2, 0x2

    if-ne p0, p2, :cond_1

    move-object p0, p1

    check-cast p0, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_2

    :cond_1
    :goto_0
    sget-object p0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object p0, Landroidx/compose/material/icons/outlined/WifiKt;->_wifi:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz p0, :cond_2

    goto/16 :goto_1

    :cond_2
    new-instance p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v1, "Outlined.Wifi"

    const/high16 v2, 0x41c00000    # 24.0f

    const/high16 v3, 0x41c00000    # 24.0f

    const/high16 v4, 0x41c00000    # 24.0f

    const/high16 v5, 0x41c00000    # 24.0f

    const-wide/16 v6, 0x0

    const/16 v10, 0x60

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    sget-object p2, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    new-instance p2, Landroidx/compose/ui/graphics/SolidColor;

    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Black:J

    invoke-direct {p2, v0, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v9, 0x41100000    # 9.0f

    invoke-virtual {v0, v1, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v5, 0x41507ae1    # 13.03f

    const v6, -0x3f60f5c3    # -4.97f

    const v3, 0x409f0a3d    # 4.97f

    const v4, -0x3f60f5c3    # -4.97f

    const/high16 v7, 0x41900000    # 18.0f

    const/4 v8, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/high16 v10, -0x40000000    # -2.0f

    invoke-virtual {v0, v1, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v5, 0x40e28f5c    # 7.08f

    const v6, 0x403b851f    # 2.93f

    const v3, 0x418770a4    # 16.93f

    const v4, 0x403b851f    # 2.93f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x41100000    # 9.0f

    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {v0, v9, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v0, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const/high16 v3, -0x3fc00000    # -3.0f

    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v5, -0x3f751eb8    # -4.34f

    const v6, -0x402b851f    # -1.66f

    const v3, -0x402ccccd    # -1.65f

    const v4, -0x402b851f    # -1.66f

    const/high16 v7, -0x3f400000    # -6.0f

    const/4 v8, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v5, 0x40e7ae14    # 7.24f

    const v6, -0x3fcf5c29    # -2.76f

    const v3, 0x4030a3d7    # 2.76f

    const v4, -0x3fcf5c29    # -2.76f

    const/high16 v7, 0x41200000    # 10.0f

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v0, v1, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v5, 0x410deb85    # 8.87f

    const v6, 0x41123d71    # 9.14f

    const v3, 0x41723d71    # 15.14f

    const v4, 0x41123d71    # 9.14f

    const/high16 v7, 0x40a00000    # 5.0f

    const/high16 v8, 0x41500000    # 13.0f

    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v0, v0, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    invoke-static {p0, v0, p2}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;Landroidx/compose/ui/graphics/SolidColor;)V

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object p0

    sput-object p0, Landroidx/compose/material/icons/outlined/WifiKt;->_wifi:Landroidx/compose/ui/graphics/vector/ImageVector;

    :goto_1
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/settingslib/spa/widget/ui/IconKt;->SettingsIcon(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;I)V

    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
