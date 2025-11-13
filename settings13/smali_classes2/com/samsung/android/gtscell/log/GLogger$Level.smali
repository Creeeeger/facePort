.class public final enum Lcom/samsung/android/gtscell/log/GLogger$Level;
.super Ljava/lang/Enum;
.source "GLogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/log/GLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/gtscell/log/GLogger$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/gtscell/log/GLogger$Level;

.field public static final enum DEBUG:Lcom/samsung/android/gtscell/log/GLogger$Level;

.field public static final enum ERROR:Lcom/samsung/android/gtscell/log/GLogger$Level;

.field public static final enum INFO:Lcom/samsung/android/gtscell/log/GLogger$Level;

.field public static final enum WARNING:Lcom/samsung/android/gtscell/log/GLogger$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/gtscell/log/GLogger$Level;

    new-instance v1, Lcom/samsung/android/gtscell/log/GLogger$Level;

    const-string v2, "ERROR"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/log/GLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/log/GLogger$Level;->ERROR:Lcom/samsung/android/gtscell/log/GLogger$Level;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/log/GLogger$Level;

    const-string v2, "WARNING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/log/GLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/log/GLogger$Level;->WARNING:Lcom/samsung/android/gtscell/log/GLogger$Level;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/log/GLogger$Level;

    const-string v2, "INFO"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/log/GLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/log/GLogger$Level;->INFO:Lcom/samsung/android/gtscell/log/GLogger$Level;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/log/GLogger$Level;

    const-string v2, "DEBUG"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/log/GLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/log/GLogger$Level;->DEBUG:Lcom/samsung/android/gtscell/log/GLogger$Level;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/gtscell/log/GLogger$Level;->$VALUES:[Lcom/samsung/android/gtscell/log/GLogger$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/gtscell/log/GLogger$Level;
    .locals 1

    const-class v0, Lcom/samsung/android/gtscell/log/GLogger$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/gtscell/log/GLogger$Level;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/gtscell/log/GLogger$Level;
    .locals 1

    sget-object v0, Lcom/samsung/android/gtscell/log/GLogger$Level;->$VALUES:[Lcom/samsung/android/gtscell/log/GLogger$Level;

    invoke-virtual {v0}, [Lcom/samsung/android/gtscell/log/GLogger$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/gtscell/log/GLogger$Level;

    return-object v0
.end method
