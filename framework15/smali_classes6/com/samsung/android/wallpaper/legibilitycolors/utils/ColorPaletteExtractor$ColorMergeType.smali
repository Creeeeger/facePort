.class public final enum Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;
.super Ljava/lang/Enum;
.source "ColorPaletteExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColorMergeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

.field public static final enum blacklist A:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

.field public static final enum blacklist B:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

.field public static final enum blacklist MIX:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;
    .locals 3

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->MIX:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->A:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    sget-object v2, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->B:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    const-string v1, "MIX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->MIX:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    const-string v1, "A"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->A:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    const-string v1, "B"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->B:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    invoke-static {}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->$values()[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->$VALUES:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

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

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;
    .locals 1

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->$VALUES:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    invoke-virtual {v0}, [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    return-object v0
.end method
