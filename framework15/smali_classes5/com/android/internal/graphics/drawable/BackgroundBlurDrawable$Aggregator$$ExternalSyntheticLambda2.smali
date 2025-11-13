.class public final synthetic Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    iput-boolean p2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator$$ExternalSyntheticLambda2;->f$1:Z

    return-void
.end method


# virtual methods
.method public final whitelist onPreDraw()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    iget-boolean v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator$$ExternalSyntheticLambda2;->f$1:Z

    invoke-static {v0, v1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->$r8$lambda$fakUP9rZWOX-p9i4YorAFGO4Kn8(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;Z)Z

    move-result v0

    return v0
.end method
