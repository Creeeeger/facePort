.class public final enum Lcom/samsung/android/settings/cube/Controllable$ControllableType;
.super Ljava/lang/Enum;
.source "Controllable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/cube/Controllable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ControllableType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/cube/Controllable$ControllableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/cube/Controllable$ControllableType;

.field public static final enum NEED_ALERT:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

.field public static final enum NEED_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

.field public static final enum NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;


# instance fields
.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 15
    new-instance v0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    const-string v1, "NO_INTERACTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/settings/cube/Controllable$ControllableType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    .line 16
    new-instance v1, Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    const-string v3, "NEED_ALERT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/settings/cube/Controllable$ControllableType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NEED_ALERT:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    .line 17
    new-instance v3, Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    const-string v5, "NEED_INTERACTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/settings/cube/Controllable$ControllableType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NEED_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 14
    sput-object v5, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->$VALUES:[Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->mType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 1

    .line 14
    const-class v0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 1

    .line 14
    sget-object v0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->$VALUES:[Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/cube/Controllable$ControllableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object v0
.end method
