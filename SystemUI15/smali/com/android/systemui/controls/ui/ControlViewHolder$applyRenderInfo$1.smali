.class final Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $control:Landroid/service/controls/Control;

.field final synthetic $enabled:Z

.field final synthetic $fg:Landroid/content/res/ColorStateList;

.field final synthetic $newText:Ljava/lang/CharSequence;

.field final synthetic $ri:Lcom/android/systemui/controls/ui/RenderInfo;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlViewHolder;ZLjava/lang/CharSequence;Lcom/android/systemui/controls/ui/RenderInfo;Landroid/content/res/ColorStateList;Landroid/service/controls/Control;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iput-boolean p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$enabled:Z

    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$newText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$ri:Lcom/android/systemui/controls/ui/RenderInfo;

    iput-object p5, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$fg:Landroid/content/res/ColorStateList;

    iput-object p6, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$control:Landroid/service/controls/Control;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iget-boolean v2, v0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$enabled:Z

    iget-object v3, v0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$newText:Ljava/lang/CharSequence;

    iget-object v4, v0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$ri:Lcom/android/systemui/controls/ui/RenderInfo;

    iget-object v4, v4, Lcom/android/systemui/controls/ui/RenderInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v5, v0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$fg:Landroid/content/res/ColorStateList;

    iget-object v6, v0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$control:Landroid/service/controls/Control;

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/controls/ui/ControlViewHolder;->updateStatusRow$frameworks__base__packages__SystemUI__android_common__SystemUI_core(ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/service/controls/Control;)V

    iget-object v1, v0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getSecControlViewHolder()Lcom/android/systemui/controls/ui/SecControlViewHolder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$control:Landroid/service/controls/Control;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-boolean v4, v0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$enabled:Z

    iget-object v5, v0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$ri:Lcom/android/systemui/controls/ui/RenderInfo;

    iget-object v5, v5, Lcom/android/systemui/controls/ui/RenderInfo;->secRenderInfo$delegate:Lkotlin/Lazy;

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/controls/ui/SecRenderInfo;

    iget-object v5, v5, Lcom/android/systemui/controls/ui/SecRenderInfo;->actionIcon:Landroid/graphics/drawable/Drawable;

    iget-object v6, v0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v6}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlStatus()I

    move-result v6

    iget-object v7, v0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v7}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object v7

    iget-object v8, v0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v8}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    move-result v8

    sget-object v9, Lcom/android/systemui/controls/ui/ControlViewHolder;->ATTR_ENABLED:[I

    sget-object v10, Lcom/android/systemui/controls/ui/ControlViewHolder;->ATTR_DISABLED:[I

    sget-object v11, Lcom/android/systemui/controls/ui/SecRenderInfo;->Companion:Lcom/android/systemui/controls/ui/SecRenderInfo$Companion;

    iget-object v12, v0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iget-object v12, v12, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$control:Landroid/service/controls/Control;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_2

    sget-object v11, Lcom/android/systemui/controls/ui/SecRenderInfoKt;->statusIconResourceMap:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/service/controls/CustomControl;->getStatusIconType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v11, Lcom/android/systemui/controls/ui/SecRenderInfo;->statusIconDrawableMap:Landroid/util/SparseArray;

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/drawable/Drawable;

    if-nez v13, :cond_3

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v12}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v12

    invoke-virtual {v13, v0, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v11, v0, v13}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_4

    goto/16 :goto_11

    :cond_4
    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getStatusTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v11, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_5
    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getUseCustomIconWithoutPadding()Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v11, v11, v11, v11}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_6
    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getUseCustomIconWithoutShadowBg()Z

    move-result v0

    const/4 v12, 0x1

    if-nez v0, :cond_9

    iget-object v0, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v14, 0x10

    if-ne v0, v14, :cond_9

    if-eqz v4, :cond_9

    iget-object v0, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v14, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    const v15, 0x7f08071e

    invoke-virtual {v0, v15, v14}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-boolean v14, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE_FOLD:Z

    if-eqz v14, :cond_8

    iget-object v14, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    if-eqz v14, :cond_8

    iget-object v14, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/systemui/controls/util/ControlsUtil;->isFoldDelta(Landroid/content/Context;)Z

    move-result v14

    if-ne v14, v12, :cond_8

    iget-object v14, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f070250

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    instance-of v15, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v15, :cond_7

    move-object v15, v0

    check-cast v15, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_3

    :cond_7
    const/4 v15, 0x0

    :goto_3
    if-eqz v15, :cond_8

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v15}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-static {v15, v14, v14, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-direct {v0, v3, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_8
    iget-object v3, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    iget-object v0, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->icon:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget v0, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->layoutType:I

    if-ne v0, v12, :cond_a

    move v0, v12

    goto :goto_4

    :cond_a
    move v0, v11

    :goto_4
    const/16 v3, 0x8

    if-eqz v0, :cond_b

    goto/16 :goto_8

    :cond_b
    iget-object v0, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->actionIcon:Lcom/android/systemui/controls/ui/view/ControlsActionButton;

    if-eqz v0, :cond_16

    invoke-static {v6, v7, v8}, Lcom/android/systemui/controls/ui/SecControlViewHolder;->isSecBehavior(ILandroid/service/controls/templates/ControlTemplate;I)Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, v0, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->actionIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getActionIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    if-eqz v8, :cond_d

    if-eqz v6, :cond_c

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_5

    :cond_c
    const/4 v8, 0x0

    :goto_5
    if-nez v8, :cond_12

    :cond_d
    if-eqz v6, :cond_12

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    instance-of v8, v5, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v8, :cond_11

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    instance-of v8, v8, Landroid/graphics/drawable/StateListDrawable;

    if-nez v8, :cond_f

    :cond_e
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    if-eqz v4, :cond_10

    goto :goto_6

    :cond_10
    move-object v9, v10

    :goto_6
    invoke-virtual {v6, v9, v12}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_7

    :cond_11
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_7
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_12
    iget-object v5, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->subTitle:Ljava/lang/CharSequence;

    iput-object v5, v0, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->updateContentDescription()V

    iget-object v0, v0, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->actionIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_13

    goto :goto_8

    :cond_13
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    :cond_14
    iget-object v0, v0, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->actionIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_15

    goto :goto_8

    :cond_15
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_16
    :goto_8
    iget v0, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->layoutType:I

    if-ne v0, v12, :cond_1d

    if-eqz v4, :cond_1b

    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getCustomStatusIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v4, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->statusIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_17

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_9

    :cond_17
    const/4 v0, 0x0

    :goto_9
    if-nez v0, :cond_18

    goto :goto_a

    :cond_18
    const/4 v4, 0x0

    goto :goto_b

    :cond_19
    :goto_a
    iget-object v0, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->statusIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_18

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_b
    iget-object v0, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->batteryLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1a

    goto :goto_c

    :cond_1a
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_c

    :cond_1b
    const/4 v4, 0x0

    iget-object v0, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->batteryLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1c

    goto :goto_c

    :cond_1c
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_c

    :cond_1d
    const/4 v4, 0x0

    iget-object v0, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->statusIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1f

    sget-object v5, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    if-eqz v13, :cond_1f

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_c

    :cond_1e
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1f
    :goto_c
    iget v0, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->layoutType:I

    if-ne v0, v12, :cond_20

    goto :goto_e

    :cond_20
    iget-object v0, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    if-eqz v0, :cond_21

    iget-object v12, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->context:Landroid/content/Context;

    iget-object v13, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v14, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->layout:Landroid/view/ViewGroup;

    iget-object v15, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getCustomIconAnimationJson()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getCustomIconAnimationJsonCache()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getCustomIconAnimationStartFrame()I

    move-result v18

    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getCustomIconAnimationEndFrame()I

    move-result v19

    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getCustomIconAnimationRepeatCount()I

    move-result v20

    invoke-static/range {v12 .. v20}, Lcom/android/systemui/controls/util/ControlsUtil;->updateLottieIcon(Landroid/content/Context;Landroid/widget/ImageView;Landroid/view/View;Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;Ljava/lang/String;III)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    goto :goto_d

    :cond_21
    move-object v0, v4

    :goto_d
    iput-object v0, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    :goto_e
    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getOverlayCustomIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v2, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->overlayCustomIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_22

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    :cond_22
    iget-object v0, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->overlayCustomIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_23

    goto :goto_f

    :cond_23
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_f
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_10

    :cond_24
    move-object v0, v4

    :goto_10
    if-nez v0, :cond_26

    iget-object v0, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->overlayCustomIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_25

    goto :goto_11

    :cond_25
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_26
    :goto_11
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
