.class synthetic Lcom/samsung/android/allshare/ItemImpl$2;
.super Ljava/lang/Object;
.source "ItemImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/ItemImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$com$samsung$android$allshare$Item$MediaType:[I

.field static final synthetic blacklist $SwitchMap$com$samsung$android$allshare$ItemCreator$ConstructorType:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 6

    .line 295
    invoke-static {}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->values()[Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/allshare/ItemImpl$2;->$SwitchMap$com$samsung$android$allshare$ItemCreator$ConstructorType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->LOCAL_CONTENT:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    invoke-virtual {v2}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/samsung/android/allshare/ItemImpl$2;->$SwitchMap$com$samsung$android$allshare$ItemCreator$ConstructorType:[I

    sget-object v3, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->MEDIA_SERVER:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    invoke-virtual {v3}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/samsung/android/allshare/ItemImpl$2;->$SwitchMap$com$samsung$android$allshare$ItemCreator$ConstructorType:[I

    sget-object v4, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->WEB_CONTENT:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    invoke-virtual {v4}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    :goto_2
    :try_start_3
    sget-object v3, Lcom/samsung/android/allshare/ItemImpl$2;->$SwitchMap$com$samsung$android$allshare$ItemCreator$ConstructorType:[I

    sget-object v4, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    invoke-virtual {v4}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    .line 172
    :goto_3
    invoke-static {}, Lcom/samsung/android/allshare/Item$MediaType;->values()[Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/samsung/android/allshare/ItemImpl$2;->$SwitchMap$com$samsung$android$allshare$Item$MediaType:[I

    :try_start_4
    sget-object v4, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_AUDIO:Lcom/samsung/android/allshare/Item$MediaType;

    invoke-virtual {v4}, Lcom/samsung/android/allshare/Item$MediaType;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/samsung/android/allshare/ItemImpl$2;->$SwitchMap$com$samsung$android$allshare$Item$MediaType:[I

    sget-object v3, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_IMAGE:Lcom/samsung/android/allshare/Item$MediaType;

    invoke-virtual {v3}, Lcom/samsung/android/allshare/Item$MediaType;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    :try_start_6
    sget-object v0, Lcom/samsung/android/allshare/ItemImpl$2;->$SwitchMap$com$samsung$android$allshare$Item$MediaType:[I

    sget-object v1, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_VIDEO:Lcom/samsung/android/allshare/Item$MediaType;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/Item$MediaType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    :goto_6
    return-void
.end method
