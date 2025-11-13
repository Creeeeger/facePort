.class public final enum Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

.field public static final enum DEFAULT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

.field public static final enum DEFERRED_SETUP:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

.field public static final enum IMPORTANT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

.field public static final enum POSSIBLE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

.field public static final enum STICKY:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

.field public static final enum SUGGESTION:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->DEFAULT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    new-instance v1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    const-string v2, "SUGGESTION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->SUGGESTION:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    new-instance v2, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    const-string v3, "POSSIBLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->POSSIBLE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    new-instance v3, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    const-string v4, "IMPORTANT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->IMPORTANT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    new-instance v4, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    const-string v5, "DEFERRED_SETUP"

    const/4 v6, 0x4

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->DEFERRED_SETUP:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    new-instance v5, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    const-string v6, "STICKY"

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->STICKY:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    filled-new-array/range {v0 .. v5}, [Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    move-result-object v0

    sput-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->$VALUES:[Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;
    .locals 1

    const-class v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;
    .locals 1

    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->$VALUES:[Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    invoke-virtual {v0}, [Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->value:I

    return p0
.end method
