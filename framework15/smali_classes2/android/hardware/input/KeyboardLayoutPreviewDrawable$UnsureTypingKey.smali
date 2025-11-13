.class Landroid/hardware/input/KeyboardLayoutPreviewDrawable$UnsureTypingKey;
.super Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;
.source "KeyboardLayoutPreviewDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/KeyboardLayoutPreviewDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnsureTypingKey"
.end annotation


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;Landroid/graphics/RectF;FFLandroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 9

    invoke-static {p5}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->-$$Nest$smcreateGreyedOutPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-static {p6}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->-$$Nest$smcreateGreyedOutPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-static/range {p7 .. p7}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->-$$Nest$smcreateGreyedOutPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v8}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;-><init>(Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;Landroid/graphics/RectF;FFLandroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;Landroid/graphics/RectF;FFLandroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/hardware/input/KeyboardLayoutPreviewDrawable$UnsureTypingKey-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$UnsureTypingKey;-><init>(Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;Landroid/graphics/RectF;FFLandroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    return-void
.end method
