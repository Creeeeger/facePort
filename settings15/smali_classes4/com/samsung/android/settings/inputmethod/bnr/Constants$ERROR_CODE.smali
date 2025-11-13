.class public final enum Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;

.field public static final enum INVALID_DATA:Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;

.field public static final enum PARTIAL_SUCCESS:Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;

.field public static final enum STORAGE_FULL:Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;

.field public static final enum SUCCESS:Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;

.field public static final enum UNKNOWN_ERROR:Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;->SUCCESS:Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;

    new-instance v1, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;

    const-string v2, "UNKNOWN_ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;->UNKNOWN_ERROR:Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;

    new-instance v2, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;

    const-string v3, "STORAGE_FULL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;->STORAGE_FULL:Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;

    new-instance v3, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;

    const-string v4, "INVALID_DATA"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;->INVALID_DATA:Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;

    new-instance v4, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;

    const/4 v5, 0x4

    const/4 v6, 0x7

    const-string v7, "PARTIAL_SUCCESS"

    invoke-direct {v4, v7, v5, v6}, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;->PARTIAL_SUCCESS:Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;->$VALUES:[Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;->$VALUES:[Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;

    return-object v0
.end method


# virtual methods
.method public final equals()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;->STORAGE_FULL:Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;

    iget p0, p0, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;->code:I

    iget v0, v0, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;->code:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getCode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;->code:I

    return p0
.end method

.method public final isSuccess()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;->SUCCESS:Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;

    iget v0, v0, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;->code:I

    iget p0, p0, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;->code:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
