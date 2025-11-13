.class public final Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter$State$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $$INSTANCE:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter$State$Companion;

.field public static final QQS:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter$State$Expanding;

.field public static final QS:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter$State$Expanding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter$State$Companion;

    invoke-direct {v0}, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter$State$Companion;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter$State$Companion;->$$INSTANCE:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter$State$Companion;

    new-instance v0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter$State$Expanding;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter$State$Expanding;-><init>(F)V

    new-instance v0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter$State$Expanding;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter$State$Expanding;-><init>(F)V

    sput-object v0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter$State$Companion;->QS:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter$State$Expanding;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
