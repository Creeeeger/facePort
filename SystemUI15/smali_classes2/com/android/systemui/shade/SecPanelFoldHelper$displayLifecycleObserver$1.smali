.class public final Lcom/android/systemui/shade/SecPanelFoldHelper$displayLifecycleObserver$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# instance fields
.field public isFolderOpened:I

.field public final synthetic this$0:Lcom/android/systemui/shade/SecPanelFoldHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecPanelFoldHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelFoldHelper$displayLifecycleObserver$1;->this$0:Lcom/android/systemui/shade/SecPanelFoldHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/shade/SecPanelFoldHelper$displayLifecycleObserver$1;->isFolderOpened:I

    return-void
.end method


# virtual methods
.method public final onFolderStateChanged(Z)V
    .locals 3

    const-string v0, "onFolderStateChanged newFolderOpenState = "

    const-string v1, ", isFolderOpened = "

    const-string v2, "SecPanelFoldHelper"

    invoke-static {v0, p1, v1, p1, v2}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/shade/SecPanelFoldHelper$displayLifecycleObserver$1;->isFolderOpened:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/shade/SecPanelFoldHelper$displayLifecycleObserver$1;->isFolderOpened:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const-string p1, "FOLD_UNKNOWN"

    goto :goto_0

    :cond_1
    const-string p1, "FOLD_OPEN"

    goto :goto_0

    :cond_2
    const-string p1, "FOLD_CLOSE"

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelFoldHelper$displayLifecycleObserver$1;->this$0:Lcom/android/systemui/shade/SecPanelFoldHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelFoldHelper;->qsExpandedSupplier:Ljava/util/function/BooleanSupplier;

    invoke-interface {p0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFolderStateChanged("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") in KeyguardShowing:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", QsExpanded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", PanelExpanded:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", Tracking:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
