.class public interface abstract Lcom/android/systemui/demomode/DemoMode;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/demomode/DemoModeCommandReceiver;


# static fields
.field public static final COMMANDS:Ljava/util/List;

.field public static final NO_COMMANDS:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/demomode/DemoMode;->NO_COMMANDS:Ljava/util/List;

    const-string/jumbo v7, "status"

    const-string/jumbo v8, "volume"

    const-string v1, "bars"

    const-string v2, "battery"

    const-string v3, "clock"

    const-string v4, "network"

    const-string v5, "notifications"

    const-string v6, "operator"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/demomode/DemoMode;->COMMANDS:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public demoCommands()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/android/systemui/demomode/DemoMode;->NO_COMMANDS:Ljava/util/List;

    return-object p0
.end method
