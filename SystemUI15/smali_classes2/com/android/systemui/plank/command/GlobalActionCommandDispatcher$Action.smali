.class public final enum Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

.field public static final enum add_condition:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

.field public static final enum add_feature:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

.field public static final enum hide:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

.field public static final enum remove_condition:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

.field public static final enum remove_feature:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

.field public static final enum reset:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

.field public static final enum show:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

.field public static final enum unknown:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    const-string/jumbo v1, "show"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;->show:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    new-instance v1, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    const-string v2, "hide"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;->hide:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    new-instance v2, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    const-string v3, "add_feature"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;->add_feature:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    new-instance v3, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    const-string v4, "remove_feature"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;->remove_feature:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    new-instance v4, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    const-string v5, "add_condition"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;->add_condition:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    new-instance v5, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    const-string v6, "remove_condition"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;->remove_condition:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    new-instance v6, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    const-string v7, "reset"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;->reset:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    new-instance v7, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    const-string/jumbo v8, "unknown"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;->unknown:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    filled-new-array/range {v0 .. v7}, [Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;->$VALUES:[Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;
    .locals 1

    const-class v0, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;
    .locals 1

    sget-object v0, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;->$VALUES:[Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    return-object v0
.end method
