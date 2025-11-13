.class public final Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$17;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$17;->this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$17;->this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    new-instance v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnFoldStateChanged;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnFoldStateChanged;-><init>(Z)V

    invoke-virtual {v0, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$17;->this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    iget-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$17$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$17$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
