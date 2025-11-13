.class Landroid/widget/TabWidget$SemTabTouchListener;
.super Ljava/lang/Object;
.source "TabWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemTabTouchListener"
.end annotation


# instance fields
.field private final blacklist mTabIndex:I

.field final synthetic blacklist this$0:Landroid/widget/TabWidget;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/TabWidget;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/widget/TabWidget$SemTabTouchListener;->mTabIndex:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/TabWidget;ILandroid/widget/TabWidget$SemTabTouchListener-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TabWidget$SemTabTouchListener;-><init>(Landroid/widget/TabWidget;I)V

    return-void
.end method


# virtual methods
.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    iget-object v0, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {v0}, Landroid/widget/TabWidget;->-$$Nest$fgetmSelectedTab(Landroid/widget/TabWidget;)I

    move-result v0

    iget v1, p0, Landroid/widget/TabWidget$SemTabTouchListener;->mTabIndex:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0x1020597

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/widget/SemTabDotLineView;

    const v4, 0x1020016

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v3, :cond_6

    if-nez v5, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v6, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    iget-object v7, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {v7}, Landroid/widget/TabWidget;->-$$Nest$fgetmSelectedTab(Landroid/widget/TabWidget;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez v6, :cond_2

    return v2

    :cond_2
    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/widget/SemTabDotLineView;

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/samsung/android/widget/SemTabDotLineView;->setSelected(Z)V

    iput-boolean v7, v1, Lcom/samsung/android/widget/SemTabDotLineView;->mDrawDot:Z

    iget-object v7, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {v7}, Landroid/widget/TabWidget;->-$$Nest$fgetmTabTextColorStateList(Landroid/widget/TabWidget;)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v7, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {v7}, Landroid/widget/TabWidget;->-$$Nest$fgetmSemSemiBoldFont(Landroid/widget/TabWidget;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v7, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    iget-object v8, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {v8}, Landroid/widget/TabWidget;->-$$Nest$fgetmTabTextColorStateList(Landroid/widget/TabWidget;)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/widget/TabWidget;->-$$Nest$mgetNotSelectedColor(Landroid/widget/TabWidget;Landroid/content/res/ColorStateList;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v7, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {v7}, Landroid/widget/TabWidget;->-$$Nest$fgetmSemRegularFont(Landroid/widget/TabWidget;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemTabDotLineView;->setDrawState(Z)V

    iget-object v7, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    iget-object v8, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {v8}, Landroid/widget/TabWidget;->-$$Nest$fgetmTabTextColorStateList(Landroid/widget/TabWidget;)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/widget/TabWidget;->-$$Nest$mgetNotSelectedColor(Landroid/widget/TabWidget;Landroid/content/res/ColorStateList;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v7, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {v7}, Landroid/widget/TabWidget;->-$$Nest$fgetmSemRegularFont(Landroid/widget/TabWidget;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v7, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    iget-object v8, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {v8}, Landroid/widget/TabWidget;->-$$Nest$fgetmTabTextColorStateList(Landroid/widget/TabWidget;)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/widget/TabWidget;->-$$Nest$mgetSelectedColor(Landroid/widget/TabWidget;Landroid/content/res/ColorStateList;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v7, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {v7}, Landroid/widget/TabWidget;->-$$Nest$fgetmSemSemiBoldFont(Landroid/widget/TabWidget;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setSelected(Z)V

    nop

    :cond_4
    :goto_0
    return v2

    :cond_5
    :goto_1
    return v2

    :cond_6
    :goto_2
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
