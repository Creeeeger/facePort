.class public final Lcom/android/systemui/statusbar/phone/ScrimStateLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAlphas:[F

.field public final mCallback:Lcom/android/systemui/statusbar/phone/ScrimStateLogger$Callback;

.field public final mColors:[I

.field public mForceChanged:Z

.field public final mScrimViews:[Lcom/android/systemui/scrim/ScrimViewBase;

.field public mScrimVisibility:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/scrim/ScrimViewBase;Lcom/android/systemui/scrim/ScrimViewBase;Lcom/android/systemui/scrim/ScrimViewBase;Lcom/android/systemui/statusbar/phone/ScrimStateLogger$Callback;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mColors:[I

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mAlphas:[F

    new-array v0, v0, [Lcom/android/systemui/scrim/ScrimViewBase;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mScrimViews:[Lcom/android/systemui/scrim/ScrimViewBase;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mForceChanged:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mScrimVisibility:I

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimStateLogger$Callback;

    new-instance p4, Lcom/android/systemui/statusbar/phone/ScrimStateLogger$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lcom/android/systemui/statusbar/phone/ScrimStateLogger$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/ScrimStateLogger;)V

    check-cast p1, Lcom/android/systemui/scrim/ScrimView;

    iput-object p4, p1, Lcom/android/systemui/scrim/ScrimView;->mVisibilityChangedListener:Ljava/util/function/IntConsumer;

    new-instance p1, Lcom/android/systemui/statusbar/phone/ScrimStateLogger$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/ScrimStateLogger$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/ScrimStateLogger;)V

    check-cast p2, Lcom/android/systemui/scrim/ScrimView;

    iput-object p1, p2, Lcom/android/systemui/scrim/ScrimView;->mVisibilityChangedListener:Ljava/util/function/IntConsumer;

    new-instance p1, Lcom/android/systemui/statusbar/phone/ScrimStateLogger$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/ScrimStateLogger$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/ScrimStateLogger;)V

    check-cast p3, Lcom/android/systemui/scrim/ScrimView;

    iput-object p1, p3, Lcom/android/systemui/scrim/ScrimView;->mVisibilityChangedListener:Ljava/util/function/IntConsumer;

    return-void
.end method


# virtual methods
.method public final logScrimColor(Z)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimStateLogger$Callback;

    check-cast v1, Lcom/android/systemui/statusbar/phone/ScrimController$3;

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/ScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimsVisibility:I

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mForceChanged:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mForceChanged:Z

    :goto_0
    move v3, v5

    goto :goto_1

    :cond_0
    iget v3, v0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mScrimVisibility:I

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_1
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mScrimViews:[Lcom/android/systemui/scrim/ScrimViewBase;

    if-nez v3, :cond_6

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mForceChanged:Z

    if-eqz v3, :cond_2

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mForceChanged:Z

    goto :goto_3

    :cond_2
    iget v3, v0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mScrimVisibility:I

    if-eq v3, v2, :cond_3

    goto :goto_3

    :cond_3
    array-length v3, v6

    move v7, v4

    move v8, v7

    :goto_2
    if-ge v7, v3, :cond_7

    aget-object v9, v6, v7

    check-cast v9, Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v9}, Lcom/android/systemui/scrim/ScrimView;->getMainColor()I

    move-result v10

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mColors:[I

    aget v11, v11, v8

    if-ne v10, v11, :cond_5

    iget v9, v9, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mAlphas:[F

    aget v10, v10, v8

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-eqz p1, :cond_7

    :cond_6
    aget-object v0, v6, v4

    aget-object v3, v6, v5

    const/4 v4, 0x2

    aget-object v4, v6, v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/ScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v6}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast v0, Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/scrim/ScrimView;->getMainColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v6, v0, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v0}, Lcom/android/systemui/scrim/ScrimViewBase;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    check-cast v3, Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v3}, Lcom/android/systemui/scrim/ScrimView;->getMainColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v0, v3, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v3}, Lcom/android/systemui/scrim/ScrimViewBase;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    check-cast v4, Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v4}, Lcom/android/systemui/scrim/ScrimView;->getMainColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v0, v4, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-interface {v4}, Lcom/android/systemui/scrim/ScrimViewBase;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    filled-new-array/range {v7 .. v17}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "updateScrimColor main=0x%x front=0x%x|%f|%d noti=0x%x|%f|%d behind=0x%x|%f|%d vis=%d"

    invoke-static {v5, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "ScrimController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method
