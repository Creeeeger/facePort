.class Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;
.super Ljava/lang/Object;
.source "ColorPaletteExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ColorResultData"
.end annotation


# instance fields
.field blacklist dist:D

.field blacklist index:I

.field blacklist indexTarget:I


# direct methods
.method constructor blacklist <init>(IID)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;->index:I

    iput p2, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;->indexTarget:I

    iput-wide p3, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;->dist:D

    return-void
.end method
