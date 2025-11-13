.class public final Lcom/android/systemui/scene/shared/model/Scenes;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Bouncer:Lcom/android/compose/animation/scene/SceneKey;

.field public static final Communal:Lcom/android/compose/animation/scene/SceneKey;

.field public static final Gone:Lcom/android/compose/animation/scene/SceneKey;

.field public static final Lockscreen:Lcom/android/compose/animation/scene/SceneKey;

.field public static final NotificationsShade:Lcom/android/compose/animation/scene/SceneKey;

.field public static final QuickSettings:Lcom/android/compose/animation/scene/SceneKey;

.field public static final QuickSettingsShade:Lcom/android/compose/animation/scene/SceneKey;

.field public static final Shade:Lcom/android/compose/animation/scene/SceneKey;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/scene/shared/model/Scenes;

    invoke-direct {v0}, Lcom/android/systemui/scene/shared/model/Scenes;-><init>()V

    new-instance v0, Lcom/android/compose/animation/scene/SceneKey;

    const-string v1, "bouncer"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/android/compose/animation/scene/SceneKey;-><init>(Ljava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/scene/shared/model/Scenes;->Bouncer:Lcom/android/compose/animation/scene/SceneKey;

    new-instance v0, Lcom/android/compose/animation/scene/SceneKey;

    const-string v1, "communal"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/android/compose/animation/scene/SceneKey;-><init>(Ljava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/scene/shared/model/Scenes;->Communal:Lcom/android/compose/animation/scene/SceneKey;

    new-instance v0, Lcom/android/compose/animation/scene/SceneKey;

    const-string v1, "gone"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/android/compose/animation/scene/SceneKey;-><init>(Ljava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/scene/shared/model/Scenes;->Gone:Lcom/android/compose/animation/scene/SceneKey;

    new-instance v0, Lcom/android/compose/animation/scene/SceneKey;

    const-string v1, "lockscreen"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/android/compose/animation/scene/SceneKey;-><init>(Ljava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/scene/shared/model/Scenes;->Lockscreen:Lcom/android/compose/animation/scene/SceneKey;

    new-instance v0, Lcom/android/compose/animation/scene/SceneKey;

    const-string v1, "notifications_shade"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/android/compose/animation/scene/SceneKey;-><init>(Ljava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/scene/shared/model/Scenes;->NotificationsShade:Lcom/android/compose/animation/scene/SceneKey;

    new-instance v0, Lcom/android/compose/animation/scene/SceneKey;

    const-string v1, "quick_settings"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/android/compose/animation/scene/SceneKey;-><init>(Ljava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/scene/shared/model/Scenes;->QuickSettings:Lcom/android/compose/animation/scene/SceneKey;

    new-instance v0, Lcom/android/compose/animation/scene/SceneKey;

    const-string v1, "quick_settings_shade"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/android/compose/animation/scene/SceneKey;-><init>(Ljava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/scene/shared/model/Scenes;->QuickSettingsShade:Lcom/android/compose/animation/scene/SceneKey;

    new-instance v0, Lcom/android/compose/animation/scene/SceneKey;

    const-string/jumbo v1, "shade"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/android/compose/animation/scene/SceneKey;-><init>(Ljava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/scene/shared/model/Scenes;->Shade:Lcom/android/compose/animation/scene/SceneKey;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
