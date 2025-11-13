.class public final synthetic Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    check-cast p2, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    invoke-static {p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->lambda$sortColorResult$2(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)I

    move-result p1

    return p1
.end method
