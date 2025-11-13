.class public final synthetic Lcom/android/systemui/shade/QuickSettingsControllerImpl$QsFragmentListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl$QsFragmentListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl$QsFragmentListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$QsFragmentListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl$QsFragmentListener;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$QsFragmentListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl$QsFragmentListener;

    sub-int/2addr p5, p3

    sub-int/2addr p9, p7

    if-eq p5, p9, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$QsFragmentListener;->this$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->onHeightChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void
.end method
