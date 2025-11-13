.class public enum Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

.field public static final enum CHECK_CHILD_ACCOUNT:Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

.field public static final enum START_CHECKING:Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

    const-string v1, "START_CHECKING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;->START_CHECKING:Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

    new-instance v1, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence$1;

    invoke-direct {v1}, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence$1;-><init>()V

    new-instance v2, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence$2;

    invoke-direct {v2}, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence$2;-><init>()V

    new-instance v3, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence$3;

    invoke-direct {v3}, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence$3;-><init>()V

    new-instance v4, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence$4;

    invoke-direct {v4}, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence$4;-><init>()V

    sput-object v4, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;->CHECK_CHILD_ACCOUNT:Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

    new-instance v5, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

    const-string v6, "END_CHECKING"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array/range {v0 .. v5}, [Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;->$VALUES:[Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;->$VALUES:[Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

    return-object v0
.end method


# virtual methods
.method public check(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public resolveCondition(Landroid/app/Activity;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
