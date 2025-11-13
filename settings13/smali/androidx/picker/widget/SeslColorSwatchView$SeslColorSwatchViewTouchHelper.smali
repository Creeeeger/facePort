.class Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "SeslColorSwatchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslColorSwatchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeslColorSwatchViewTouchHelper"
.end annotation


# instance fields
.field private mColorDescription:[[Ljava/lang/String;

.field private mVirtualCursorIndexX:I

.field private mVirtualCursorIndexY:I

.field private final mVirtualViewRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroidx/picker/widget/SeslColorSwatchView;


# direct methods
.method constructor <init>(Landroidx/picker/widget/SeslColorSwatchView;Landroid/view/View;)V
    .locals 9

    .line 338
    iput-object p1, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Landroidx/picker/widget/SeslColorSwatchView;

    .line 339
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    const/16 p2, 0xb

    new-array p2, p2, [[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    .line 277
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroidx/picker/R$string;->sesl_color_picker_white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 278
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Landroidx/picker/R$string;->sesl_color_picker_light_gray:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 279
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Landroidx/picker/R$string;->sesl_color_picker_gray:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 280
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Landroidx/picker/R$string;->sesl_color_picker_dark_gray:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 281
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Landroidx/picker/R$string;->sesl_color_picker_black:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    aput-object v1, p2, v3

    new-array v1, v6, [Ljava/lang/String;

    .line 284
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v2

    sget v8, Landroidx/picker/R$string;->sesl_color_picker_light_red:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 285
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v2

    sget v8, Landroidx/picker/R$string;->sesl_color_picker_red:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 286
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v2

    sget v8, Landroidx/picker/R$string;->sesl_color_picker_dark_red:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, p2, v4

    new-array v1, v6, [Ljava/lang/String;

    .line 288
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v2

    sget v8, Landroidx/picker/R$string;->sesl_color_picker_light_orange:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 289
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v2

    sget v8, Landroidx/picker/R$string;->sesl_color_picker_orange:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 290
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v2

    sget v8, Landroidx/picker/R$string;->sesl_color_picker_dark_orange:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, p2, v5

    new-array v1, v6, [Ljava/lang/String;

    .line 292
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v2

    sget v8, Landroidx/picker/R$string;->sesl_color_picker_light_yellow:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 293
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v2

    sget v8, Landroidx/picker/R$string;->sesl_color_picker_yellow:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 294
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v2

    sget v8, Landroidx/picker/R$string;->sesl_color_picker_dark_yellow:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, p2, v6

    new-array v1, v6, [Ljava/lang/String;

    .line 297
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v2

    sget v8, Landroidx/picker/R$string;->sesl_color_picker_light_green:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 298
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v2

    sget v8, Landroidx/picker/R$string;->sesl_color_picker_green:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 299
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v2

    sget v8, Landroidx/picker/R$string;->sesl_color_picker_dark_green:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, p2, v7

    new-array v1, v6, [Ljava/lang/String;

    .line 302
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Landroidx/picker/R$string;->sesl_color_picker_light_spring_green:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 303
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Landroidx/picker/R$string;->sesl_color_picker_spring_green:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 304
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Landroidx/picker/R$string;->sesl_color_picker_dark_spring_green:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, p2, v0

    new-array v0, v6, [Ljava/lang/String;

    .line 307
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/picker/R$string;->sesl_color_picker_light_cyan:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 308
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/picker/R$string;->sesl_color_picker_cyan:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 309
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/picker/R$string;->sesl_color_picker_dark_cyan:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x6

    aput-object v0, p2, v1

    new-array v0, v6, [Ljava/lang/String;

    .line 312
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/picker/R$string;->sesl_color_picker_light_azure:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 313
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/picker/R$string;->sesl_color_picker_azure:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 314
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/picker/R$string;->sesl_color_picker_dark_azure:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x7

    aput-object v0, p2, v1

    new-array v0, v6, [Ljava/lang/String;

    .line 317
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/picker/R$string;->sesl_color_picker_light_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 318
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/picker/R$string;->sesl_color_picker_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 319
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/picker/R$string;->sesl_color_picker_dark_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x8

    aput-object v0, p2, v1

    new-array v0, v6, [Ljava/lang/String;

    .line 322
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/picker/R$string;->sesl_color_picker_light_violet:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 323
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/picker/R$string;->sesl_color_picker_violet:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 324
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/picker/R$string;->sesl_color_picker_dark_violet:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x9

    aput-object v0, p2, v1

    new-array v0, v6, [Ljava/lang/String;

    .line 327
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/picker/R$string;->sesl_color_picker_light_magenta:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 328
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/picker/R$string;->sesl_color_picker_magenta:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 329
    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$100(Landroidx/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Landroidx/picker/R$string;->sesl_color_picker_dark_magenta:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v5

    const/16 p1, 0xa

    aput-object v0, p2, p1

    iput-object p2, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mColorDescription:[[Ljava/lang/String;

    .line 333
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualViewRect:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$000(Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;I)Ljava/lang/StringBuilder;
    .locals 0

    .line 274
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->getItemDescription(I)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method private getFocusedVirtualViewId()I
    .locals 1

    .line 393
    iget v0, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    iget p0, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    mul-int/lit8 p0, p0, 0xb

    add-int/2addr v0, p0

    return v0
.end method

.method private getItemDescription(I)Ljava/lang/StringBuilder;
    .locals 7

    .line 429
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->setVirtualCursorIndexAt(I)V

    .line 431
    iget-object p1, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Landroidx/picker/widget/SeslColorSwatchView;

    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$600(Landroidx/picker/widget/SeslColorSwatchView;)[[Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    aget-object p1, p1, v0

    iget v0, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    aget-object p1, p1, v0

    if-nez p1, :cond_7

    .line 432
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    iget v0, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x3

    if-nez v0, :cond_4

    .line 434
    iget v6, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    if-nez v6, :cond_0

    .line 435
    iget-object v1, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mColorDescription:[[Ljava/lang/String;

    aget-object v0, v1, v0

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    if-ge v6, v5, :cond_1

    .line 437
    iget-object v2, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mColorDescription:[[Ljava/lang/String;

    aget-object v0, v2, v0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    if-ge v6, v4, :cond_2

    .line 439
    iget-object v1, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mColorDescription:[[Ljava/lang/String;

    aget-object v0, v1, v0

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-ge v6, v1, :cond_3

    .line 441
    iget-object v1, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mColorDescription:[[Ljava/lang/String;

    aget-object v0, v1, v0

    aget-object v0, v0, v5

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 443
    :cond_3
    iget-object v1, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mColorDescription:[[Ljava/lang/String;

    aget-object v0, v1, v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 446
    :cond_4
    iget v6, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    if-ge v6, v5, :cond_5

    .line 447
    iget-object v1, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mColorDescription:[[Ljava/lang/String;

    aget-object v0, v1, v0

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    if-ge v6, v4, :cond_6

    .line 449
    iget-object v2, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mColorDescription:[[Ljava/lang/String;

    aget-object v0, v2, v0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 451
    :cond_6
    iget-object v1, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mColorDescription:[[Ljava/lang/String;

    aget-object v0, v1, v0

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v0, ", "

    .line 455
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Landroidx/picker/widget/SeslColorSwatchView;

    invoke-static {v0}, Landroidx/picker/widget/SeslColorSwatchView;->access$700(Landroidx/picker/widget/SeslColorSwatchView;)[[I

    move-result-object v0

    iget v1, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    aget-object v0, v0, v1

    iget v1, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 456
    iget-object v0, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Landroidx/picker/widget/SeslColorSwatchView;

    invoke-static {v0}, Landroidx/picker/widget/SeslColorSwatchView;->access$600(Landroidx/picker/widget/SeslColorSwatchView;)[[Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    aget-object v0, v0, v1

    iget v1, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    aput-object p1, v0, v1

    .line 459
    :cond_7
    iget-object p1, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Landroidx/picker/widget/SeslColorSwatchView;

    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$600(Landroidx/picker/widget/SeslColorSwatchView;)[[Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    aget-object p1, p1, v0

    iget p0, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    aget-object p0, p1, p0

    return-object p0
.end method

.method private onVirtualViewClick(I)V
    .locals 1

    .line 463
    iget-object v0, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Landroidx/picker/widget/SeslColorSwatchView;

    invoke-static {v0}, Landroidx/picker/widget/SeslColorSwatchView;->access$800(Landroidx/picker/widget/SeslColorSwatchView;)Landroidx/picker/widget/SeslColorSwatchView$OnColorSwatchChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Landroidx/picker/widget/SeslColorSwatchView;

    invoke-static {v0}, Landroidx/picker/widget/SeslColorSwatchView;->access$800(Landroidx/picker/widget/SeslColorSwatchView;)Landroidx/picker/widget/SeslColorSwatchView$OnColorSwatchChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/picker/widget/SeslColorSwatchView$OnColorSwatchChangedListener;->onColorSwatchChanged(I)V

    .line 467
    :cond_0
    iget-object p1, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Landroidx/picker/widget/SeslColorSwatchView;

    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$900(Landroidx/picker/widget/SeslColorSwatchView;)Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;

    move-result-object p1

    iget-object p0, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Landroidx/picker/widget/SeslColorSwatchView;

    invoke-static {p0}, Landroidx/picker/widget/SeslColorSwatchView;->access$200(Landroidx/picker/widget/SeslColorSwatchView;)I

    move-result p0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method

.method private setVirtualCursorIndexAt(FF)V
    .locals 5

    .line 397
    iget-object v0, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Landroidx/picker/widget/SeslColorSwatchView;

    invoke-static {v0}, Landroidx/picker/widget/SeslColorSwatchView;->access$400(Landroidx/picker/widget/SeslColorSwatchView;)F

    move-result v0

    const/high16 v1, 0x41300000    # 11.0f

    mul-float/2addr v0, v1

    .line 398
    iget-object v1, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Landroidx/picker/widget/SeslColorSwatchView;

    invoke-static {v1}, Landroidx/picker/widget/SeslColorSwatchView;->access$500(Landroidx/picker/widget/SeslColorSwatchView;)F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    cmpl-float v2, p1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-ltz v2, :cond_0

    sub-float p1, v0, v3

    goto :goto_0

    :cond_0
    cmpg-float v0, p1, v4

    if-gez v0, :cond_1

    move p1, v4

    :cond_1
    :goto_0
    cmpl-float v0, p2, v1

    if-ltz v0, :cond_2

    sub-float p2, v1, v3

    goto :goto_1

    :cond_2
    cmpg-float v0, p2, v4

    if-gez v0, :cond_3

    move p2, v4

    .line 412
    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Landroidx/picker/widget/SeslColorSwatchView;

    invoke-static {v0}, Landroidx/picker/widget/SeslColorSwatchView;->access$400(Landroidx/picker/widget/SeslColorSwatchView;)F

    move-result v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    .line 413
    iget-object p1, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Landroidx/picker/widget/SeslColorSwatchView;

    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$500(Landroidx/picker/widget/SeslColorSwatchView;)F

    move-result p1

    div-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    return-void
.end method

.method private setVirtualCursorIndexAt(I)V
    .locals 1

    .line 417
    rem-int/lit8 v0, p1, 0xb

    iput v0, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    .line 418
    div-int/lit8 p1, p1, 0xb

    iput p1, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    return-void
.end method

.method private setVirtualCursorRect(Landroid/graphics/Rect;)V
    .locals 5

    .line 422
    iget v0, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Landroidx/picker/widget/SeslColorSwatchView;

    invoke-static {v1}, Landroidx/picker/widget/SeslColorSwatchView;->access$400(Landroidx/picker/widget/SeslColorSwatchView;)F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v2, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    int-to-float v2, v2

    iget-object v3, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Landroidx/picker/widget/SeslColorSwatchView;

    .line 423
    invoke-static {v3}, Landroidx/picker/widget/SeslColorSwatchView;->access$500(Landroidx/picker/widget/SeslColorSwatchView;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    float-to-int v2, v2

    iget v3, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget-object v4, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Landroidx/picker/widget/SeslColorSwatchView;

    .line 424
    invoke-static {v4}, Landroidx/picker/widget/SeslColorSwatchView;->access$400(Landroidx/picker/widget/SeslColorSwatchView;)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v3, v1

    float-to-int v3, v3

    iget v4, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    iget-object p0, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Landroidx/picker/widget/SeslColorSwatchView;

    .line 425
    invoke-static {p0}, Landroidx/picker/widget/SeslColorSwatchView;->access$500(Landroidx/picker/widget/SeslColorSwatchView;)F

    move-result p0

    mul-float/2addr v4, p0

    add-float/2addr v4, v1

    float-to-int p0, v4

    .line 422
    invoke-virtual {p1, v0, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 0

    .line 344
    invoke-direct {p0, p1, p2}, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->setVirtualCursorIndexAt(FF)V

    .line 346
    invoke-direct {p0}, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->getFocusedVirtualViewId()I

    move-result p0

    return p0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0x6e

    if-ge p0, v0, :cond_0

    .line 352
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 0

    const/16 p3, 0x10

    if-eq p2, p3, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->setVirtualCursorIndexAt(I)V

    .line 384
    iget-object p1, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Landroidx/picker/widget/SeslColorSwatchView;

    invoke-static {p1}, Landroidx/picker/widget/SeslColorSwatchView;->access$300(Landroidx/picker/widget/SeslColorSwatchView;)[[I

    move-result-object p1

    iget p2, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    aget-object p1, p1, p2

    iget p2, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    aget p1, p1, p2

    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->onVirtualViewClick(I)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 358
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->getItemDescription(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .line 363
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->setVirtualCursorIndexAt(I)V

    .line 364
    iget-object v0, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualViewRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->setVirtualCursorRect(Landroid/graphics/Rect;)V

    .line 366
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->getItemDescription(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v0, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualViewRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/16 v0, 0x10

    .line 368
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 369
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v0, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Landroidx/picker/widget/SeslColorSwatchView;

    invoke-static {v0}, Landroidx/picker/widget/SeslColorSwatchView;->access$200(Landroidx/picker/widget/SeslColorSwatchView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Landroidx/picker/widget/SeslColorSwatchView;

    invoke-static {p0}, Landroidx/picker/widget/SeslColorSwatchView;->access$200(Landroidx/picker/widget/SeslColorSwatchView;)I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x4

    .line 372
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    const/4 p0, 0x1

    .line 373
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 374
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    .line 375
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    :cond_0
    return-void
.end method
