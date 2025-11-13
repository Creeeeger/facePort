.class public final Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaVibrations;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Activated:Landroid/os/VibrationEffect;

.field public static final Deactivated:Landroid/os/VibrationEffect;

.field public static final INSTANCE:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaVibrations;

.field public static final Shake:Landroid/os/VibrationEffect;

.field public static final ShakeAnimationDuration:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaVibrations;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaVibrations;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaVibrations;->INSTANCE:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaVibrations;

    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/16 v0, 0x12c

    sget-object v1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaVibrations;->ShakeAnimationDuration:J

    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v2

    invoke-static {v0, v1}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    const/4 v4, 0x7

    const/16 v5, 0xa

    if-ge v3, v5, :cond_0

    const v5, 0x3e99999a    # 0.3f

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaVibrations;->Shake:Landroid/os/VibrationEffect;

    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v4, v2, v1}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    const/4 v3, 0x4

    const v5, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v3, v5, v1}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaVibrations;->Activated:Landroid/os/VibrationEffect;

    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    invoke-virtual {v0, v4, v2, v1}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v5, v1}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaVibrations;->Deactivated:Landroid/os/VibrationEffect;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
