.class public final Lcom/samsung/android/gtscell/data/GtsExpressionRaw;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gtscell/data/GtsExpressionRaw$Creator;,
        Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;,
        Lcom/samsung/android/gtscell/data/GtsExpressionRaw$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u001b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 <2\u00020\u0001:\u0002<=Be\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\t\u0012\u0014\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010J\t\u0010\"\u001a\u00020\u0003H\u00c6\u0003J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J\t\u0010$\u001a\u00020\u0003H\u00c6\u0003J\t\u0010%\u001a\u00020\u0007H\u00c6\u0003J\u000f\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00070\tH\u00c6\u0003J\u0011\u0010\'\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\tH\u00c6\u0003J\u0017\u0010(\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\rH\u00c6\u0003J\t\u0010)\u001a\u00020\u000fH\u00c6\u0003Ju\u0010*\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t2\u0010\u0008\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\t2\u0016\u0008\u0002\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fH\u00c6\u0001J\t\u0010+\u001a\u00020\u000fH\u00d6\u0001J\u0013\u0010,\u001a\u00020\u00122\u0008\u0010-\u001a\u0004\u0018\u00010.H\u00d6\u0003J\u0006\u0010/\u001a\u000200J\t\u00101\u001a\u00020\u000fH\u00d6\u0001J\u0006\u00102\u001a\u000203J\t\u00104\u001a\u00020\u0003H\u00d6\u0001J\u0019\u00105\u001a\u0002062\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020\u000fH\u00d6\u0001J\u000c\u0010:\u001a\u00020;*\u00020\u0007H\u0002R\u0011\u0010\u0011\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R$\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u001e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001cR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001aR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001aR\u0016\u0010\u000e\u001a\u00020\u000f8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!\u00a8\u0006>"
    }
    d2 = {
        "Lcom/samsung/android/gtscell/data/GtsExpressionRaw;",
        "Landroid/os/Parcelable;",
        "itemKey",
        "",
        "title",
        "subTitle",
        "expression",
        "Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;",
        "subExpressions",
        "",
        "storeContents",
        "Lcom/samsung/android/gtscell/data/GtsStoreContents;",
        "extra",
        "",
        "version",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;Ljava/util/List;Ljava/util/List;Ljava/util/Map;I)V",
        "disabled",
        "",
        "getDisabled",
        "()Z",
        "getExpression",
        "()Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;",
        "getExtra",
        "()Ljava/util/Map;",
        "getItemKey",
        "()Ljava/lang/String;",
        "getStoreContents",
        "()Ljava/util/List;",
        "getSubExpressions",
        "getSubTitle",
        "getTitle",
        "getVersion",
        "()I",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "describeContents",
        "equals",
        "other",
        "",
        "getTypedExpression",
        "Lcom/samsung/android/gtscell/data/GtsExpression;",
        "hashCode",
        "toBuilder",
        "Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "toGtsExpressionValue",
        "Lcom/samsung/android/gtscell/data/GtsExpressionValue;",
        "Companion",
        "GtsExpressionData",
        "gtscell_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation

.annotation build Lkotlinx/android/parcel/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final Companion:Lcom/samsung/android/gtscell/data/GtsExpressionRaw$Companion;

.field private static final EMPTY:Lcom/samsung/android/gtscell/data/GtsExpressionRaw;

.field public static final EXPRESSION_KEY_DISABLED:Ljava/lang/String; = "exp_disabled"

.field public static final EXPRESSION_KEY_ENLARGEABLE:Ljava/lang/String; = "exp_enlargeable"

.field public static final EXPRESSION_KEY_MAX:Ljava/lang/String; = "exp_max"

.field public static final EXPRESSION_KEY_MIN:Ljava/lang/String; = "exp_min"

.field public static final EXPRESSION_KEY_NAME:Ljava/lang/String; = "exp_name"

.field public static final EXPRESSION_KEY_STEP:Ljava/lang/String; = "exp_step"

.field public static final EXPRESSION_KEY_VALUE:Ljava/lang/String; = "exp_value"

.field public static final VERSION:I = 0x1


# instance fields
.field private final expression:Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "item_expression"
    .end annotation
.end field

.field private final extra:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "item_expression_extra"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final itemKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "item_key"
    .end annotation
.end field

.field private final storeContents:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "item_store_contents"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsStoreContents;",
            ">;"
        }
    .end annotation
.end field

.field private final subExpressions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "item_sub_expressions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;",
            ">;"
        }
    .end annotation
.end field

.field private final subTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "item_expression_sub_title"
    .end annotation
.end field

.field private final title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "item_expression_title"
    .end annotation
.end field

.field private final version:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->Companion:Lcom/samsung/android/gtscell/data/GtsExpressionRaw$Companion;

    new-instance v0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;

    sget-object v1, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->Companion:Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData$Companion;

    invoke-virtual {v1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData$Companion;->getEMPTY()Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    move-result-object v6

    sget-object v7, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const/16 v11, 0x80

    const/4 v12, 0x0

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->EMPTY:Lcom/samsung/android/gtscell/data/GtsExpressionRaw;

    new-instance v0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$Creator;

    invoke-direct {v0}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$Creator;-><init>()V

    sput-object v0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;Ljava/util/List;Ljava/util/List;Ljava/util/Map;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsStoreContents;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "itemKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "subTitle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expression"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "subExpressions"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->itemKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->subTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->expression:Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    iput-object p5, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->subExpressions:Ljava/util/List;

    iput-object p6, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->storeContents:Ljava/util/List;

    iput-object p7, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->extra:Ljava/util/Map;

    iput p8, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->version:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    move/from16 v0, p9

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v9, v0

    goto :goto_0

    :cond_0
    move/from16 v9, p8

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;Ljava/util/List;Ljava/util/List;Ljava/util/Map;I)V

    return-void
.end method

.method public static final synthetic access$getEMPTY$cp()Lcom/samsung/android/gtscell/data/GtsExpressionRaw;
    .locals 1

    sget-object v0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->EMPTY:Lcom/samsung/android/gtscell/data/GtsExpressionRaw;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/samsung/android/gtscell/data/GtsExpressionRaw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/lang/Object;)Lcom/samsung/android/gtscell/data/GtsExpressionRaw;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->itemKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->title:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->subTitle:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->expression:Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->subExpressions:Ljava/util/List;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->storeContents:Ljava/util/List;

    goto :goto_5

    :cond_5
    move-object v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->extra:Ljava/util/Map;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget v1, v0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->version:I

    goto :goto_7

    :cond_7
    move/from16 v1, p8

    :goto_7
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;Ljava/util/List;Ljava/util/List;Ljava/util/Map;I)Lcom/samsung/android/gtscell/data/GtsExpressionRaw;

    move-result-object v0

    return-object v0
.end method

.method private final toGtsExpressionValue(Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;)Lcom/samsung/android/gtscell/data/GtsExpressionValue;
    .locals 13

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpressionType()Lcom/samsung/android/gtscell/data/GtsExpressionType;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v0, "exp_enlargeable"

    const-string v1, ""

    const-string v2, "exp_name"

    const-string v3, "exp_max"

    const-string v4, "exp_min"

    const-string v5, "exp_value"

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_0

    :try_start_1
    sget-object p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Empty;->INSTANCE:Lcom/samsung/android/gtscell/data/GtsExpressionValue$Empty;

    goto/16 :goto_8

    :pswitch_0
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v6

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v6

    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    move-object v1, p1

    :cond_3
    new-instance p1, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;

    invoke-direct {p1, p0, v0, v6, v1}, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;-><init>(IIILjava/lang/String;)V

    :goto_2
    move-object p0, p1

    goto/16 :goto_8

    :pswitch_1
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_4

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    move v8, p0

    goto :goto_3

    :cond_4
    move v8, v6

    :goto_3
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_5

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    move v9, p0

    goto :goto_4

    :cond_5
    move v9, v6

    :goto_4
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_6

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    move v10, p0

    goto :goto_5

    :cond_6
    move v10, v6

    :goto_5
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object p0

    const-string v0, "exp_step"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_7

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :cond_7
    move v11, v6

    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_8

    move-object v12, p0

    goto :goto_6

    :cond_8
    move-object v12, v1

    :goto_6
    new-instance p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Level;

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Level;-><init>(IIIILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_2
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_a

    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_9

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_9
    new-instance p1, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeUrl;

    invoke-direct {p1, p0, v6}, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeUrl;-><init>(Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_a
    sget-object p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Empty;->INSTANCE:Lcom/samsung/android/gtscell/data/GtsExpressionValue$Empty;

    goto/16 :goto_8

    :pswitch_3
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_b

    new-instance p1, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeUri;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "Uri.parse(uri)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeUri;-><init>(Landroid/net/Uri;Z)V

    goto/16 :goto_2

    :cond_b
    sget-object p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Empty;->INSTANCE:Lcom/samsung/android/gtscell/data/GtsExpressionValue$Empty;

    goto/16 :goto_8

    :pswitch_4
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_d

    invoke-static {p0}, Lcom/samsung/android/gtscell/utils/GtsCellExKt;->toBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_c

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_c
    new-instance p1, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Icon;

    invoke-direct {p1, p0, v6}, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Icon;-><init>(Landroid/graphics/Bitmap;Z)V

    goto/16 :goto_2

    :cond_d
    sget-object p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Empty;->INSTANCE:Lcom/samsung/android/gtscell/data/GtsExpressionValue$Empty;

    goto :goto_8

    :pswitch_5
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p0, :cond_e

    :try_start_2
    invoke-static {p0}, Lcom/samsung/android/gtscell/data/GtsMimeType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsMimeType;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    :try_start_3
    sget-object p0, Lcom/samsung/android/gtscell/data/GtsMimeType;->UNKNOWN:Lcom/samsung/android/gtscell/data/GtsMimeType;

    :goto_7
    new-instance p1, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeIcon;

    invoke-direct {p1, p0}, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeIcon;-><init>(Lcom/samsung/android/gtscell/data/GtsMimeType;)V

    goto/16 :goto_2

    :cond_e
    sget-object p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Empty;->INSTANCE:Lcom/samsung/android/gtscell/data/GtsExpressionValue$Empty;

    goto :goto_8

    :pswitch_6
    new-instance p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeIcon;

    sget-object p1, Lcom/samsung/android/gtscell/data/GtsMimeType;->UNKNOWN:Lcom/samsung/android/gtscell/data/GtsMimeType;

    invoke-direct {p0, p1}, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeIcon;-><init>(Lcom/samsung/android/gtscell/data/GtsMimeType;)V

    goto :goto_8

    :pswitch_7
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_f

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :cond_f
    new-instance p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Color;

    invoke-direct {p0, v6}, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Color;-><init>(I)V

    goto :goto_8

    :pswitch_8
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_10

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_10
    new-instance p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$OnOff;

    invoke-direct {p0, v6}, Lcom/samsung/android/gtscell/data/GtsExpressionValue$OnOff;-><init>(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_8

    :catch_1
    sget-object p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Empty;->INSTANCE:Lcom/samsung/android/gtscell/data/GtsExpressionValue$Empty;

    :goto_8
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->itemKey:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->subTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->expression:Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    return-object p0
.end method

.method public final component5()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->subExpressions:Ljava/util/List;

    return-object p0
.end method

.method public final component6()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsStoreContents;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->storeContents:Ljava/util/List;

    return-object p0
.end method

.method public final component7()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->extra:Ljava/util/Map;

    return-object p0
.end method

.method public final component8()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->version:I

    return p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;Ljava/util/List;Ljava/util/List;Ljava/util/Map;I)Lcom/samsung/android/gtscell/data/GtsExpressionRaw;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsStoreContents;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/samsung/android/gtscell/data/GtsExpressionRaw;"
        }
    .end annotation

    const-string v0, "itemKey"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "subTitle"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expression"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "subExpressions"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;

    move-object v1, v0

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;Ljava/util/List;Ljava/util/List;Ljava/util/Map;I)V

    return-object v0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->itemKey:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->itemKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->title:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->subTitle:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->subTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->expression:Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    iget-object v1, p1, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->expression:Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->subExpressions:Ljava/util/List;

    iget-object v1, p1, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->subExpressions:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->storeContents:Ljava/util/List;

    iget-object v1, p1, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->storeContents:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->extra:Ljava/util/Map;

    iget-object v1, p1, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->extra:Ljava/util/Map;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->version:I

    iget p1, p1, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->version:I

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getDisabled()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->extra:Ljava/util/Map;

    if-eqz p0, :cond_0

    const-string v0, "exp_disabled"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getExpression()Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->expression:Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    return-object p0
.end method

.method public final getExtra()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->extra:Ljava/util/Map;

    return-object p0
.end method

.method public final getItemKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->itemKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getStoreContents()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsStoreContents;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->storeContents:Ljava/util/List;

    return-object p0
.end method

.method public final getSubExpressions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->subExpressions:Ljava/util/List;

    return-object p0
.end method

.method public final getSubTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->subTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getTypedExpression()Lcom/samsung/android/gtscell/data/GtsExpression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->itemKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->subTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->getDisabled()Z

    move-result v4

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->expression:Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    invoke-direct {p0, v0}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->toGtsExpressionValue(Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;)Lcom/samsung/android/gtscell/data/GtsExpressionValue;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->subExpressions:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    invoke-direct {p0, v7}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->toGtsExpressionValue(Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;)Lcom/samsung/android/gtscell/data/GtsExpressionValue;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/samsung/android/gtscell/data/GtsExpression;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/gtscell/data/GtsExpression;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/gtscell/data/GtsExpressionValue;Ljava/util/List;)V

    return-object p0
.end method

.method public final getVersion()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->version:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->itemKey:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->title:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->subTitle:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->expression:Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->subExpressions:Ljava/util/List;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->storeContents:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->extra:Ljava/util/Map;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->version:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toBuilder()Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;
    .locals 1

    new-instance v0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;

    invoke-direct {v0, p0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;-><init>(Lcom/samsung/android/gtscell/data/GtsExpressionRaw;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GtsExpressionRaw(itemKey="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->itemKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->subTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expression="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->expression:Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subExpressions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->subExpressions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", storeContents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->storeContents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->extra:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->version:I

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string/jumbo v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->itemKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->subTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->expression:Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->subExpressions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    invoke-interface {v2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->storeContents:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/gtscell/data/GtsStoreContents;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->extra:Ljava/util/Map;

    if-eqz p2, :cond_3

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_4
    iget p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->version:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
