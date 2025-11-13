.class public abstract Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;
.super Ljava/lang/Object;
.source "CocktailBarManagerInternal.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist onSystemBarAppearanceChanged(II[Lcom/android/internal/view/AppearanceRegion;)V
.end method

.method public abstract blacklist topAppWindowChanged(IZZ)V
.end method

.method public abstract blacklist turnOffWakupCocktailBarFromPowerManager(ILjava/lang/String;)V
.end method

.method public abstract blacklist updateSysfsGripDisableFromWindowManager(Z)V
.end method

.method public abstract blacklist wakupCocktailBarFromWindowManager(ZII)V
.end method
