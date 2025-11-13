.class public final Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onGardenChanged$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $model:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

.field public final synthetic $this_apply:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onGardenChanged$1$1;->$this_apply:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onGardenChanged$1$1;->$model:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onGardenChanged$1$1;->$this_apply:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onGardenChanged$1$1;->$model:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingLeft:I

    iget v2, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->paddingLeft:I

    const/4 v3, 0x1

    if-eq v2, v1, :cond_0

    iput v1, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->paddingLeft:I

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->isUpdatedModel:Z

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingRight:I

    iget v2, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->paddingRight:I

    if-eq v2, v1, :cond_1

    iput v1, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->paddingRight:I

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->isUpdatedModel:Z

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->totalHeight:I

    iget v2, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->totalHeight:I

    if-eq v2, v1, :cond_2

    iput v1, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->totalHeight:I

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->isUpdatedModel:Z

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->cameraTopMargin:I

    iget v2, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->topMargin:I

    if-eq v2, v1, :cond_3

    iput v1, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->topMargin:I

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->isUpdatedModel:Z

    :cond_3
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthLeftContainer:I

    iget v1, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->containerEndX:I

    if-eq v1, p0, :cond_4

    iput p0, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->containerEndX:I

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->isUpdatedModel:Z

    :cond_4
    return-void
.end method
