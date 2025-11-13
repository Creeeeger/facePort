.class public final enum Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;
.super Ljava/lang/Enum;
.source "ColorPaletteExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColorSpace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

.field static blacklist ColorSpaceIndex:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

.field public static final enum blacklist HSV:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

.field public static final enum blacklist HUE:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

.field public static final enum blacklist LAB:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

.field public static final enum blacklist RGB:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 17
    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    const-string v1, "RGB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->RGB:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    new-instance v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    const-string v3, "HSV"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->HSV:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    new-instance v3, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    const-string v5, "LAB"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->LAB:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    new-instance v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    const-string v7, "HUE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->HUE:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    .line 16
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->$VALUES:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    .line 18
    new-array v5, v8, [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->ColorSpaceIndex:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 16
    const-class v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;
    .locals 1

    .line 16
    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->$VALUES:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    invoke-virtual {v0}, [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    return-object v0
.end method
