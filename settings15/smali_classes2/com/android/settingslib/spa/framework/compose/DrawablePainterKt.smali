.class public abstract Lcom/android/settingslib/spa/framework/compose/DrawablePainterKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final MAIN_HANDLER$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/android/settingslib/spa/framework/compose/DrawablePainterKt$MAIN_HANDLER$2;->INSTANCE:Lcom/android/settingslib/spa/framework/compose/DrawablePainterKt$MAIN_HANDLER$2;

    invoke-static {v0, v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/spa/framework/compose/DrawablePainterKt;->MAIN_HANDLER$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final rememberDrawablePainter(Landroid/graphics/drawable/Drawable;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/painter/Painter;
    .locals 3

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x43172f32

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v0, 0x59c06df6

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v0, :cond_4

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/android/settingslib/spa/framework/compose/EmptyPainter;->INSTANCE:Lcom/android/settingslib/spa/framework/compose/EmptyPainter;

    move-object v1, p0

    goto :goto_1

    :cond_1
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    new-instance v0, Landroidx/compose/ui/graphics/painter/BitmapPainter;

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    const-string v1, "getBitmap(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    invoke-direct {v1, p0}, Landroidx/compose/ui/graphics/AndroidImageBitmap;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/painter/BitmapPainter;-><init>(Landroidx/compose/ui/graphics/ImageBitmap;)V

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_2
    instance-of v0, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_3

    new-instance v0, Landroidx/compose/ui/graphics/painter/ColorPainter;

    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/graphics/painter/ColorPainter;-><init>(J)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/android/settingslib/spa/framework/compose/DrawablePainter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string v1, "mutate(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcom/android/settingslib/spa/framework/compose/DrawablePainter;-><init>(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :goto_1
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast v1, Landroidx/compose/ui/graphics/painter/Painter;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v1
.end method
