.class public final enum Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;
.super Ljava/lang/Enum;
.source "LegibilityDefinition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

.field public static final enum blacklist DARK:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

.field public static final enum blacklist GRAY:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

.field public static final enum blacklist LIGHT:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

.field public static final enum blacklist NONE:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;
    .locals 4

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->NONE:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->DARK:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    sget-object v2, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->LIGHT:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    sget-object v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->GRAY:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->NONE:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    const-string v1, "DARK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->DARK:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    const-string v1, "LIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->LIGHT:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    const-string v1, "GRAY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->GRAY:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    invoke-static {}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->$values()[Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->$VALUES:[Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

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

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;
    .locals 1

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->$VALUES:[Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    invoke-virtual {v0}, [Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    return-object v0
.end method
