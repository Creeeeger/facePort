.class public final Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $clipLayer:Landroid/graphics/drawable/ClipDrawable;

.field public final synthetic $colorOffset:I

.field public final synthetic $drawable:Landroid/graphics/drawable/Drawable;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ThumbnailBehavior;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/ClipDrawable;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3$1;->this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3$1;->$drawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3$1;->$clipLayer:Landroid/graphics/drawable/ClipDrawable;

    iput p4, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3$1;->$colorOffset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3$1;->this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;

    iget-object v0, v0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070249

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3$1;->$drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3$1;->$clipLayer:Landroid/graphics/drawable/ClipDrawable;

    new-instance v4, Lcom/android/systemui/controls/ui/CornerDrawable;

    invoke-direct {v4, v2, v0}, Lcom/android/systemui/controls/ui/CornerDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/ClipDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3$1;->$clipLayer:Landroid/graphics/drawable/ClipDrawable;

    new-instance v2, Landroid/graphics/BlendModeColorFilter;

    iget-object v3, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3$1;->this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;

    iget-object v3, v3, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    iget-object v3, v3, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600db

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/BlendMode;->LUMINOSITY:Landroid/graphics/BlendMode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ClipDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3$1;->this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;

    iget-object v2, v0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->template:Landroid/service/controls/templates/ThumbnailTemplate;

    if-eqz v0, :cond_4

    move-object v1, v0

    :cond_4
    invoke-virtual {v1}, Landroid/service/controls/templates/ThumbnailTemplate;->isActive()Z

    move-result v0

    iget p0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3$1;->$colorOffset:I

    const/4 v1, 0x1

    invoke-virtual {v2, p0, v0, v1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core(IZZ)V

    return-void
.end method
