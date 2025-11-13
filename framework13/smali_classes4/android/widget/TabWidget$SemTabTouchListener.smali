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
    .param p2, "tabIndex"    # I

    .line 707
    iput-object p1, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 708
    iput p2, p0, Landroid/widget/TabWidget$SemTabTouchListener;->mTabIndex:I

    .line 709
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/TabWidget;ILandroid/widget/TabWidget$SemTabTouchListener-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TabWidget$SemTabTouchListener;-><init>(Landroid/widget/TabWidget;I)V

    return-void
.end method


# virtual methods
.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .line 713
    iget-object v0, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {v0}, Landroid/widget/TabWidget;->-$$Nest$fgetmSelectedTab(Landroid/widget/TabWidget;)I

    move-result v0

    iget v1, p0, Landroid/widget/TabWidget$SemTabTouchListener;->mTabIndex:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 714
    return v2

    .line 717
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 719
    .local v0, "action":I
    const v1, 0x1020586

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/widget/SemTabDotLineView;

    .line 720
    .local v3, "semTabDotLineView":Lcom/samsung/android/widget/SemTabDotLineView;
    const v4, 0x1020016

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 721
    .local v5, "tabText":Landroid/widget/TextView;
    if-eqz v3, :cond_6

    if-nez v5, :cond_1

    goto/16 :goto_2

    .line 725
    :cond_1
    iget-object v6, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {v6}, Landroid/widget/TabWidget;->-$$Nest$fgetmSelectedTab(Landroid/widget/TabWidget;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v6

    .line 726
    .local v6, "oldView":Landroid/view/View;
    const/4 v7, 0x0

    .line 727
    .local v7, "oldTextView":Landroid/widget/TextView;
    const/4 v8, 0x0

    .line 728
    .local v8, "oldDotView":Lcom/samsung/android/widget/SemTabDotLineView;
    if-nez v6, :cond_2

    .line 729
    return v2

    .line 731
    :cond_2
    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/widget/SemTabDotLineView;

    .line 732
    .end local v8    # "oldDotView":Lcom/samsung/android/widget/SemTabDotLineView;
    .local v1, "oldDotView":Lcom/samsung/android/widget/SemTabDotLineView;
    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 733
    .end local v7    # "oldTextView":Landroid/widget/TextView;
    .local v4, "oldTextView":Landroid/widget/TextView;
    if-eqz v1, :cond_5

    if-nez v4, :cond_3

    goto :goto_1

    .line 738
    :cond_3
    const/4 v7, 0x1

    const-string/jumbo v8, "sec-roboto-light"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 750
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v9

    if-nez v9, :cond_4

    .line 751
    invoke-virtual {v1, v7}, Lcom/samsung/android/widget/SemTabDotLineView;->setSelected(Z)V

    .line 752
    iput-boolean v7, v1, Lcom/samsung/android/widget/SemTabDotLineView;->mDrawDot:Z

    .line 753
    iget-object v9, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {v9}, Landroid/widget/TabWidget;->-$$Nest$fgetmTabTextColorStateList(Landroid/widget/TabWidget;)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 754
    invoke-static {v8, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 756
    iget-object v7, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {v7}, Landroid/widget/TabWidget;->-$$Nest$fgetmTabTextColorStateList(Landroid/widget/TabWidget;)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/widget/TabWidget;->-$$Nest$mgetNotSelectedColor(Landroid/widget/TabWidget;Landroid/content/res/ColorStateList;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 757
    invoke-static {v8, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 758
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 740
    :pswitch_1
    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemTabDotLineView;->setDrawState(Z)V

    .line 741
    iget-object v9, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {v9}, Landroid/widget/TabWidget;->-$$Nest$fgetmTabTextColorStateList(Landroid/widget/TabWidget;)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/widget/TabWidget;->-$$Nest$mgetNotSelectedColor(Landroid/widget/TabWidget;Landroid/content/res/ColorStateList;)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 742
    invoke-static {v8, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 744
    iget-object v9, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {v9}, Landroid/widget/TabWidget;->-$$Nest$fgetmTabTextColorStateList(Landroid/widget/TabWidget;)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/widget/TabWidget;->-$$Nest$mgetSelectedColor(Landroid/widget/TabWidget;Landroid/content/res/ColorStateList;)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 745
    invoke-static {v8, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 746
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 747
    nop

    .line 762
    :cond_4
    :goto_0
    return v2

    .line 734
    :cond_5
    :goto_1
    return v2

    .line 722
    .end local v1    # "oldDotView":Lcom/samsung/android/widget/SemTabDotLineView;
    .end local v4    # "oldTextView":Landroid/widget/TextView;
    .end local v6    # "oldView":Landroid/view/View;
    :cond_6
    :goto_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
