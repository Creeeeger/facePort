.class public Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;
.super Ljava/lang/Object;
.source "LegibilityAutoDim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoDimResult"
.end annotation


# instance fields
.field public blacklist color:I

.field public blacklist maxComplexity:F

.field public blacklist opacity:F

.field public blacklist validMaxComplexity:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
