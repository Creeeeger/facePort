.class final Lcom/android/settingslib/spaprivileged/template/app/AppInfoPageKt$AppInfoPage$1;
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
.field final synthetic $content:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field

.field final synthetic $footerContent:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $packageInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageInfo;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppInfoPageKt$AppInfoPage$1;->$packageInfo:Landroid/content/pm/PackageInfo;

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/template/app/AppInfoPageKt$AppInfoPage$1;->$content:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lcom/android/settingslib/spaprivileged/template/app/AppInfoPageKt$AppInfoPage$1;->$footerContent:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    move-object p2, p1

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const p2, 0x47e3b76e

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object p2, p0, Lcom/android/settingslib/spaprivileged/template/app/AppInfoPageKt$AppInfoPage$1;->$packageInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p2

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppInfoPageKt$AppInfoPage$1;->$packageInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez p2, :cond_2

    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, p2, :cond_3

    :cond_2
    new-instance v1, Lcom/android/settingslib/spaprivileged/template/app/AppInfoProvider;

    invoke-direct {v1, v0}, Lcom/android/settingslib/spaprivileged/template/app/AppInfoProvider;-><init>(Landroid/content/pm/PackageInfo;)V

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    move-object v0, v1

    check-cast v0, Lcom/android/settingslib/spaprivileged/template/app/AppInfoProvider;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v4, 0x206

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/spaprivileged/template/app/AppInfoProvider;->AppInfo(ZZLandroidx/compose/runtime/Composer;II)V

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppInfoPageKt$AppInfoPage$1;->$content:Lkotlin/jvm/functions/Function3;

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppInfoPageKt$AppInfoPage$1;->$packageInfo:Landroid/content/pm/PackageInfo;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppInfoPageKt$AppInfoPage$1;->$footerContent:Lkotlin/jvm/functions/Function2;

    invoke-static {p0, p1, p2}, Lcom/android/settingslib/spa/widget/ui/FooterKt;->Footer(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
