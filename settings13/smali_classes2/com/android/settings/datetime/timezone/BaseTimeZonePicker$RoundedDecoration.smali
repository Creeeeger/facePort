.class Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$RoundedDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "BaseTimeZonePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoundedDecoration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;


# direct methods
.method private constructor <init>(Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$RoundedDecoration;->this$0:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$RoundedDecoration-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$RoundedDecoration;-><init>(Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;)V

    return-void
.end method


# virtual methods
.method public seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    .line 247
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 249
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    .line 251
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 252
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 254
    instance-of v3, v3, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;

    if-eqz v3, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$RoundedDecoration;->this$0:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;

    invoke-static {v1}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->-$$Nest$fgetmSeslHeaderRoundedCorner(Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;)Landroidx/appcompat/util/SeslRoundedCorner;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    .line 261
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_2

    sub-int/2addr p3, v0

    .line 262
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 264
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    .line 265
    instance-of p2, p2, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;

    if-eqz p2, :cond_2

    .line 266
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$RoundedDecoration;->this$0:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;

    invoke-static {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->-$$Nest$fgetmSeslBottomRoundedCorner(Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;)Landroidx/appcompat/util/SeslRoundedCorner;

    move-result-object p0

    invoke-virtual {p0, p3, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method
