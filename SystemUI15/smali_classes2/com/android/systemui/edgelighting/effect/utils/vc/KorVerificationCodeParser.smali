.class public final Lcom/android/systemui/edgelighting/effect/utils/vc/KorVerificationCodeParser;
.super Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParserBase;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParserBase;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/utils/vc/KorVerificationCodeParser;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getVerificationCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "ORC/KorVerificationCodeParser"

    const-string v1, "getVerificationCode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/utils/vc/KorVerificationCodeParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/utils/vc/KorVerificationCodeParser;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0300bb

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParserBase;->getVerificationCodeWithoutDefault(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
