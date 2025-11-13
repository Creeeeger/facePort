.class public final enum Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;
.super Ljava/lang/Enum;
.source "IEasing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EEasing"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;

.field public static final enum blacklist In:Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;

.field public static final enum blacklist InOut:Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;

.field public static final enum blacklist None:Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;

.field public static final enum blacklist Out:Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;

.field public static final enum blacklist OutIn:Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    .line 8
    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;->None:Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;

    new-instance v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;

    const-string v3, "In"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;->In:Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;

    new-instance v3, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;

    const-string v5, "InOut"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;->InOut:Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;

    new-instance v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;

    const-string v7, "Out"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;->Out:Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;

    new-instance v7, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;

    const-string v9, "OutIn"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;->OutIn:Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;->$VALUES:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 8
    const-class v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;
    .locals 1

    .line 8
    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;->$VALUES:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;

    invoke-virtual {v0}, [Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;

    return-object v0
.end method
