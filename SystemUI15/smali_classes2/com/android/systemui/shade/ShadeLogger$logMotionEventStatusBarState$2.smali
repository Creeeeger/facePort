.class final Lcom/android/systemui/shade/ShadeLogger$logMotionEventStatusBarState$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logMotionEventStatusBarState$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/shade/ShadeLogger$logMotionEventStatusBarState$2;

    invoke-direct {v0}, Lcom/android/systemui/shade/ShadeLogger$logMotionEventStatusBarState$2;-><init>()V

    sput-object v0, Lcom/android/systemui/shade/ShadeLogger$logMotionEventStatusBarState$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logMotionEventStatusBarState$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Lcom/android/systemui/log/core/LogMessage;

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getStr1()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getLong1()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getLong2()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getDouble1()D

    move-result-wide v4

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getInt1()I

    move-result v6

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getInt2()I

    move-result v7

    if-eqz v7, :cond_2

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getInt2()I

    move-result p1

    const-string v7, "UNKNOWN:"

    invoke-static {p1, v7}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "SHADE_LOCKED"

    goto :goto_0

    :cond_1
    const-string p1, "KEYGUARD"

    goto :goto_0

    :cond_2
    const-string p1, "SHADE"

    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\neventTime="

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ",downTime="

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ",y="

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ",action="

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",statusBarState="

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
