.class public final Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;
.super Landroid/widget/BaseAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mEdgeLightingStyleList:Ljava/util/ArrayList;

.field public final mEffectOnClickListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter$1;

.field public final synthetic this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->mEdgeLightingStyleList:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter$1;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->mEffectOnClickListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter$1;

    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    iget-boolean v1, v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mIsSupport:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-boolean v1, v1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    const-string v2, "preload/heart"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "preload/fireworks"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "preload/eclipse"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->mEdgeLightingStyleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->mEdgeLightingStyleList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

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
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object p2, p2, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d01e3

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;

    invoke-direct {p3}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;-><init>()V

    const v1, 0x7f0a0554

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;->titleTv:Landroid/widget/TextView;

    const v1, 0x7f0a054d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;->effectIv:Landroid/widget/ImageView;

    const v1, 0x7f0a054e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;->checkIv:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->mEdgeLightingStyleList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    iput-object p1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;->style:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    iget-object v1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;->titleTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-interface {p1, v2}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;->effectIv:Landroid/widget/ImageView;

    iget-object v1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;->style:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-interface {v1, v2}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getRoundedIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    const-string v1, " "

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;->style:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-interface {v2}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;->checkIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;->titleTv:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setActivated(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    const v2, 0x7f13057f

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object p1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;->checkIv:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setActivated(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    const v2, 0x7f13057e

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->mEffectOnClickListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter$1;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEffectAccessibilityDelegate:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$12;

    invoke-virtual {p2, p0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-object p2
.end method

.method public final getViewTypeCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final hasStableIds()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isEnabled(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final notifyDataSetChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object v1, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEffectGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->mEdgeLightingStyleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->calculateColumnCount(Landroid/widget/GridView;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object v1, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEffectGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->mEdgeLightingStyleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->calculateColumnCount(Landroid/widget/GridView;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->-$$Nest$msetDynamicWidth(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;Landroid/widget/GridView;I)V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
