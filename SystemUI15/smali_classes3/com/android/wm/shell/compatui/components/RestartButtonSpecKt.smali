.class public abstract Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final RestartButtonSpec:Lcom/android/wm/shell/compatui/api/CompatUISpec;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v7, Lcom/android/wm/shell/compatui/api/CompatUISpec;

    new-instance v6, Lcom/android/wm/shell/compatui/api/CompatUILifecyclePredicates;

    sget-object v1, Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$1;->INSTANCE:Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$1;

    sget-object v2, Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$2;->INSTANCE:Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$2;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/compatui/api/CompatUILifecyclePredicates;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Lcom/android/wm/shell/compatui/api/CompatUILayout;

    sget-object v11, Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$3;->INSTANCE:Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$3;

    sget-object v12, Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$4;->INSTANCE:Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$4;

    sget-object v13, Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$5;->INSTANCE:Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$5;

    const/16 v15, 0x22

    const/16 v16, 0x0

    const/16 v9, 0x271a

    const/4 v10, 0x0

    const/4 v14, 0x0

    move-object v8, v4

    invoke-direct/range {v8 .. v16}, Lcom/android/wm/shell/compatui/api/CompatUILayout;-><init>(IILkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    const-string/jumbo v2, "restartButton"

    move-object v0, v7

    move-object v3, v6

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/compatui/api/CompatUISpec;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lcom/android/wm/shell/compatui/api/CompatUILifecyclePredicates;Lcom/android/wm/shell/compatui/api/CompatUILayout;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v7, Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt;->RestartButtonSpec:Lcom/android/wm/shell/compatui/api/CompatUISpec;

    return-void
.end method
