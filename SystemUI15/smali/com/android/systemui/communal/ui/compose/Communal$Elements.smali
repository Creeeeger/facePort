.class public final Lcom/android/systemui/communal/ui/compose/Communal$Elements;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Grid:Lcom/android/compose/animation/scene/ElementKey;

.field public static final INSTANCE:Lcom/android/systemui/communal/ui/compose/Communal$Elements;

.field public static final IndicationArea:Lcom/android/compose/animation/scene/ElementKey;

.field public static final LockIcon:Lcom/android/compose/animation/scene/ElementKey;

.field public static final Scrim:Lcom/android/compose/animation/scene/ElementKey;

.field public static final StatusBar:Lcom/android/compose/animation/scene/ElementKey;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/android/systemui/communal/ui/compose/Communal$Elements;

    invoke-direct {v0}, Lcom/android/systemui/communal/ui/compose/Communal$Elements;-><init>()V

    sput-object v0, Lcom/android/systemui/communal/ui/compose/Communal$Elements;->INSTANCE:Lcom/android/systemui/communal/ui/compose/Communal$Elements;

    new-instance v0, Lcom/android/compose/animation/scene/ElementKey;

    sget-object v4, Lcom/android/compose/animation/scene/LowestZIndexScenePicker;->INSTANCE:Lcom/android/compose/animation/scene/LowestZIndexScenePicker;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "Scrim"

    const/4 v3, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/compose/animation/scene/ElementKey;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/android/compose/animation/scene/ElementScenePicker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/communal/ui/compose/Communal$Elements;->Scrim:Lcom/android/compose/animation/scene/ElementKey;

    new-instance v0, Lcom/android/compose/animation/scene/ElementKey;

    const/4 v11, 0x6

    const/4 v12, 0x0

    const-string v8, "CommunalContent"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/compose/animation/scene/ElementKey;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/android/compose/animation/scene/ElementScenePicker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/communal/ui/compose/Communal$Elements;->Grid:Lcom/android/compose/animation/scene/ElementKey;

    new-instance v0, Lcom/android/compose/animation/scene/ElementKey;

    const/4 v5, 0x6

    const-string v2, "CommunalLockIcon"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/compose/animation/scene/ElementKey;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/android/compose/animation/scene/ElementScenePicker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/communal/ui/compose/Communal$Elements;->LockIcon:Lcom/android/compose/animation/scene/ElementKey;

    new-instance v0, Lcom/android/compose/animation/scene/ElementKey;

    const-string v8, "CommunalIndicationArea"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/compose/animation/scene/ElementKey;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/android/compose/animation/scene/ElementScenePicker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/communal/ui/compose/Communal$Elements;->IndicationArea:Lcom/android/compose/animation/scene/ElementKey;

    new-instance v0, Lcom/android/compose/animation/scene/ElementKey;

    const-string v2, "StatusBar"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/compose/animation/scene/ElementKey;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/android/compose/animation/scene/ElementScenePicker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/communal/ui/compose/Communal$Elements;->StatusBar:Lcom/android/compose/animation/scene/ElementKey;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
