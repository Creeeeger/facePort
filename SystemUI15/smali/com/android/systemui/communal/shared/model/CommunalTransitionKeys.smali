.class public final Lcom/android/systemui/communal/shared/model/CommunalTransitionKeys;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final FromEditMode:Lcom/android/compose/animation/scene/TransitionKey;

.field public static final INSTANCE:Lcom/android/systemui/communal/shared/model/CommunalTransitionKeys;

.field public static final SimpleFade:Lcom/android/compose/animation/scene/TransitionKey;

.field public static final ToEditMode:Lcom/android/compose/animation/scene/TransitionKey;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/communal/shared/model/CommunalTransitionKeys;

    invoke-direct {v0}, Lcom/android/systemui/communal/shared/model/CommunalTransitionKeys;-><init>()V

    sput-object v0, Lcom/android/systemui/communal/shared/model/CommunalTransitionKeys;->INSTANCE:Lcom/android/systemui/communal/shared/model/CommunalTransitionKeys;

    new-instance v0, Lcom/android/compose/animation/scene/TransitionKey;

    const-string v1, "SimpleFade"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/android/compose/animation/scene/TransitionKey;-><init>(Ljava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/communal/shared/model/CommunalTransitionKeys;->SimpleFade:Lcom/android/compose/animation/scene/TransitionKey;

    new-instance v0, Lcom/android/compose/animation/scene/TransitionKey;

    const-string v1, "ToEditMode"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/android/compose/animation/scene/TransitionKey;-><init>(Ljava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/communal/shared/model/CommunalTransitionKeys;->ToEditMode:Lcom/android/compose/animation/scene/TransitionKey;

    new-instance v0, Lcom/android/compose/animation/scene/TransitionKey;

    const-string v1, "FromEditMode"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/android/compose/animation/scene/TransitionKey;-><init>(Ljava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/communal/shared/model/CommunalTransitionKeys;->FromEditMode:Lcom/android/compose/animation/scene/TransitionKey;

    new-instance v0, Lcom/android/compose/animation/scene/TransitionKey;

    const-string v1, "Immediately"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/android/compose/animation/scene/TransitionKey;-><init>(Ljava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
