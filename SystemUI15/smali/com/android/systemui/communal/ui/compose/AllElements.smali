.class public final Lcom/android/systemui/communal/ui/compose/AllElements;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/compose/animation/scene/ElementMatcher;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/communal/ui/compose/AllElements;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/communal/ui/compose/AllElements;

    invoke-direct {v0}, Lcom/android/systemui/communal/ui/compose/AllElements;-><init>()V

    sput-object v0, Lcom/android/systemui/communal/ui/compose/AllElements;->INSTANCE:Lcom/android/systemui/communal/ui/compose/AllElements;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final matches(Lcom/android/compose/animation/scene/ElementKey;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
