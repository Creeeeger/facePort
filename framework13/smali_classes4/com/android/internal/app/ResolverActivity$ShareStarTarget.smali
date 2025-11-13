.class Lcom/android/internal/app/ResolverActivity$ShareStarTarget;
.super Ljava/lang/Object;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShareStarTarget"
.end annotation


# instance fields
.field public blacklist mChooserTarget:Landroid/service/chooser/ChooserTarget;

.field public blacklist mShareStarScore:F


# direct methods
.method public constructor blacklist <init>(Landroid/service/chooser/ChooserTarget;)V
    .locals 1
    .param p1, "chooserTarget"    # Landroid/service/chooser/ChooserTarget;

    .line 3281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3278
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$ShareStarTarget;->mShareStarScore:F

    .line 3282
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ShareStarTarget;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    .line 3283
    return-void
.end method
