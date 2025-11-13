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
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 567
    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    const-string v1, "MIX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->MIX:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    new-instance v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    const-string v3, "A"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->A:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    new-instance v3, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    const-string v5, "B"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->B:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    .line 566
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->$VALUES:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 566
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 566
    const-class v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;
    .locals 1

    .line 566
    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->$VALUES:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    invoke-virtual {v0}, [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    return-object v0
.end method
