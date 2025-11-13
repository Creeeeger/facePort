.class public final Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;
.super Landroid/widget/ArrayAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mDisabledAlpha:F

.field public final synthetic this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-static {p2}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getDisabledAlpha(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;->mDisabledAlpha:F

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const v0, 0x7f0a09f4

    const v1, 0x7f0a111a

    const/4 v2, 0x0

    if-nez p2, :cond_0

    const p2, 0x7f0d0496

    invoke-static {p3, p2, p3, v2}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iget v5, v3, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupListItemHeight:I

    invoke-static {v4, v5}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->setLayoutHeight(Landroid/view/View;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v3, v3, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupListItemIconSize:I

    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz p1, :cond_6

    iget-boolean v3, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mEnabled:Z

    const v4, 0x7f0a09e9

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v5, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0a09f5

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v5, v5, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    invoke-static {p3, v2}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getControllerColor(Landroid/content/Context;I)I

    move-result p3

    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    const/16 v7, 0xff

    if-eq v6, v7, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {p3, v5}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result p3

    :cond_1
    invoke-virtual {v4, p3, p3}, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->setColor(II)V

    invoke-virtual {v4, p1}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    iget-object p3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object p3, p3, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeSliderMap:Ljava/util/Map;

    check-cast p3, Ljava/util/HashMap;

    invoke-virtual {p3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/lit8 p3, v3, 0x1

    invoke-virtual {v4, p3}, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->setHideThumb(Z)V

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    const/4 p3, 0x1

    if-eqz v3, :cond_3

    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-boolean v5, v5, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    if-eqz v5, :cond_2

    iget v5, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    if-ne v5, p3, :cond_2

    iget v5, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeMax:I

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    iget v5, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolume:I

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v5, v5, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeChangeListener:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_1

    :cond_2
    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_3
    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    const/high16 v3, 0x437f0000    # 255.0f

    iget v4, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;->mDisabledAlpha:F

    mul-float/2addr v4, v3

    float-to-int v7, v4

    :goto_2
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setAlpha(I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v1, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesAnimatingWithBitmap:Ljava/util/Set;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x4

    :cond_5
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    if-eqz p0, :cond_6

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Landroid/view/animation/AlphaAnimation;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, p3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    invoke-virtual {p0, p3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p2, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_6
    return-object p2
.end method

.method public final isEnabled(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
