.class public final Lcom/android/systemui/communal/shared/model/CommunalScenes;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Blank:Lcom/android/compose/animation/scene/SceneKey;

.field public static final Communal:Lcom/android/compose/animation/scene/SceneKey;

.field public static final Default:Lcom/android/compose/animation/scene/SceneKey;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/communal/shared/model/CommunalScenes;

    invoke-direct {v0}, Lcom/android/systemui/communal/shared/model/CommunalScenes;-><init>()V

    new-instance v0, Lcom/android/compose/animation/scene/SceneKey;

    const-string v1, "blank"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/android/compose/animation/scene/SceneKey;-><init>(Ljava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/communal/shared/model/CommunalScenes;->Blank:Lcom/android/compose/animation/scene/SceneKey;

    new-instance v1, Lcom/android/compose/animation/scene/SceneKey;

    const-string v4, "communal"

    invoke-direct {v1, v4, v2, v3, v2}, Lcom/android/compose/animation/scene/SceneKey;-><init>(Ljava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/android/systemui/communal/shared/model/CommunalScenes;->Communal:Lcom/android/compose/animation/scene/SceneKey;

    sput-object v0, Lcom/android/systemui/communal/shared/model/CommunalScenes;->Default:Lcom/android/compose/animation/scene/SceneKey;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
