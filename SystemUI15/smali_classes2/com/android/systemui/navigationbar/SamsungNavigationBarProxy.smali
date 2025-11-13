.class public final Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/navigationbar/store/SystemBarProxy;


# static fields
.field public static final Companion:Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy$Companion;

.field public static volatile INSTANCE:Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;


# instance fields
.field public navbarTransitionMode:I

.field public final rotationLockCallback:Ljava/util/List;

.field public rotationLocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;->Companion:Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;->rotationLockCallback:Ljava/util/List;

    return-void
.end method
