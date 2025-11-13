.class public abstract Lcom/android/systemui/keyguard/ui/composable/section/LockSectionKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final LockIconElementKey:Lcom/android/compose/animation/scene/ElementKey;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, Lcom/android/compose/animation/scene/ElementKey;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "LockIcon"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/compose/animation/scene/ElementKey;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/android/compose/animation/scene/ElementScenePicker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v6, Lcom/android/systemui/keyguard/ui/composable/section/LockSectionKt;->LockIconElementKey:Lcom/android/compose/animation/scene/ElementKey;

    return-void
.end method
