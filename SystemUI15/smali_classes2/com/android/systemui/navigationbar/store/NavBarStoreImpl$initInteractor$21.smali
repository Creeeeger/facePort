.class public final Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$21;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$21;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$21;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$21;-><init>()V

    sput-object v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$21;->INSTANCE:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$21;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationModeController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationModeController;->updateCurrentInteractionMode(Z)V

    return-void
.end method
