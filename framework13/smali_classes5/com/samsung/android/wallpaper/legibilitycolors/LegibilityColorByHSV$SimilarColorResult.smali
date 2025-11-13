.class Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;
.super Ljava/lang/Object;
.source "LegibilityColorByHSV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimilarColorResult"
.end annotation


# instance fields
.field blacklist color:I

.field blacklist colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;-><init>()V

    return-void
.end method
