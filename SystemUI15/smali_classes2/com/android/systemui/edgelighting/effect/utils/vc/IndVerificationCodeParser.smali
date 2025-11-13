.class public final Lcom/android/systemui/edgelighting/effect/utils/vc/IndVerificationCodeParser;
.super Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParserBase;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParserBase;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/utils/vc/IndVerificationCodeParser;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getVerificationCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "ORC/IndVerificationCodeParser"

    const-string v1, "getVerificationCode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/utils/vc/IndVerificationCodeParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/utils/vc/IndVerificationCodeParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0300ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/utils/vc/IndVerificationCodeParser;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParserBase;->getVerificationCode(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
