.class public final Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;
.super Landroid/app/Dialog;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final BACKLIGHT_ICON_ID:I

.field public static final LEFT_CORNERS_INDICES:[I

.field public static final RIGHT_CORNERS_INDICES:[I


# instance fields
.field public final backgroundColor:I

.field public currentLevel:I

.field public final defaultIconBackgroundColor:I

.field public final defaultIconColor:I

.field public final dialogBottomMargin:I

.field public final dimmedIconBackgroundColor:I

.field public final dimmedIconColor:I

.field public final emptyRectangleColor:I

.field public final filledRectangleColor:I

.field public iconProperties:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$BacklightIconProperties;

.field public final levelContentDescription:Ljava/lang/String;

.field public maxLevel:I

.field public rootProperties:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;

.field public rootView:Landroid/widget/LinearLayout;

.field public stepProperties:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v0, 0x7f0a0149

    sput v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->BACKLIGHT_ICON_ID:I

    const/4 v0, 0x6

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->LEFT_CORNERS_INDICES:[I

    const/4 v0, 0x4

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x3

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->RIGHT_CORNERS_INDICES:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1

    invoke-direct {p0, p1, p4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/16 p4, 0xd0

    iput p4, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->dialogBottomMargin:I

    const p4, 0x11200bf

    invoke-virtual {p0, p4}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->getColorFromStyle(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->filledRectangleColor:I

    const v0, 0x11200be

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->getColorFromStyle(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->emptyRectangleColor:I

    const v0, 0x11200c9

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->getColorFromStyle(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->backgroundColor:I

    const v0, 0x11200ae

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->getColorFromStyle(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->defaultIconColor:I

    invoke-virtual {p0, p4}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->getColorFromStyle(I)I

    move-result p4

    iput p4, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->defaultIconBackgroundColor:I

    const p4, 0x11200b6

    invoke-virtual {p0, p4}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->getColorFromStyle(I)I

    move-result p4

    iput p4, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->dimmedIconColor:I

    const p4, 0x11200cf

    invoke-virtual {p0, p4}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->getColorFromStyle(I)I

    move-result p4

    iput p4, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->dimmedIconBackgroundColor:I

    const p4, 0x7f1307cd

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->levelContentDescription:Ljava/lang/String;

    iput p2, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->currentLevel:I

    iput p3, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->maxLevel:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const p4, 0x7f140603

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;-><init>(Landroid/content/Context;III)V

    return-void
.end method

.method public static updateColor(Landroid/graphics/drawable/ShapeDrawable;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getColorFromStyle(I)I
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 12

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    const/16 v2, 0x7e1

    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V

    const/high16 v2, 0xa0000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    const v2, 0x106000d

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v2, "KeyboardBacklightDialog"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v2, 0x51

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget v3, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->dialogBottomMargin:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1307cc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;

    const v3, 0x7f070090

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x7f070092

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f070091

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;-><init>(FII)V

    iput-object v2, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->rootProperties:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;

    new-instance v2, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$BacklightIconProperties;

    const v3, 0x7f07008f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f07008d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f07008e

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$BacklightIconProperties;-><init>(III)V

    iput-object v2, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->iconProperties:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$BacklightIconProperties;

    new-instance v2, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;

    const v3, 0x7f070097

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v3, 0x7f070093

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v3, 0x7f070094

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v3, 0x7f070096

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v10, v3

    const v3, 0x7f070095

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v11, v0

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;-><init>(IIIFF)V

    iput-object v2, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->stepProperties:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0565

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setId(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->rootProperties:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;

    const/4 v4, 0x0

    if-nez v3, :cond_3

    move-object v5, v4

    goto :goto_0

    :cond_3
    move-object v5, v3

    :goto_0
    iget v5, v5, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;->horizontalPadding:I

    if-nez v3, :cond_4

    move-object v6, v4

    goto :goto_1

    :cond_4
    move-object v6, v3

    :goto_1
    iget v6, v6, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;->verticalPadding:I

    if-nez v3, :cond_5

    move-object v7, v4

    goto :goto_2

    :cond_5
    move-object v7, v3

    :goto_2
    iget v7, v7, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;->horizontalPadding:I

    if-nez v3, :cond_6

    move-object v3, v4

    :cond_6
    iget v3, v3, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;->verticalPadding:I

    invoke-virtual {v0, v5, v6, v7, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v3, 0x8

    new-array v5, v3, [F

    :goto_3
    if-ge v2, v3, :cond_8

    iget-object v6, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->rootProperties:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;

    if-nez v6, :cond_7

    move-object v6, v4

    :cond_7
    iget v6, v6, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;->cornerRadius:F

    aput v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v2, v5, v4, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    iget v4, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->backgroundColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget p1, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->currentLevel:I

    iget v0, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->maxLevel:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->updateState(IIZ)V

    return-void
.end method

.method public final updateState(IIZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget v2, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->maxLevel:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    goto/16 :goto_a

    :cond_1
    :goto_0
    iput v1, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->maxLevel:I

    iget-object v1, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->rootView:Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    move-object v1, v4

    :cond_2
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->rootView:Landroid/widget/LinearLayout;

    if-nez v1, :cond_3

    move-object v1, v4

    :cond_3
    iget-object v2, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->stepProperties:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;

    if-nez v2, :cond_4

    move-object v2, v4

    :cond_4
    iget v2, v2, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;->height:I

    new-instance v5, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v6, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v6}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    new-instance v6, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v7, 0x7f08096e

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v7, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->BACKLIGHT_ICON_ID:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setId(I)V

    iget v7, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->defaultIconColor:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v7, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->iconProperties:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$BacklightIconProperties;

    if-nez v7, :cond_5

    move-object v7, v4

    :cond_5
    iget v7, v7, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$BacklightIconProperties;->padding:I

    invoke-virtual {v6, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    new-instance v7, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v7, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iget-object v2, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->stepProperties:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;

    if-nez v2, :cond_6

    move-object v8, v4

    goto :goto_1

    :cond_6
    move-object v8, v2

    :goto_1
    iget v8, v8, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;->horizontalMargin:I

    if-nez v2, :cond_7

    move-object v2, v4

    :cond_7
    iget v2, v2, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;->horizontalMargin:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v2, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lkotlin/ranges/IntRange;

    iget v2, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->maxLevel:I

    invoke-direct {v1, v3, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    new-instance v2, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object v1

    :goto_2
    iget-boolean v5, v1, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v5, :cond_11

    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v5

    new-instance v6, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v8, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->stepProperties:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;

    if-nez v8, :cond_8

    move-object v10, v4

    goto :goto_3

    :cond_8
    move-object v10, v8

    :goto_3
    iget v10, v10, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;->width:I

    if-nez v8, :cond_9

    move-object v8, v4

    :cond_9
    iget v8, v8, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;->height:I

    invoke-direct {v7, v10, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v8, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->stepProperties:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;

    if-nez v8, :cond_a

    move-object v10, v4

    goto :goto_4

    :cond_a
    move-object v10, v8

    :goto_4
    iget v10, v10, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;->horizontalMargin:I

    if-nez v8, :cond_b

    move-object v8, v4

    :cond_b
    iget v8, v8, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;->horizontalMargin:I

    invoke-virtual {v7, v10, v9, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v8, Landroid/graphics/drawable/shapes/RoundRectShape;

    iget v10, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->maxLevel:I

    iget-object v11, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->stepProperties:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;

    if-nez v11, :cond_c

    move-object v12, v4

    goto :goto_5

    :cond_c
    move-object v12, v11

    :goto_5
    iget v12, v12, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;->smallRadius:F

    if-nez v11, :cond_d

    move-object v11, v4

    :cond_d
    iget v11, v11, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;->largeRadius:F

    const/16 v13, 0x8

    new-array v14, v13, [F

    move v15, v9

    :goto_6
    if-ge v15, v13, :cond_e

    aput v12, v14, v15

    add-int/2addr v15, v3

    goto :goto_6

    :cond_e
    if-ne v5, v3, :cond_f

    sget-object v12, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->LEFT_CORNERS_INDICES:[I

    array-length v13, v12

    move v15, v9

    :goto_7
    if-ge v15, v13, :cond_f

    aget v16, v12, v15

    aput v11, v14, v16

    add-int/2addr v15, v3

    goto :goto_7

    :cond_f
    if-ne v5, v10, :cond_10

    sget-object v5, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->RIGHT_CORNERS_INDICES:[I

    array-length v10, v5

    move v12, v9

    :goto_8
    if-ge v12, v10, :cond_10

    aget v13, v5, v12

    aput v11, v14, v13

    add-int/2addr v12, v3

    goto :goto_8

    :cond_10
    invoke-direct {v8, v14, v4, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v7, v8}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v7}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    iget v8, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->emptyRectangleColor:I

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_11
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v5, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->rootView:Landroid/widget/LinearLayout;

    if-nez v5, :cond_12

    move-object v5, v4

    :cond_12
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_9

    :goto_a
    iput v1, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->currentLevel:I

    iget-object v1, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->rootView:Landroid/widget/LinearLayout;

    if-nez v1, :cond_13

    move-object v1, v4

    :cond_13
    sget v2, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->BACKLIGHT_ICON_ID:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/ShapeDrawable;

    iget v5, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->currentLevel:I

    if-nez v5, :cond_14

    iget v5, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->dimmedIconColor:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget v1, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->dimmedIconBackgroundColor:I

    invoke-static {v2, v1}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->updateColor(Landroid/graphics/drawable/ShapeDrawable;I)V

    goto :goto_b

    :cond_14
    iget v5, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->defaultIconColor:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget v1, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->defaultIconBackgroundColor:I

    invoke-static {v2, v1}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->updateColor(Landroid/graphics/drawable/ShapeDrawable;I)V

    :goto_b
    iget-object v1, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->rootView:Landroid/widget/LinearLayout;

    if-nez v1, :cond_15

    move-object v1, v4

    :cond_15
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    invoke-static {v3, v1}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object v1

    :goto_c
    iget-boolean v2, v1, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v2, :cond_18

    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->rootView:Landroid/widget/LinearLayout;

    if-nez v3, :cond_16

    move-object v3, v4

    :cond_16
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/ShapeDrawable;

    iget v5, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->currentLevel:I

    if-gt v2, v5, :cond_17

    iget v2, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->filledRectangleColor:I

    goto :goto_d

    :cond_17
    iget v2, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->emptyRectangleColor:I

    :goto_d
    invoke-static {v3, v2}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->updateColor(Landroid/graphics/drawable/ShapeDrawable;I)V

    goto :goto_c

    :cond_18
    iget-object v1, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->rootView:Landroid/widget/LinearLayout;

    if-nez v1, :cond_19

    move-object v1, v4

    :cond_19
    sget v2, Lkotlin/jvm/internal/StringCompanionObject;->$r8$clinit:I

    iget-object v2, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->levelContentDescription:Ljava/lang/String;

    iget v3, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->currentLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v5, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->maxLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x2

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->rootView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1a

    goto :goto_e

    :cond_1a
    move-object v4, v0

    :goto_e
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    return-void
.end method
