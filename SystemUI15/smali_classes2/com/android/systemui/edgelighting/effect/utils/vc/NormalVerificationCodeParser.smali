.class public final Lcom/android/systemui/edgelighting/effect/utils/vc/NormalVerificationCodeParser;
.super Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParserBase;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParserBase;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/utils/vc/NormalVerificationCodeParser;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getVerificationCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "Normal/VerificationCodeParser"

    const-string v1, "getVerificationCode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/utils/vc/NormalVerificationCodeParser;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v1, v0}, Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParserBase;->getVerificationCode(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
