.class public final synthetic Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/compatui/CompatUIController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda18;->f$0:Lcom/android/wm/shell/compatui/CompatUIController;

    iput p2, p0, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda18;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda18;->f$0:Lcom/android/wm/shell/compatui/CompatUIController;

    iget p0, p0, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda18;->f$1:I

    check-cast p1, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->updateVisibility(Z)V

    return-void
.end method
