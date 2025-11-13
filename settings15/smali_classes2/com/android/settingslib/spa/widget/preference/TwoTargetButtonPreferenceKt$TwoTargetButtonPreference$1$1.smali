.class final Lcom/android/settingslib/spa/widget/preference/TwoTargetButtonPreferenceKt$TwoTargetButtonPreference$1$1;
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


# instance fields
.field final synthetic $buttonIcon:Landroidx/compose/ui/graphics/vector/ImageVector;

.field final synthetic $buttonIconDescription:Ljava/lang/String;

.field final synthetic $onButtonClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetButtonPreferenceKt$TwoTargetButtonPreference$1$1;->$onButtonClick:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetButtonPreferenceKt$TwoTargetButtonPreference$1$1;->$buttonIcon:Landroidx/compose/ui/graphics/vector/ImageVector;

    iput-object p3, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetButtonPreferenceKt$TwoTargetButtonPreference$1$1;->$buttonIconDescription:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p1, p1, 0xb

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    move-object p1, v6

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetButtonPreferenceKt$TwoTargetButtonPreference$1$1;->$onButtonClick:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/android/settingslib/spa/widget/preference/TwoTargetButtonPreferenceKt$TwoTargetButtonPreference$1$1$1;

    iget-object p2, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetButtonPreferenceKt$TwoTargetButtonPreference$1$1;->$buttonIcon:Landroidx/compose/ui/graphics/vector/ImageVector;

    iget-object p0, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetButtonPreferenceKt$TwoTargetButtonPreference$1$1;->$buttonIconDescription:Ljava/lang/String;

    invoke-direct {p1, p2, p0}, Lcom/android/settingslib/spa/widget/preference/TwoTargetButtonPreferenceKt$TwoTargetButtonPreference$1$1$1;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;)V

    const p0, -0x6d317ce1

    invoke-static {p0, p1, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    const/high16 v7, 0x30000

    const/16 v8, 0x1e

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
