.class final Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$2;

    invoke-direct {v0}, Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$2;-><init>()V

    sput-object v0, Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$2;->INSTANCE:Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/wm/shell/compatui/api/CompatUIInfo;

    check-cast p2, Lcom/android/wm/shell/compatui/api/CompatUISharedState;

    invoke-static {p3}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    iget-object p0, p1, Lcom/android/wm/shell/compatui/api/CompatUIInfo;->taskInfo:Landroid/app/TaskInfo;

    iget-object p0, p0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isTopActivityInSizeCompat()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
