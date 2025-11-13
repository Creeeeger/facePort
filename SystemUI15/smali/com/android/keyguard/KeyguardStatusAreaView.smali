.class public final Lcom/android/keyguard/KeyguardStatusAreaView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final TRANSLATE_X_AOD:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

.field public static final TRANSLATE_X_CLOCK_DESIGN:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

.field public static final TRANSLATE_Y_CLOCK_DESIGN:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

.field public static final TRANSLATE_Y_CLOCK_SIZE:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;


# instance fields
.field public translateXFromAod:F

.field public translateXFromClockDesign:F

.field public translateXFromUnfold:F

.field public translateYFromClockDesign:F

.field public translateYFromClockSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/keyguard/KeyguardStatusAreaView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardStatusAreaView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_X_CLOCK_DESIGN$1;

    invoke-direct {v0}, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_X_CLOCK_DESIGN$1;-><init>()V

    sget-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    new-instance v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    const v2, 0x7f0a0d8a

    const v3, 0x7f0a0d8c

    const v4, 0x7f0a0d8b

    invoke-direct {v1, v4, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    sput-object v1, Lcom/android/keyguard/KeyguardStatusAreaView;->TRANSLATE_X_CLOCK_DESIGN:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    new-instance v0, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_X_AOD$1;

    invoke-direct {v0}, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_X_AOD$1;-><init>()V

    new-instance v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    const v2, 0x7f0a0d87

    const v3, 0x7f0a0d89

    const v4, 0x7f0a0d88

    invoke-direct {v1, v4, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    sput-object v1, Lcom/android/keyguard/KeyguardStatusAreaView;->TRANSLATE_X_AOD:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    new-instance v0, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_Y_CLOCK_SIZE$1;

    invoke-direct {v0}, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_Y_CLOCK_SIZE$1;-><init>()V

    new-instance v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    const v2, 0x7f0a0d90

    const v3, 0x7f0a0d92

    const v4, 0x7f0a0d91

    invoke-direct {v1, v4, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    sput-object v1, Lcom/android/keyguard/KeyguardStatusAreaView;->TRANSLATE_Y_CLOCK_SIZE:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    new-instance v0, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_Y_CLOCK_DESIGN$1;

    invoke-direct {v0}, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_Y_CLOCK_DESIGN$1;-><init>()V

    new-instance v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    const v2, 0x7f0a0d8d

    const v3, 0x7f0a0d8f

    const v4, 0x7f0a0d8e

    invoke-direct {v1, v4, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    sput-object v1, Lcom/android/keyguard/KeyguardStatusAreaView;->TRANSLATE_Y_CLOCK_DESIGN:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardStatusAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method
