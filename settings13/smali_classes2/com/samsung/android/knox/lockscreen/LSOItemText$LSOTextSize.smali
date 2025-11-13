.class public final enum Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;
.super Ljava/lang/Enum;
.source "LSOItemText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/lockscreen/LSOItemText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LSOTextSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

.field public static final enum HUGE:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

.field public static final enum LARGE:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

.field public static final enum NORMAL:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

.field public static final enum SMALL:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

.field public static final enum TINY:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;


# instance fields
.field public final nativeVal:F


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 99
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    const-string v1, "TINY"

    const/4 v2, 0x0

    const v3, 0x3f59999a    # 0.85f

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->TINY:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    new-instance v1, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    const-string v3, "SMALL"

    const/4 v4, 0x1

    const v5, 0x3f6e147b    # 0.93f

    invoke-direct {v1, v3, v4, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;-><init>(Ljava/lang/String;IF)V

    sput-object v1, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->SMALL:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    new-instance v3, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    const-string v5, "NORMAL"

    const/4 v6, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v6, v7}, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;-><init>(Ljava/lang/String;IF)V

    sput-object v3, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->NORMAL:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    new-instance v5, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    const-string v7, "LARGE"

    const/4 v8, 0x3

    const v9, 0x3fa66666    # 1.3f

    invoke-direct {v5, v7, v8, v9}, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;-><init>(Ljava/lang/String;IF)V

    sput-object v5, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->LARGE:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    .line 100
    new-instance v7, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    const-string v9, "HUGE"

    const/4 v10, 0x4

    const v11, 0x3fe66666    # 1.8f

    invoke-direct {v7, v9, v10, v11}, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;-><init>(Ljava/lang/String;IF)V

    sput-object v7, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->HUGE:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 97
    sput-object v9, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->$VALUES:[Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 106
    iput p3, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->nativeVal:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;
    .locals 1

    .line 97
    const-class v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;
    .locals 1

    .line 97
    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->$VALUES:[Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    return-object v0
.end method
