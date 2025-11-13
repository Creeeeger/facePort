.class public final Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEBUG:Z

.field public static Verify_Code:Ljava/lang/String;

.field public static code_endIndex:I

.field public static code_startIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->Verify_Code:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->code_startIndex:I

    sput v0, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->code_endIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVerifyCode()Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "code is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->Verify_Code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ORC/VerificationCodeUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->Verify_Code:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->Verify_Code:Ljava/lang/String;

    const-string v2, "[^\\d]"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    sget-object v0, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->Verify_Code:Ljava/lang/String;

    return-object v0
.end method

.method public static isVerificationCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "ORC/VerificationCodeUtils"

    const-string p1, "isVerificationCode() is false"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->Verify_Code:Ljava/lang/String;

    sget-boolean v0, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isVn:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/systemui/edgelighting/effect/utils/vc/VnVerificationCodeParser;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/effect/utils/vc/VnVerificationCodeParser;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isPHI:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/systemui/edgelighting/effect/utils/vc/PhiVerificationCodeParser;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/effect/utils/vc/PhiVerificationCodeParser;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isMAL:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/systemui/edgelighting/effect/utils/vc/MalVerificationCodeParser;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/effect/utils/vc/MalVerificationCodeParser;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isTHL:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/systemui/edgelighting/effect/utils/vc/ThlVerificationCodeParser;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/effect/utils/vc/ThlVerificationCodeParser;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isIND:Z

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/systemui/edgelighting/effect/utils/vc/IndVerificationCodeParser;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/effect/utils/vc/IndVerificationCodeParser;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    sget-boolean v0, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isMYM:Z

    if-eqz v0, :cond_6

    new-instance v0, Lcom/android/systemui/edgelighting/effect/utils/vc/MymVerificationCodeParser;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/effect/utils/vc/MymVerificationCodeParser;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_6
    sget-boolean v0, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isSIN:Z

    if-eqz v0, :cond_7

    new-instance v0, Lcom/android/systemui/edgelighting/effect/utils/vc/SinVerificationCodeParser;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/effect/utils/vc/SinVerificationCodeParser;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_7
    sget-boolean v0, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isKor:Z

    if-eqz v0, :cond_8

    new-instance v0, Lcom/android/systemui/edgelighting/effect/utils/vc/KorVerificationCodeParser;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/effect/utils/vc/KorVerificationCodeParser;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_8
    sget-boolean v0, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isChn:Z

    if-eqz v0, :cond_9

    new-instance v0, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_9
    new-instance v0, Lcom/android/systemui/edgelighting/effect/utils/vc/NormalVerificationCodeParser;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/effect/utils/vc/NormalVerificationCodeParser;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-interface {v0, p1}, Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParser;->getVerificationCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->Verify_Code:Ljava/lang/String;

    if-nez p0, :cond_a

    return v1

    :cond_a
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->code_startIndex:I

    sget-object p1, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->Verify_Code:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, p0

    sput p1, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->code_endIndex:I

    const/4 p0, 0x1

    return p0
.end method
