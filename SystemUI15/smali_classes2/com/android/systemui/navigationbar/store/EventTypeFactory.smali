.class public final Lcom/android/systemui/navigationbar/store/EventTypeFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/navigationbar/store/EventTypeFactory$Companion;

.field public static volatile INSTANCE:Lcom/android/systemui/navigationbar/store/EventTypeFactory;


# instance fields
.field public final context:Landroid/content/Context;

.field public final updatableEvents:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory;->Companion:Lcom/android/systemui/navigationbar/store/EventTypeFactory$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory;->context:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory;->updatableEvents:Ljava/util/List;

    return-void
.end method
