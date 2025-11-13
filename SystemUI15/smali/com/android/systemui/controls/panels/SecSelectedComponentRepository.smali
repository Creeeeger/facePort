.class public interface abstract Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static synthetic getSelectedComponent$default(Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;)Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;
    .locals 1

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    check-cast p0, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl;->getSelectedComponent(Landroid/os/UserHandle;)Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;

    move-result-object p0

    return-object p0
.end method
