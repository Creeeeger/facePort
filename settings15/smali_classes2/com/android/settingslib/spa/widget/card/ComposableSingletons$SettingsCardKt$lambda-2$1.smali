.class final Lcom/android/settingslib/spa/widget/card/ComposableSingletons$SettingsCardKt$lambda-2$1;
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
.field public static final synthetic $r8$clinit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/spa/widget/card/ComposableSingletons$SettingsCardKt$lambda-2$1;

    invoke-direct {v0}, Lcom/android/settingslib/spa/widget/card/ComposableSingletons$SettingsCardKt$lambda-2$1;-><init>()V

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
    .locals 7

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

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance p0, Lcom/android/settingslib/spa/widget/card/CardModel;

    invoke-static {}, Landroidx/compose/material/icons/outlined/WarningAmberKt;->getWarningAmber()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v3

    new-instance p2, Lcom/android/settingslib/spa/widget/card/CardButton;

    sget-object v0, Lcom/android/settingslib/spa/widget/card/ComposableSingletons$SettingsCardKt$lambda-2$1$1;->INSTANCE:Lcom/android/settingslib/spa/widget/card/ComposableSingletons$SettingsCardKt$lambda-2$1$1;

    const-string v1, "Action"

    const/4 v2, 0x0

    invoke-direct {p2, v1, v2, v0}, Lcom/android/settingslib/spa/widget/card/CardButton;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v4, 0x0

    const/16 v6, 0x1d8

    const-string v1, "Lorem ipsum"

    const-string v2, "Lorem ipsum dolor sit amet, consectetur adipiscing elit."

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/spa/widget/card/CardModel;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Lkotlin/jvm/functions/Function0;Ljava/util/List;I)V

    const/16 p2, 0x8

    invoke-static {p0, p1, p2}, Lcom/android/settingslib/spa/widget/card/SettingsCardKt;->SettingsCard(Lcom/android/settingslib/spa/widget/card/CardModel;Landroidx/compose/runtime/Composer;I)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
