.class public final Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$17$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$17$1;->this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$17$1;->this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navStateManager:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$17$1;->this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    new-instance v2, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;

    const-class v3, Landroid/content/Context;

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;-><init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/store/NavBarStateManager;)V

    new-instance v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnBarLayoutParamsProviderChanged;

    invoke-direct {v0, v2}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnBarLayoutParamsProviderChanged;-><init>(Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;)V

    invoke-interface {p0, p0, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    :cond_0
    return-void
.end method
