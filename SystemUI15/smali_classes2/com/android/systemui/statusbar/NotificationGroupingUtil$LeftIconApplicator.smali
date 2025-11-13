.class public final Lcom/android/systemui/statusbar/NotificationGroupingUtil$LeftIconApplicator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationGroupingUtil$ResultApplicator;


# static fields
.field public static final MARGIN_ADJUSTED_VIEWS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v0, 0x1020454

    const v1, 0x1020451

    const v2, 0x102062a

    const v3, 0x102022b

    const v4, 0x1020016

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$LeftIconApplicator;->MARGIN_ADJUSTED_VIEWS:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$LeftIconApplicator;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Landroid/view/View;Landroid/view/View;ZZ)V
    .locals 4

    const p0, 0x10203b6

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const p1, 0x1020503

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1020617

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, p4

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x102061d

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    if-nez p1, :cond_2

    move-object v3, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_1
    if-eqz p3, :cond_3

    if-nez v1, :cond_3

    move-object v2, v3

    :cond_3
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const/16 v2, 0x8

    if-eqz p3, :cond_5

    move v3, v0

    goto :goto_2

    :cond_5
    move v3, v2

    :goto_2
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_f

    if-nez v1, :cond_6

    if-nez p3, :cond_7

    :cond_6
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    move p4, v0

    :goto_3
    if-eqz p4, :cond_8

    move v2, v0

    :cond_8
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$LeftIconApplicator;->MARGIN_ADJUSTED_VIEWS:[I

    :goto_4
    const/4 p1, 0x5

    if-ge v0, p1, :cond_f

    aget p1, p0, v0

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_6

    :cond_9
    instance-of p3, p1, Lcom/android/internal/widget/ImageFloatingTextView;

    if-eqz p3, :cond_a

    check-cast p1, Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {p1, p4}, Lcom/android/internal/widget/ImageFloatingTextView;->setHasImage(Z)V

    goto :goto_6

    :cond_a
    if-eqz p4, :cond_b

    const p3, 0x102061a

    goto :goto_5

    :cond_b
    const p3, 0x1020619

    :goto_5
    invoke-virtual {p1, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-nez p3, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p3, v1}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    move-result p3

    instance-of v1, p1, Landroid/view/NotificationHeaderView;

    if-eqz v1, :cond_d

    check-cast p1, Landroid/view/NotificationHeaderView;

    invoke-virtual {p1, p3}, Landroid/view/NotificationHeaderView;->setTopLineExtraMarginEnd(I)V

    goto :goto_6

    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_e

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_e
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_f
    return-void
.end method
