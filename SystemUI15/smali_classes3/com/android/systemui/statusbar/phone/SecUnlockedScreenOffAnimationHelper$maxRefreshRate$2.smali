.class final Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$maxRefreshRate$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$maxRefreshRate$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$maxRefreshRate$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$maxRefreshRate$2;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$maxRefreshRate$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$maxRefreshRate$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    sget-object p0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v0, "user"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/16 v0, 0x3c

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "debug.aod.screen_off_animation_refresh_rate"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
