.class public final enum Landroid/audio/policy/configuration/V7_0/EngineSuffix;
.super Ljava/lang/Enum;
.source "EngineSuffix.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/audio/policy/configuration/V7_0/EngineSuffix;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/audio/policy/configuration/V7_0/EngineSuffix;

.field public static final enum blacklist _default:Landroid/audio/policy/configuration/V7_0/EngineSuffix;

.field public static final enum blacklist configurable:Landroid/audio/policy/configuration/V7_0/EngineSuffix;


# instance fields
.field private final blacklist rawName:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Landroid/audio/policy/configuration/V7_0/EngineSuffix;
    .locals 2

    sget-object v0, Landroid/audio/policy/configuration/V7_0/EngineSuffix;->_default:Landroid/audio/policy/configuration/V7_0/EngineSuffix;

    sget-object v1, Landroid/audio/policy/configuration/V7_0/EngineSuffix;->configurable:Landroid/audio/policy/configuration/V7_0/EngineSuffix;

    filled-new-array {v0, v1}, [Landroid/audio/policy/configuration/V7_0/EngineSuffix;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    new-instance v0, Landroid/audio/policy/configuration/V7_0/EngineSuffix;

    const/4 v1, 0x0

    const-string v2, "default"

    const-string v3, "_default"

    invoke-direct {v0, v3, v1, v2}, Landroid/audio/policy/configuration/V7_0/EngineSuffix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/EngineSuffix;->_default:Landroid/audio/policy/configuration/V7_0/EngineSuffix;

    new-instance v0, Landroid/audio/policy/configuration/V7_0/EngineSuffix;

    const-string v1, "configurable"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/EngineSuffix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/EngineSuffix;->configurable:Landroid/audio/policy/configuration/V7_0/EngineSuffix;

    invoke-static {}, Landroid/audio/policy/configuration/V7_0/EngineSuffix;->$values()[Landroid/audio/policy/configuration/V7_0/EngineSuffix;

    move-result-object v0

    sput-object v0, Landroid/audio/policy/configuration/V7_0/EngineSuffix;->$VALUES:[Landroid/audio/policy/configuration/V7_0/EngineSuffix;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroid/audio/policy/configuration/V7_0/EngineSuffix;->rawName:Ljava/lang/String;

    return-void
.end method

.method static blacklist fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/EngineSuffix;
    .locals 5

    invoke-static {}, Landroid/audio/policy/configuration/V7_0/EngineSuffix;->values()[Landroid/audio/policy/configuration/V7_0/EngineSuffix;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/audio/policy/configuration/V7_0/EngineSuffix;->getRawName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/EngineSuffix;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Landroid/audio/policy/configuration/V7_0/EngineSuffix;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/audio/policy/configuration/V7_0/EngineSuffix;

    return-object v0
.end method

.method public static blacklist values()[Landroid/audio/policy/configuration/V7_0/EngineSuffix;
    .locals 1

    sget-object v0, Landroid/audio/policy/configuration/V7_0/EngineSuffix;->$VALUES:[Landroid/audio/policy/configuration/V7_0/EngineSuffix;

    invoke-virtual {v0}, [Landroid/audio/policy/configuration/V7_0/EngineSuffix;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/audio/policy/configuration/V7_0/EngineSuffix;

    return-object v0
.end method


# virtual methods
.method public blacklist getRawName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/EngineSuffix;->rawName:Ljava/lang/String;

    return-object v0
.end method
