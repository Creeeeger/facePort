.class public final Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $bottomMargin:F

.field public final synthetic $container:Landroid/view/ViewGroup;

.field public final synthetic $coverTextDirection:I

.field public final synthetic $rightMargin:F

.field public final synthetic $scale:F

.field public final synthetic $screenWidth:I

.field public final synthetic this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;ILandroid/view/ViewGroup;IFFF)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;

    iput p2, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$coverTextDirection:I

    iput-object p3, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$container:Landroid/view/ViewGroup;

    iput p4, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$screenWidth:I

    iput p5, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$scale:F

    iput p6, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$rightMargin:F

    iput p7, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$bottomMargin:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    sget-object v0, Lcom/android/systemui/volume/util/ContextUtils;->INSTANCE:Lcom/android/systemui/volume/util/ContextUtils;

    iget-object v1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$coverTextDirection:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$container:Landroid/view/ViewGroup;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setRotation(F)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$container:Landroid/view/ViewGroup;

    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setRotation(F)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$container:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$screenWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v2, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$scale:F

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$rightMargin:F

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$container:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$bottomMargin:F

    iget v2, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$scale:F

    mul-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/high16 v3, 0x43340000    # 180.0f

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$coverTextDirection:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$container:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setRotation(F)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$container:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$screenWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v2, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$scale:F

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$rightMargin:F

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$container:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$bottomMargin:F

    iget v2, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$scale:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$coverTextDirection:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$container:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setRotation(F)V

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$container:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$screenWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v2, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$scale:F

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$rightMargin:F

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$container:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$bottomMargin:F

    iget v2, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$scale:F

    mul-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;->$container:Landroid/view/ViewGroup;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method
