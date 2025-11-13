.class public final synthetic Lcom/samsung/android/knox/lockscreen/LSOTextView$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/lockscreen/LSOTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$samsung$android$knox$lockscreen$LSOItemText$LSOTextSize:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->values()[Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/knox/lockscreen/LSOTextView$1;->$SwitchMap$com$samsung$android$knox$lockscreen$LSOItemText$LSOTextSize:[I

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->TINY:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOTextView$1;->$SwitchMap$com$samsung$android$knox$lockscreen$LSOItemText$LSOTextSize:[I

    sget-object v1, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->SMALL:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOTextView$1;->$SwitchMap$com$samsung$android$knox$lockscreen$LSOItemText$LSOTextSize:[I

    sget-object v1, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->NORMAL:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOTextView$1;->$SwitchMap$com$samsung$android$knox$lockscreen$LSOItemText$LSOTextSize:[I

    sget-object v1, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->LARGE:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOTextView$1;->$SwitchMap$com$samsung$android$knox$lockscreen$LSOItemText$LSOTextSize:[I

    sget-object v1, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->HUGE:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
