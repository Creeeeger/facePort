.class synthetic Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic$1;
.super Ljava/lang/Object;
.source "EasingQuintic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$com$samsung$android$wallpaper$legibilitycolors$utils$interpolater$IEasing$EEasing:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 41
    invoke-static {}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;->values()[Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic$1;->$SwitchMap$com$samsung$android$wallpaper$legibilitycolors$utils$interpolater$IEasing$EEasing:[I

    :try_start_0
    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;->In:Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;

    invoke-virtual {v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic$1;->$SwitchMap$com$samsung$android$wallpaper$legibilitycolors$utils$interpolater$IEasing$EEasing:[I

    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;->Out:Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;

    invoke-virtual {v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic$1;->$SwitchMap$com$samsung$android$wallpaper$legibilitycolors$utils$interpolater$IEasing$EEasing:[I

    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;->InOut:Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;

    invoke-virtual {v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic$1;->$SwitchMap$com$samsung$android$wallpaper$legibilitycolors$utils$interpolater$IEasing$EEasing:[I

    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;->OutIn:Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;

    invoke-virtual {v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    return-void
.end method
