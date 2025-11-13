.class public final synthetic Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

.field public final synthetic f$1:Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;

.field public final synthetic f$2:Ljava/util/Map;

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;Ljava/util/Map;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda16;->f$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda16;->f$1:Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;

    iput-object p3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda16;->f$2:Ljava/util/Map;

    iput p4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda16;->f$3:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda16;->f$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda16;->f$1:Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda16;->f$2:Ljava/util/Map;

    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda16;->f$3:F

    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUiThreadContext:Lcom/android/systemui/util/concurrency/UiThreadContext;

    invoke-virtual {v3}, Lcom/android/systemui/util/concurrency/UiThreadContext;->isCurrentThread()V

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLModelIsLoading:Z

    iget-boolean v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUseMLModel:Z

    if-nez v3, :cond_0

    const-string p0, "EdgeBackGestureHandler"

    const-string v0, "Model finished loading but isn\'t needed."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackGestureTfClassifierProvider:Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;

    iput-object v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mVocab:Ljava/util/Map;

    iput p0, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLModelThreshold:F

    :goto_0
    return-void
.end method
