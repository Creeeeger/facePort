.class public final enum Lcom/samsung/android/settings/cube/Controllable$ControllableType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/cube/Controllable$ControllableType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/cube/Controllable$ControllableType;

.field public static final enum NEED_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

.field public static final enum NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;


# instance fields
.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    const-string v1, "NO_INTERACTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/settings/cube/Controllable$ControllableType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    new-instance v1, Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    const-string v2, "NEED_ALERT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/samsung/android/settings/cube/Controllable$ControllableType;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    const-string v3, "NEED_INTERACTION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/samsung/android/settings/cube/Controllable$ControllableType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NEED_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->$VALUES:[Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->mType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->$VALUES:[Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/cube/Controllable$ControllableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object v0
.end method
