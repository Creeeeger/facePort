.class public final Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final favoriteFunction:Lkotlin/jvm/functions/Function1;

.field public final getActiveFlag:Lkotlin/jvm/functions/Function1;

.field public final resources:Landroid/content/res/Resources;

.field public final setActiveFlag:Lkotlin/jvm/functions/Function2;

.field public final setActivePanelFlag:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function2;",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;->resources:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;->favoriteFunction:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;->getActiveFlag:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;->setActiveFlag:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;->setActivePanelFlag:Lkotlin/jvm/functions/Function2;

    return-void
.end method
