.class final enum Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;
.super Ljava/lang/Enum;
.source "MCInputEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multicontrol/MCInputEventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;

.field public static final enum blacklist BOTTOM:Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;

.field public static final enum blacklist LEFT:Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;

.field public static final enum blacklist RIGHT:Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;

.field public static final enum blacklist TOP:Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;
    .locals 4

    sget-object v0, Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;->RIGHT:Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;

    sget-object v1, Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;->LEFT:Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;

    sget-object v2, Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;->TOP:Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;

    sget-object v3, Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;->BOTTOM:Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;

    const-string v1, "RIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;->RIGHT:Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;

    new-instance v0, Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;

    const-string v1, "LEFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;->LEFT:Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;

    new-instance v0, Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;

    const-string v1, "TOP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;->TOP:Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;

    new-instance v0, Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;

    const-string v1, "BOTTOM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;->BOTTOM:Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;

    invoke-static {}, Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;->$values()[Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;->$VALUES:[Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;
    .locals 1

    sget-object v0, Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;->$VALUES:[Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;

    invoke-virtual {v0}, [Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;

    return-object v0
.end method
