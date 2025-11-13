.class public Lcom/samsung/android/desktopmode/DexCoreState;
.super Ljava/lang/Object;
.source "DexCoreState.java"

# interfaces
.implements Lcom/samsung/android/app/CoreState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopmode/DexCoreState$Diff;,
        Lcom/samsung/android/desktopmode/DexCoreState$Key;
    }
.end annotation


# static fields
.field public static blacklist DEX_FONT_SCALE:F = 0.0f

.field public static final blacklist TAG:Ljava/lang/String; = "DexCoreState"

.field private static blacklist sInstance:Lcom/samsung/android/desktopmode/DexCoreState;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/samsung/android/desktopmode/DexCoreState;->DEX_FONT_SCALE:F

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/samsung/android/desktopmode/DexCoreState;
    .locals 1

    .line 46
    sget-object v0, Lcom/samsung/android/desktopmode/DexCoreState;->sInstance:Lcom/samsung/android/desktopmode/DexCoreState;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/samsung/android/desktopmode/DexCoreState;

    invoke-direct {v0}, Lcom/samsung/android/desktopmode/DexCoreState;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopmode/DexCoreState;->sInstance:Lcom/samsung/android/desktopmode/DexCoreState;

    .line 49
    :cond_0
    sget-object v0, Lcom/samsung/android/desktopmode/DexCoreState;->sInstance:Lcom/samsung/android/desktopmode/DexCoreState;

    return-object v0
.end method

.method private blacklist updateDexFontScale(Landroid/os/Bundle;)I
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .line 67
    sget v0, Lcom/samsung/android/desktopmode/DexCoreState;->DEX_FONT_SCALE:F

    .line 68
    .local v0, "lastDexFontScale":F
    const-string v1, "dex_font_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    sput v1, Lcom/samsung/android/desktopmode/DexCoreState;->DEX_FONT_SCALE:F

    .line 69
    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public blacklist updateFrom(Landroid/os/Bundle;)I
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .line 54
    if-nez p1, :cond_0

    .line 55
    const/4 v0, 0x0

    return v0

    .line 58
    :cond_0
    const/4 v0, 0x0

    .line 60
    .local v0, "changes":I
    invoke-direct {p0, p1}, Lcom/samsung/android/desktopmode/DexCoreState;->updateDexFontScale(Landroid/os/Bundle;)I

    move-result v1

    or-int/2addr v0, v1

    .line 62
    return v0
.end method
