.class public final Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;
.super Landroid/widget/BaseAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAreDisabledAll:Z

.field public final mOnColorClickListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;

.field public final synthetic this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->mAreDisabledAll:Z

    new-instance v1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;)V

    iput-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->mOnColorClickListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;

    iget p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->mAreDisabledAll:Z

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final getItemViewType(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object p2, p2, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d01e2

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;

    invoke-direct {p3}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;-><init>()V

    const v1, 0x7f0a0508

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->container:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a02b0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->iconView:Landroid/widget/Button;

    const v1, 0x7f0a02b2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->selectIV:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x63

    const-string v3, ", "

    const/16 v4, 0xb

    if-ne p1, v4, :cond_1

    iget-object v5, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->iconView:Landroid/widget/Button;

    const v6, 0x7f080785

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v5, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    const v6, 0x7f1303c0

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->container:Landroid/widget/RelativeLayout;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    const v6, 0x7f080c0c

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-virtual {v6}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    add-int/lit8 v7, p1, 0x3

    invoke-static {v6, v7, v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingStylePreDefineColor(Landroid/content/Context;IZ)I

    move-result v6

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v6, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->iconView:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->container:Landroid/widget/RelativeLayout;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    :goto_1
    iget-object v5, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->container:Landroid/widget/RelativeLayout;

    iget-boolean v6, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->mAreDisabledAll:Z

    if-eqz v6, :cond_2

    const v6, 0x3ecccccd    # 0.4f

    goto :goto_2

    :cond_2
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v5, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget v5, v5, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    add-int/lit8 v6, v5, -0x3

    if-eq v6, p1, :cond_5

    if-ne p1, v4, :cond_3

    if-ne v5, v2, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->selectIV:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->mAreDisabledAll:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    const v5, 0x7f13057d

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    const v5, 0x7f13057e

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    :goto_3
    iget-object v2, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->selectIV:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    const v5, 0x7f13057f

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    if-eq p1, v4, :cond_8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    add-int/lit8 v3, p1, 0x3

    sget-object v5, Lcom/android/systemui/edgelighting/data/EdgeLightingConstants;->DEFAULT_COLOR_NAME_LIST:[I

    if-ltz p1, :cond_7

    if-lt p1, v4, :cond_6

    goto :goto_5

    :cond_6
    aget p1, v5, p1

    goto :goto_6

    :cond_7
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "getEdgeLightingStylePreDefineColorResId() Invalid index value : "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "EdgeLightingSettingUtils"

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget p1, v5, v0

    :goto_6
    invoke-virtual {v2, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object p1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->container:Landroid/widget/RelativeLayout;

    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->mAreDisabledAll:Z

    if-eqz v0, :cond_9

    const/4 p0, 0x0

    goto :goto_7

    :cond_9
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->mOnColorClickListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;

    :goto_7
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->container:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public final getViewTypeCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final notifyDataSetChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object v1, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorGridView:Landroid/widget/GridView;

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->-$$Nest$msetDynamicWidth(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;Landroid/widget/GridView;I)V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
