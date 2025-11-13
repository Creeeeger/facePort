.class public final Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $fgIconView:Landroid/widget/ImageView;

.field public final synthetic $overrideColor:Landroidx/compose/ui/graphics/Color;

.field public final synthetic $view:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;Landroidx/compose/ui/graphics/Color;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1$1$1;->$fgIconView:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1$1$1;->$view:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1$1$1;->$overrideColor:Landroidx/compose/ui/graphics/Color;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel$ForegroundIconViewModel;

    iget-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1$1$1;->$fgIconView:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel$ForegroundIconViewModel;->type:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1$1$1;->$view:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, p1, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel$ForegroundIconViewModel;->useAodVariant:Z

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;->getIconState(Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;Z)[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/widget/ImageView;->setImageState([IZ)V

    iget-object p2, p1, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel$ForegroundIconViewModel;->type:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;

    invoke-virtual {p2}, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;->getContentDescriptionResId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1$1$1;->$fgIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;->getContentDescriptionResId()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1$1$1;->$fgIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1$1$1;->$overrideColor:Landroidx/compose/ui/graphics/Color;

    if-eqz v0, :cond_1

    iget-wide v0, v0, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel$ForegroundIconViewModel;->tint:I

    :goto_0
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1$1$1;->$fgIconView:Landroid/widget/ImageView;

    iget p1, p1, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel$ForegroundIconViewModel;->padding:I

    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/widget/ImageView;->setPadding(IIII)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
