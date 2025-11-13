.class public final Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnDragListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->access$600(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const v3, 0x7f0a096b

    const v4, 0x7f0a0a60

    const v5, 0x7f0a0957

    const v6, 0x7f0a0a64

    const/16 v7, 0x1388

    const/4 v8, 0x1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->removeAreaAnimationMessage()V

    goto/16 :goto_6

    :pswitch_1
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result p2

    const v9, 0x7f0a0959

    if-ne p2, v9, :cond_1

    iget-object p2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iget v10, p2, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mWhereAmI:I

    if-ne v10, v7, :cond_1

    iget-object v3, p2, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;

    const/16 v4, 0x3e8

    invoke-virtual {p2, v3, v4, v0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->animateArea(Lcom/android/systemui/qs/customize/CustomTileInfo;II)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result p2

    const v7, 0x7f0a0958

    if-ne p2, v7, :cond_2

    iget-object p2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iget v7, p2, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mWhereAmI:I

    const/16 v10, 0x1770

    if-ne v7, v10, :cond_2

    iget-object v3, p2, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;

    const/16 v4, 0x7d0

    invoke-virtual {p2, v3, v4, v0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->animateArea(Lcom/android/systemui/qs/customize/CustomTileInfo;II)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    if-eq p2, v6, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    if-ne p2, v5, :cond_3

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    if-eq p2, v4, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    if-ne p2, v3, :cond_4

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iget-object v3, p2, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;

    invoke-virtual {p2, v3, v0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->animateCurrentPage(Lcom/android/systemui/qs/customize/CustomTileInfo;I)V

    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->access$900(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result p2

    if-ne p2, v9, :cond_6

    move v1, v8

    :cond_6
    if-eqz v1, :cond_7

    iget-object p2, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    goto :goto_1

    :cond_7
    iget-object p2, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    :goto_1
    invoke-virtual {p2}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getColumnMaxCountInPage()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getColumnCount()I

    move-result p2

    rem-int/2addr v0, v2

    const/4 v2, -0x1

    if-nez p2, :cond_8

    move v3, v2

    goto :goto_2

    :cond_8
    rem-int v3, v0, p2

    :goto_2
    if-nez p2, :cond_9

    goto :goto_3

    :cond_9
    div-int v2, v0, p2

    :goto_3
    if-eqz v1, :cond_a

    const p2, 0x7f130e37

    goto :goto_4

    :cond_a
    const p2, 0x7f130e36

    :goto_4
    iget-object p0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    add-int/2addr v2, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    add-int/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :pswitch_2
    iget-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iget-boolean p1, p1, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mIsDroppedOnView:Z

    if-nez p1, :cond_b

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "ACTION_DRAG_ENDED mWhereAmI = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iget p2, p2, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mWhereAmI:I

    const-string v0, "QSTileCustomizerController"

    invoke-static {p2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iget-object p2, p1, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->animationDrop(Lcom/android/systemui/qs/customize/CustomTileInfo;)V

    iget-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iput-boolean v8, p1, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mIsDroppedOnView:Z

    :cond_b
    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->access$1100(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mIsMultiTouch:Z

    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mIsDragging:Z

    iget-object p1, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    iput-boolean v1, p1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsMultiTouch:Z

    iget-object p0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsMultiTouch:Z

    goto/16 :goto_6

    :pswitch_3
    iget-object p2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iput-boolean v8, p2, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mIsDroppedOnView:Z

    iget-object v0, p2, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;

    invoke-virtual {p2, v0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->animationDrop(Lcom/android/systemui/qs/customize/CustomTileInfo;)V

    iget-object p2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    invoke-static {p2}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->access$700(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    iput-boolean v1, p2, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mIsMultiTouch:Z

    iput-boolean v1, p2, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mIsDragging:Z

    iget-object v0, p2, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    iput-boolean v1, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsMultiTouch:Z

    iget-object p2, p2, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    iput-boolean v1, p2, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsMultiTouch:Z

    iget-object p2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    invoke-virtual {p2}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f130e32

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_6

    :pswitch_4
    iget-object p2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iget-boolean v0, p2, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mIsTopEdit:Z

    if-nez v0, :cond_10

    iget p2, p2, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mWhereAmI:I

    if-eq p2, v7, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    if-eq p2, v6, :cond_f

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    if-ne p2, v5, :cond_d

    goto :goto_5

    :cond_d
    iget-object p2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    if-eq p2, v4, :cond_e

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne p1, v3, :cond_10

    :cond_e
    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mActiveScrollView:Landroid/widget/ScrollView;

    const/16 p1, 0xa

    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_6

    :cond_f
    :goto_5
    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mActiveScrollView:Landroid/widget/ScrollView;

    const/16 p1, -0xa

    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_6

    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mIsDroppedOnView:Z

    invoke-static {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->access$1000(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    iput-boolean v8, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mIsDragging:Z

    :cond_10
    :goto_6
    return v8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
