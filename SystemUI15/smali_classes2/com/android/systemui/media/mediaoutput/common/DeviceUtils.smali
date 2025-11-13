.class public final Lcom/android/systemui/media/mediaoutput/common/DeviceUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/common/DeviceUtils;

.field public static final isChinaSalesCode$delegate:Lkotlin/Lazy;

.field public static final isDebug$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/common/DeviceUtils;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/common/DeviceUtils;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/common/DeviceUtils;->INSTANCE:Lcom/android/systemui/media/mediaoutput/common/DeviceUtils;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/common/DeviceUtils$isDebug$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/common/DeviceUtils$isDebug$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/mediaoutput/common/DeviceUtils;->isDebug$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/common/DeviceUtils$isChinaSalesCode$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/common/DeviceUtils$isChinaSalesCode$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/mediaoutput/common/DeviceUtils;->isChinaSalesCode$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkVolumeLimiter(Landroid/content/ContentResolver;ZILkotlin/jvm/functions/Function0;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "volumelimit_on"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "volume_limiter_value"

    const/16 v0, 0x96

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    mul-int/lit8 p1, p0, 0xa

    if-ge p1, p2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "volumeLimitValue = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeviceUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
