.class public final synthetic Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator$$ExternalSyntheticLambda0;
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

    check-cast p1, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    check-cast p2, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    invoke-static {p1, p2}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->lambda$getBlurRegionsCopyForRT$2(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;)I

    move-result p1

    return p1
.end method
