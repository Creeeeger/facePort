.class public final Lcom/android/systemui/scene/shared/model/SceneFamilies;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Home:Lcom/android/compose/animation/scene/SceneKey;

.field public static final NotifShade:Lcom/android/compose/animation/scene/SceneKey;

.field public static final QuickSettings:Lcom/android/compose/animation/scene/SceneKey;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/scene/shared/model/SceneFamilies;

    invoke-direct {v0}, Lcom/android/systemui/scene/shared/model/SceneFamilies;-><init>()V

    new-instance v0, Lcom/android/compose/animation/scene/SceneKey;

    const-string/jumbo v1, "scene_family_home"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/android/compose/animation/scene/SceneKey;-><init>(Ljava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/scene/shared/model/SceneFamilies;->Home:Lcom/android/compose/animation/scene/SceneKey;

    new-instance v0, Lcom/android/compose/animation/scene/SceneKey;

    const-string/jumbo v1, "scene_family_notif_shade"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/android/compose/animation/scene/SceneKey;-><init>(Ljava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/scene/shared/model/SceneFamilies;->NotifShade:Lcom/android/compose/animation/scene/SceneKey;

    new-instance v0, Lcom/android/compose/animation/scene/SceneKey;

    const-string/jumbo v1, "scene_family_quick_settings"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/android/compose/animation/scene/SceneKey;-><init>(Ljava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/scene/shared/model/SceneFamilies;->QuickSettings:Lcom/android/compose/animation/scene/SceneKey;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
