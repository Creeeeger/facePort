.class public final Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field public final mDefaultIcon:Landroid/graphics/drawable/Drawable;

.field public mGroupVolumeItem:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;

.field public final mInflater:Landroid/view/LayoutInflater;

.field public final mItems:Ljava/util/ArrayList;

.field public final mLayoutAnimationDurationMs:I

.field public final mSpeakerGroupIcon:Landroid/graphics/drawable/Drawable;

.field public final mSpeakerIcon:Landroid/graphics/drawable/Drawable;

.field public final mTvIcon:Landroid/graphics/drawable/Drawable;

.field public final synthetic this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;)V
    .locals 2

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f040460

    invoke-static {v1, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getIconByAttrId(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f040469

    invoke-static {v1, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getIconByAttrId(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mTvIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f040466

    invoke-static {v1, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getIconByAttrId(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mSpeakerIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f040465

    invoke-static {v1, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getIconByAttrId(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mSpeakerGroupIcon:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b00ae

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mLayoutAnimationDurationMs:I

    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->updateItems()V

    return-void
.end method


# virtual methods
.method public final animateLayoutHeight$1(Landroid/view/View;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$1;

    invoke-direct {v1, p0, p2, v0, p1}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$1;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;IILandroid/view/View;)V

    new-instance p2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$2;

    invoke-direct {p2, p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$2;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;)V

    invoke-virtual {v1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget p2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mLayoutAnimationDurationMs:I

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final getIconDrawable(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mIconUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    iget-object v1, v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaRouteCtrlDialog"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget v0, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDeviceType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isGroup()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mSpeakerGroupIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mSpeakerIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mTvIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object p0
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mGroupVolumeItem:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mItems:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;

    :goto_0
    iget p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;->mType:I

    return p0
.end method

.method public final notifyAdapterDataSetChanged()V
    .locals 7

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mUngroupableRoutes:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mUngroupableRoutes:Ljava/util/List;

    iget-object v2, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mGroupableRoutes:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object v4, v4, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mProvider:Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    iget-object v4, v4, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object v6, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v6, v5}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDynamicGroupState(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;->isGroupable()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    if-nez p2, :cond_0

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mGroupVolumeItem:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;

    :goto_0
    iget v0, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;->mType:I

    const/4 v1, 0x1

    if-nez p2, :cond_1

    iget-object p2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mGroupVolumeItem:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mItems:Ljava/util/ArrayList;

    sub-int/2addr p2, v1

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;

    :goto_1
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_16

    const/4 v3, 0x2

    if-eq v0, v3, :cond_15

    const/4 v4, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x4

    if-eq v0, v4, :cond_5

    if-ne v0, v6, :cond_4

    check-cast p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;

    iget-object p0, p2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;->mData:Ljava/lang/Object;

    check-cast p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iput-object p0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object p2, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p2, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;->this$1:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;

    iget-object v0, p2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_2

    move v1, v2

    :cond_2
    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;->mItemView:Landroid/view/View;

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    iget v5, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;->mDisabledAlpha:F

    :goto_2
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;->mItemView:Landroid/view/View;

    new-instance v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder$1;

    invoke-direct {v1, p1}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder$1;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->getIconDrawable(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_5
    iget-object v0, p2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;->mData:Ljava/lang/Object;

    check-cast v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mVolumeSliderHolderMap:Ljava/util/Map;

    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    move-object v4, p1

    check-cast v4, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;

    iget-object p0, p2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;->mData:Ljava/lang/Object;

    check-cast p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object p2, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->this$1:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;

    iget-object v0, p2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    iget-object v4, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-ne p0, v4, :cond_7

    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object v8, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mGroupableRoutes:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    move-object p0, v7

    :cond_7
    invoke-virtual {p1, p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->bindRouteVolumeSliderHolder(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    iget-object v4, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->getIconDrawable(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v4, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-virtual {p1, p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->isSelected(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result p2

    iget-object v4, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mUngroupableRoutes:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    :goto_3
    move p0, v2

    goto :goto_4

    :cond_9
    invoke-virtual {p1, p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->isSelected(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object v4, v4, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v3, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {p1, p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->isSelected(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDynamicGroupState(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;

    move-result-object p0

    if-eqz p0, :cond_8

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;->mDynamicDescriptor:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    if-eqz p0, :cond_b

    iget-boolean p0, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->mIsUnselectable:Z

    if-eqz p0, :cond_8

    :cond_b
    move p0, v1

    :goto_4
    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->mMuteButton:Landroid/widget/ImageButton;

    if-nez p0, :cond_d

    if-eqz p2, :cond_c

    goto :goto_5

    :cond_c
    move v3, v2

    goto :goto_6

    :cond_d
    :goto_5
    move v3, v1

    :goto_6
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    if-nez p0, :cond_f

    if-eqz p2, :cond_e

    goto :goto_7

    :cond_e
    move v1, v2

    :cond_f
    :goto_7
    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->mVolumeSlider:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->mItemView:Landroid/view/View;

    iget-object v1, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->mViewClickListener:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder$1;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->mVolumeSliderLayout:Landroid/widget/RelativeLayout;

    if-eqz p2, :cond_10

    iget-object v1, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isGroup()Z

    move-result v1

    if-nez v1, :cond_10

    iget v2, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->mExpandedLayoutHeight:I

    :cond_10
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->mItemView:Landroid/view/View;

    iget v1, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->mDisabledAlpha:F

    if-nez p0, :cond_12

    if-eqz p2, :cond_11

    goto :goto_8

    :cond_11
    move v2, v1

    goto :goto_9

    :cond_12
    :goto_8
    move v2, v5

    :goto_9
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    if-nez p0, :cond_14

    if-nez p2, :cond_13

    goto :goto_a

    :cond_13
    move v5, v1

    :cond_14
    :goto_a
    invoke-virtual {p1, v5}, Landroid/widget/CheckBox;->setAlpha(F)V

    goto :goto_b

    :cond_15
    check-cast p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$HeaderViewHolder;

    iget-object p0, p2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;->mData:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$HeaderViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    :cond_16
    iget-object v0, p2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;->mData:Ljava/lang/Object;

    check-cast v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mVolumeSliderHolderMap:Ljava/util/Map;

    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    move-object v3, p1

    check-cast v3, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupVolumeViewHolder;

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupVolumeViewHolder;->this$1:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    iget-boolean v3, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mEnableGroupVolumeUX:Z

    if-eqz v3, :cond_17

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_17

    iget v2, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupVolumeViewHolder;->mExpandedHeight:I

    :cond_17
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;->mData:Ljava/lang/Object;

    check-cast p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p1, p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->bindRouteVolumeSliderHolder(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupVolumeViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_b
    return-void
.end method

.method public final onCreateViewHolder(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0218

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;

    invoke-direct {p2, p0, p1}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d021c

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;

    invoke-direct {p2, p0, p1}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;Landroid/view/View;)V

    return-object p2

    :cond_2
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d021a

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$HeaderViewHolder;

    invoke-direct {p2, p0, p1}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$HeaderViewHolder;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;Landroid/view/View;)V

    return-object p2

    :cond_3
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0219

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupVolumeViewHolder;

    invoke-direct {p2, p0, p1}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupVolumeViewHolder;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mVolumeSliderHolderMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateItems()V
    .locals 11

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    iget-object v2, v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v2, v3}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mGroupVolumeItem:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;

    iget-object v0, v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mMemberRoutes:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x3

    if-nez v0, :cond_0

    iget-object v0, v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mMemberRoutes:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v6, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;

    invoke-direct {v6, p0, v4, v2}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;Ljava/lang/Object;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v4, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;

    iget-object v5, v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-direct {v4, p0, v5, v2}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;Ljava/lang/Object;I)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mGroupableRoutes:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v0, :cond_6

    iget-object v0, v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mGroupableRoutes:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v7, v6

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object v9, v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mMemberRoutes:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    if-nez v7, :cond_5

    iget-object v7, v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDynamicGroupController()Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->getGroupableSelectionTitle()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_3
    move-object v7, v5

    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v7, v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mContext:Landroid/content/Context;

    const v9, 0x7f130c8c

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_4
    iget-object v9, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v10, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;

    invoke-direct {v10, p0, v7, v4}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;Ljava/lang/Object;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v3

    :cond_5
    iget-object v9, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v10, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;

    invoke-direct {v10, p0, v8, v2}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;Ljava/lang/Object;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-object v0, v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mTransferableRoutes:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mTransferableRoutes:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object v7, v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eq v7, v2, :cond_7

    if-nez v6, :cond_a

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDynamicGroupController()Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->getTransferableSectionTitle()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_8
    move-object v6, v5

    :goto_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v6, v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mContext:Landroid/content/Context;

    const v7, 0x7f130c8d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_9
    iget-object v7, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v8, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;

    invoke-direct {v8, p0, v6, v4}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;Ljava/lang/Object;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v3

    :cond_a
    iget-object v7, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v8, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;

    const/4 v9, 0x4

    invoke-direct {v8, p0, v2, v9}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;Ljava/lang/Object;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->notifyAdapterDataSetChanged()V

    return-void
.end method
