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
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 19
    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->NONE:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    new-instance v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    const-string v3, "DARK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->DARK:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    new-instance v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    const-string v5, "LIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->LIGHT:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    new-instance v5, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    const-string v7, "GRAY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->GRAY:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->$VALUES:[Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 19
    const-class v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;
    .locals 1

    .line 19
    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->$VALUES:[Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    invoke-virtual {v0}, [Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    return-object v0
.end method
