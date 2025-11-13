.class public final Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernShadeCarrierGroupMobileView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernShadeCarrierGroupMobileView$Companion;


# instance fields
.field public final subId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernShadeCarrierGroupMobileView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernShadeCarrierGroupMobileView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernShadeCarrierGroupMobileView;->subId:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernShadeCarrierGroupMobileView;->subId:I

    invoke-super {p0}, Landroid/widget/LinearLayout;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ModernShadeCarrierGroupMobileView(subId="

    const-string v2, ", viewString="

    invoke-static {v0, v1, v2, p0}, Lcom/android/keyguard/logging/BiometricMessageDeferralLogger$logUpdateMessage$2$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
