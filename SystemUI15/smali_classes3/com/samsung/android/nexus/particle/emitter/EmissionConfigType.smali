.class public final enum Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;

.field public static final enum APPLY_PARENT_ANGULAR_VELOCITY:Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;

.field public static final enum APPLY_PARENT_POS_VECTOR:Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;

.field public static final enum APPLY_PARENT_ROTATION_TO_SHAPE:Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;


# instance fields
.field final defaultValue:Z

.field idx:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;

    const-string v1, "APPLY_PARENT_ANGULAR_VELOCITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;->APPLY_PARENT_ANGULAR_VELOCITY:Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;

    new-instance v1, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;

    const-string v2, "APPLY_PARENT_POS_VECTOR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;->APPLY_PARENT_POS_VECTOR:Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;

    new-instance v2, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;

    const-string v3, "APPLY_PARENT_ROTATION_TO_SHAPE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;->APPLY_PARENT_ROTATION_TO_SHAPE:Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;->$VALUES:[Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;

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

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;->idx:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;->defaultValue:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;->idx:I

    iput-boolean p3, p0, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;->defaultValue:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;
    .locals 1

    const-class v0, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;
    .locals 1

    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;->$VALUES:[Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;

    invoke-virtual {v0}, [Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/nexus/particle/emitter/EmissionConfigType;

    return-object v0
.end method
