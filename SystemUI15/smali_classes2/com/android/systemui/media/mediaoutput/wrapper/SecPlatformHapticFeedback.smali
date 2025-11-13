.class public final Lcom/android/systemui/media/mediaoutput/wrapper/SecPlatformHapticFeedback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/hapticfeedback/HapticFeedback;


# instance fields
.field public final hapticFeedback:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

.field public final view$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/wrapper/SecPlatformHapticFeedback$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/wrapper/SecPlatformHapticFeedback$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/hapticfeedback/HapticFeedback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/wrapper/SecPlatformHapticFeedback;->hapticFeedback:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    new-instance p1, Lcom/android/systemui/media/mediaoutput/wrapper/SecPlatformHapticFeedback$view$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/mediaoutput/wrapper/SecPlatformHapticFeedback$view$2;-><init>(Lcom/android/systemui/media/mediaoutput/wrapper/SecPlatformHapticFeedback;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/wrapper/SecPlatformHapticFeedback;->view$delegate:Lkotlin/Lazy;

    const-string p0, "SecPlatformHapticFeedback"

    const-string p1, "init()"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final performHapticFeedback(Lcom/android/systemui/media/mediaoutput/wrapper/SecHapticFeedbackType;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/media/mediaoutput/wrapper/SecPlatformHapticFeedback$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 p1, 0x29

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    const/16 p1, 0x1b

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/wrapper/SecPlatformHapticFeedback;->view$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_2
    return-void
.end method

.method public final performHapticFeedback-CdsT49E(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/wrapper/SecPlatformHapticFeedback;->hapticFeedback:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    invoke-interface {p0, p1}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->performHapticFeedback-CdsT49E(I)V

    return-void
.end method
