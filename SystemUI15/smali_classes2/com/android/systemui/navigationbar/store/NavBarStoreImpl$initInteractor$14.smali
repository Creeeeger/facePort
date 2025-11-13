.class public final Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$14;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$14;->this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$14;->this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    new-instance v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnOneHandModeChanged;

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnOneHandModeChanged;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    return-void
.end method
