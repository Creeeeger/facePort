.class final Lcom/android/settings/spa/system/ComposableSingletons$SystemMainKt$lambda-3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u000b\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/os/Bundle;",
        "invoke",
        "(Landroid/os/Bundle;Landroidx/compose/runtime/Composer;I)V"
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
.field public static final INSTANCE:Lcom/android/settings/spa/system/ComposableSingletons$SystemMainKt$lambda-3$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/spa/system/ComposableSingletons$SystemMainKt$lambda-3$1;

    invoke-direct {v0}, Lcom/android/settings/spa/system/ComposableSingletons$SystemMainKt$lambda-3$1;-><init>()V

    sput-object v0, Lcom/android/settings/spa/system/ComposableSingletons$SystemMainKt$lambda-3$1;->INSTANCE:Lcom/android/settings/spa/system/ComposableSingletons$SystemMainKt$lambda-3$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const p0, 0x7f142e3d

    invoke-static {p2, p0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/android/settings/spa/system/ComposableSingletons$SystemMainKt$lambda-3$1$1;

    invoke-direct {p1, p2, p0}, Lcom/android/settings/spa/system/ComposableSingletons$SystemMainKt$lambda-3$1$1;-><init>(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 p0, 0x2

    const/4 p3, 0x0

    invoke-static {p1, p3, p2, p3, p0}, Lcom/android/settingslib/spa/widget/preference/PreferenceKt;->Preference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;ZLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
