.class public final Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$11;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$11;->this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$11;->this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    new-instance v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnOpenThemeChanged;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnOpenThemeChanged;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    return-void
.end method
