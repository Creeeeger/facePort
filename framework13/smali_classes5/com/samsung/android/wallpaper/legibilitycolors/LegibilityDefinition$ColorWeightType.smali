.class public final enum Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;
.super Ljava/lang/Enum;
.source "LegibilityDefinition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColorWeightType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;

.field public static final enum blacklist EACH:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;

.field public static final enum blacklist UNITY:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 21
    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;

    const-string v1, "EACH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;->EACH:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;

    new-instance v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;

    const-string v3, "UNITY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;->UNITY:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;->$VALUES:[Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 21
    const-class v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;
    .locals 1

    .line 21
    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;->$VALUES:[Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;

    invoke-virtual {v0}, [Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;

    return-object v0
.end method
