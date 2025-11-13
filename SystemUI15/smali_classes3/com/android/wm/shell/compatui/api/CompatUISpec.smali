.class public final Lcom/android/wm/shell/compatui/api/CompatUISpec;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final layout:Lcom/android/wm/shell/compatui/api/CompatUILayout;

.field public final lifecycle:Lcom/android/wm/shell/compatui/api/CompatUILifecyclePredicates;

.field public final log:Lkotlin/jvm/functions/Function1;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lcom/android/wm/shell/compatui/api/CompatUILifecyclePredicates;Lcom/android/wm/shell/compatui/api/CompatUILayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            "Ljava/lang/String;",
            "Lcom/android/wm/shell/compatui/api/CompatUILifecyclePredicates;",
            "Lcom/android/wm/shell/compatui/api/CompatUILayout;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/compatui/api/CompatUISpec;->name:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lcom/android/wm/shell/compatui/api/CompatUILifecyclePredicates;Lcom/android/wm/shell/compatui/api/CompatUILayout;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x1

    if-eqz p5, :cond_0

    sget-object p1, Lcom/android/wm/shell/compatui/api/CompatUISpec$1;->INSTANCE:Lcom/android/wm/shell/compatui/api/CompatUISpec$1;

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/compatui/api/CompatUISpec;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lcom/android/wm/shell/compatui/api/CompatUILifecyclePredicates;Lcom/android/wm/shell/compatui/api/CompatUILayout;)V

    return-void
.end method
