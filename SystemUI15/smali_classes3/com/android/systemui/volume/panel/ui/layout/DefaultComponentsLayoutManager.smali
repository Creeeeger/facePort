.class public final Lcom/android/systemui/volume/panel/ui/layout/DefaultComponentsLayoutManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/volume/panel/ui/layout/ComponentsLayoutManager;


# instance fields
.field public final bottomBar:Ljava/lang/String;

.field public final footerComponents:Ljava/util/Collection;

.field public final headerComponents:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/panel/ui/layout/DefaultComponentsLayoutManager;->bottomBar:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/volume/panel/ui/layout/DefaultComponentsLayoutManager;->headerComponents:Ljava/util/Collection;

    iput-object p3, p0, Lcom/android/systemui/volume/panel/ui/layout/DefaultComponentsLayoutManager;->footerComponents:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    sget-object p3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/panel/ui/layout/DefaultComponentsLayoutManager;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method
